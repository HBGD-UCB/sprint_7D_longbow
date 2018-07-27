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

* hfoodsec
* agecat
* studyid
* country

## Data Summary

hfoodsec                   agecat      studyid                     country      tr          stunted   n_cell      n
-------------------------  ----------  --------------------------  -----------  ---------  --------  -------  -----
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           0      117    843
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           1       71    843
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0      135    843
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1       71    843
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             0      265    843
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             1      184    843
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       25    202
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           1       26    202
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       28    202
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1       28    202
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       53    202
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       42    202
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       12    110
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           1       14    110
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       20    110
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1       11    110
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       33    110
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       20    110
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       94    495
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           1       25    495
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0      121    495
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1       15    495
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             0      212    495
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             1       28    495
Mildly Food Insecure       6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       12     46
Mildly Food Insecure       6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           1        0     46
Mildly Food Insecure       6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       11     46
Mildly Food Insecure       6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1        1     46
Mildly Food Insecure       6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       22     46
Mildly Food Insecure       6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             1        0     46
Severely Food Insecure     24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           0        2     32
Severely Food Insecure     24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control           1        4     32
Severely Food Insecure     24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0        8     32
Severely Food Insecure     24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1        6     32
Severely Food Insecure     24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             0        6     32
Severely Food Insecure     24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other             1        6     32
Moderately Food Insecure   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           0       21    115
Moderately Food Insecure   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           1        3    115
Moderately Food Insecure   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0       25    115
Moderately Food Insecure   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1        8    115
Moderately Food Insecure   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             0       49    115
Moderately Food Insecure   6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             1        9    115
Severely Food Insecure     6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           0        5     26
Severely Food Insecure     6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control           1        1     26
Severely Food Insecure     6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               0        2     26
Severely Food Insecure     6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS               1        5     26
Severely Food Insecure     6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             0        8     26
Severely Food Insecure     6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other             1        5     26
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       Control           0       94    844
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       Control           1       50    844
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS               0      499    844
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS               1      201    844
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       Control           0       54    400
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       Control           1       19    400
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS               0      234    400
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS               1       93    400
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       Control           0       29    370
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       Control           1       32    370
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS               0      144    370
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS               1      165    370
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       Control           0       12    149
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       Control           1        7    149
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS               0       87    149
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS               1       43    149
Mildly Food Insecure       24 months   ki1148112-iLiNS-DOSE        MALAWI       Control           0        2     69
Mildly Food Insecure       24 months   ki1148112-iLiNS-DOSE        MALAWI       Control           1        6     69
Mildly Food Insecure       24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS               0       29     69
Mildly Food Insecure       24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS               1       32     69
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       Control           0       18    159
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       Control           1       14    159
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS               0       76    159
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS               1       51    159
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       Control           0       41    390
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       Control           1       21    390
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS               0      225    390
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS               1      103    390
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       Control           0       14    171
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       Control           1       13    171
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS               0       69    171
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS               1       75    171
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           0       53    180
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           1       20    180
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0       81    180
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1       26    180
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           0       37    120
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           1       12    120
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0       50    120
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1       21    120
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           0       48    181
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           1        9    181
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0      100    181
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1       24    181
Severely Food Insecure     Birth       ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        1      1
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           0       33    154
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control           1       11    154
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0       83    154
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1       27    154
Moderately Food Insecure   24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control           0        1     14
Moderately Food Insecure   24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control           1        1     14
Moderately Food Insecure   24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0        9     14
Moderately Food Insecure   24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        3     14
Mildly Food Insecure       24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control           0        2     14
Mildly Food Insecure       24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control           1        1     14
Mildly Food Insecure       24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0        6     14
Mildly Food Insecure       24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        5     14
Food Secure                24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control           0        0     17
Food Secure                24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control           1        1     17
Food Secure                24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0       12     17
Food Secure                24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        4     17
Severely Food Insecure     24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control           0        2     19
Severely Food Insecure     24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control           1        4     19
Severely Food Insecure     24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          0        6     19
Severely Food Insecure     24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal          1        7     19
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           0     1415   4335
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           1      737   4335
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          0     1557   4335
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          1      626   4335
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           0     1982   5586
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           1      769   5586
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          0     2130   5586
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          1      705   5586
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           0      756   2273
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           1      376   2273
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          0      771   2273
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          1      370   2273
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           0      921   2763
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           1      440   2763
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          0      989   2763
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          1      413   2763
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           0     2084   5997
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Control           1      899   5997
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          0     2149   5997
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal          1      865   5997
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           0     3218   8404
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Control           1      966   8404
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          0     3300   8404
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal          1      920   8404
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           0       12     39
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           1        9     39
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          0       10     39
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          1        8     39
Mildly Food Insecure       24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           0        3     17
Mildly Food Insecure       24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           1        3     17
Mildly Food Insecure       24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          0        3     17
Mildly Food Insecure       24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          1        8     17
Moderately Food Insecure   24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           0        1     23
Moderately Food Insecure   24 months   kiGH5241-JiVitA-3           BANGLADESH   Control           1        7     23
Moderately Food Insecure   24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          0        6     23
Moderately Food Insecure   24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal          1        9     23
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           0      319   1719
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           1      111   1719
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               0      364   1719
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               1      116   1719
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             0      586   1719
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             1      223   1719
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           0       53    309
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           1       22    309
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               0       62    309
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               1       27    309
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             0       99    309
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             1       46    309
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           0      490   2421
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           1      143   2421
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               0      512   2421
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               1      173   2421
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             0      807   2421
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             1      296   2421
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           0       24    114
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           1        7    114
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               0       17    114
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               1        9    114
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             0       41    114
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             1       16    114
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           0      132    622
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Control           1       41    622
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               0      119    622
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS               1       30    622
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             0      226    622
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Other             1       74    622
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           0       23    144
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           1       19    144
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               0       21    144
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               1       12    144
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             0       43    144
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             1       26    144
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           0       59    409
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           1       47    409
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               0       70    409
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               1       50    409
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             0      118    409
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             1       65    409
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           0       76    396
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Control           1       40    396
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               0       74    396
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS               1       38    396
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             0      126    396
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Other             1       42    396
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           0       82    537
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Control           1       56    537
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               0       92    537
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS               1       57    537
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             0      137    537
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Other             1      113    537
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       Control           0       37     89
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       Control           1       12     89
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       LNS               0       31     89
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       LNS               1        9     89
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       Control           0       48    122
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       Control           1        9    122
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       LNS               0       52    122
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       LNS               1       13    122
Severely Food Insecure     Birth       iLiNS_DYADM_LNS             MALAWI       LNS               1        1      1
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       Control           0       53    120
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       Control           1       20    120
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       LNS               0       31    120
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       LNS               1       16    120
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       Control           0       33     90
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       Control           1       11     90
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       LNS               0       34     90
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       LNS               1       12     90
Moderately Food Insecure   24 months   iLiNS_DYADM_LNS             MALAWI       Control           0        1      7
Moderately Food Insecure   24 months   iLiNS_DYADM_LNS             MALAWI       Control           1        1      7
Moderately Food Insecure   24 months   iLiNS_DYADM_LNS             MALAWI       LNS               0        4      7
Moderately Food Insecure   24 months   iLiNS_DYADM_LNS             MALAWI       LNS               1        1      7
Mildly Food Insecure       24 months   iLiNS_DYADM_LNS             MALAWI       Control           0        2     10
Mildly Food Insecure       24 months   iLiNS_DYADM_LNS             MALAWI       Control           1        1     10
Mildly Food Insecure       24 months   iLiNS_DYADM_LNS             MALAWI       LNS               0        4     10
Mildly Food Insecure       24 months   iLiNS_DYADM_LNS             MALAWI       LNS               1        3     10
Food Secure                24 months   iLiNS_DYADM_LNS             MALAWI       Control           0        0      8
Food Secure                24 months   iLiNS_DYADM_LNS             MALAWI       Control           1        1      8
Food Secure                24 months   iLiNS_DYADM_LNS             MALAWI       LNS               0        5      8
Food Secure                24 months   iLiNS_DYADM_LNS             MALAWI       LNS               1        2      8
Severely Food Insecure     24 months   iLiNS_DYADM_LNS             MALAWI       Control           0        2      9
Severely Food Insecure     24 months   iLiNS_DYADM_LNS             MALAWI       Control           1        4      9
Severely Food Insecure     24 months   iLiNS_DYADM_LNS             MALAWI       LNS               0        2      9
Severely Food Insecure     24 months   iLiNS_DYADM_LNS             MALAWI       LNS               1        1      9


The following strata were considered:

* hfoodsec: Food Secure, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Food Secure, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Food Secure, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Food Secure, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Food Secure, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Food Secure, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Food Secure, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Food Secure, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Food Secure, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* hfoodsec: Mildly Food Insecure, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Food Secure, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Food Secure, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/eabd595c-9f51-4443-8994-c847c6bffb81/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eabd595c-9f51-4443-8994-c847c6bffb81/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eabd595c-9f51-4443-8994-c847c6bffb81/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eabd595c-9f51-4443-8994-c847c6bffb81/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


hfoodsec                   agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3013745   0.2911843   0.3115646
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2869940   0.2784365   0.2955516
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3448276   0.2508535   0.4388017
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3392857   0.2500926   0.4284788
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2500000   0.1747163   0.3252837
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                0.1578947   0.1134848   0.2023047
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.2000000   0.1479774   0.2520226
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.2100840   0.1368183   0.2833497
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1102941   0.0575933   0.1629949
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1166667   0.0760114   0.1573220
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.2602740   0.2418813   0.2786666
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.2844037   0.2443809   0.3244264
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.1578947   0.1280012   0.1877883
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.1935484   0.1457771   0.2413197
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2308795   0.2238576   0.2379015
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2180095   0.2102914   0.2257275
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2259084   0.1840449   0.2677719
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2525547   0.2178919   0.2872176
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2683590   0.2368672   0.2998509
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.3776596   0.3083184   0.4470007
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.3446602   0.2797219   0.4095985
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4097996   0.3642831   0.4553160
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.4375000   0.4027987   0.4722013
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.4015748   0.3332606   0.4698890
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.4285714   0.3067852   0.5503577
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.4444444   0.3448707   0.5440182
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.4057971   0.3060263   0.5055679
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3825503   0.2959349   0.4691658
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.4520000   0.3845066   0.5194934
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3424721   0.3307293   0.3542149
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2867613   0.2740737   0.2994490
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2933333   0.1823600   0.4043067
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3033708   0.2074951   0.3992464
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3172414   0.2364901   0.3979927
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                0.2448980   0.1782318   0.3115641
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.2250000   0.1665097   0.2834903
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.3684211   0.3406695   0.3961726
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.3307692   0.2599671   0.4015714
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2448980   0.1955263   0.2942696
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2957746   0.2327008   0.3588485
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2795347   0.2692865   0.2897829
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2486772   0.2384610   0.2588935
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2581395   0.2068809   0.3093982
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2416667   0.1984694   0.2848640
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2756489   0.2388338   0.3124641
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.5384615   0.3459637   0.7309594
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.3548387   0.1856389   0.5240386
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.3773585   0.2462625   0.5084545
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.4433962   0.3467616   0.5400309
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.4166667   0.3236985   0.5096349
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3551913   0.2773166   0.4330659
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3321555   0.3146350   0.3496759
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.3242770   0.3078570   0.3406969
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2258065   0.0762329   0.3753800
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3461538   0.1596749   0.5326328
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2807018   0.1590437   0.4023598
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                0.2500000   0.1870988   0.3129012
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.2608696   0.1956492   0.3260899
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.3387097   0.3199577   0.3574616
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.3140244   0.2717270   0.3563218
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2500000   0.2133251   0.2866749
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2454545   0.1878222   0.3030869
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3232917   0.3077719   0.3388115
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2945792   0.2795071   0.3096512
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2369942   0.1682971   0.3056913
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2013423   0.1277090   0.2749755
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2466667   0.1956764   0.2976569
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.5098039   0.3722645   0.6473433
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.5000000   0.3687190   0.6312810
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4421053   0.3419894   0.5422211
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.4814815   0.4516359   0.5113270
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.5208333   0.4519206   0.5897461
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.4523810   0.3020267   0.6027352
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3636364   0.1860752   0.5411975
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3768116   0.2621747   0.4914485
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                0.2739726   0.2114733   0.3364720
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.3404255   0.2871441   0.3937070
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.3472222   0.3339473   0.3604971
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.2871429   0.2593289   0.3149568
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2739726   0.2323646   0.3155806
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2429907   0.1945486   0.2914327
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.5245902   0.5039010   0.5452793
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.5339806   0.4874672   0.5804940


### Parameter: E(Y)


hfoodsec                   agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2941471   0.2808057   0.3074885
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3030303   0.2535848   0.3524758
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.1803279   0.1118253   0.2488304
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1373737   0.1070175   0.1677300
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.2800000   0.2359438   0.3240562
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.1823204   0.1259150   0.2387259
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2244169   0.2139664   0.2348675
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2527881   0.2322256   0.2733506
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.3867141   0.3538200   0.4196083
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.4088050   0.3321496   0.4854605
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.4358974   0.2785836   0.5932113
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.4208566   0.3735416   0.4681716
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.3144175   0.2970608   0.3317743
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3074434   0.2533436   0.3615431
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.2359551   0.1472434   0.3246667
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.3355705   0.2594969   0.4116440
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2750000   0.1947750   0.3552250
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2638740   0.2493868   0.2783612
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2617801   0.2370674   0.2864928
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.4090909   0.3167902   0.5013916
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3960880   0.3451854   0.4469907
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.3282006   0.3041845   0.3522167
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2807018   0.1956190   0.3657845
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.2555556   0.1649381   0.3461730
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.3179487   0.2716722   0.3642252
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2467532   0.1784404   0.3150661
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.3087224   0.2870592   0.3303856
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2331190   0.1972954   0.2689426
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.4752475   0.4062097   0.5442854
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.5146199   0.4394908   0.5897489
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3958333   0.3143515   0.4773151
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.3000000   0.2176650   0.3823350
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.2973934   0.2665362   0.3282505
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2555556   0.1916586   0.3194525
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.5324324   0.4815240   0.5833408


### Parameter: RR


hfoodsec                   agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9522839   0.9103155   0.9961871
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9839286   0.6738808   1.4366270
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.7250000   0.4829616   1.0883370
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.2666667   0.8635411   1.8579827
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.5250000   0.2905701   0.9485662
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.5553333   0.3391900   0.9092106
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.0927088   0.9335022   1.2790677
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.2258065   0.8981039   1.6730819
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9442564   0.9011981   0.9893720
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.1179521   0.8877568   1.4078371
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1879109   0.9539485   1.4792542
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.9126214   0.7015142   1.1872572
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0851030   0.8755406   1.3448246
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.9178853   0.7608028   1.1074004
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.0370370   0.7221686   1.4891894
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9427133   0.6749379   1.3167262
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1138571   0.8355004   1.4849517
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8373275   0.7916800   0.8856071
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0342186   0.6317806   1.6930056
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0815047   0.6854811   1.7063233
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  Control           0.9187500   0.6305600   1.3386539
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.8978022   0.7155346   1.1264987
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.2077465   0.9005919   1.6196587
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8896113   0.8419579   0.9399619
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9361862   0.7166936   1.2229000
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0678293   0.8405494   1.3565643
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.6589862   0.3631210   1.1959174
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.7008086   0.4257039   1.1536957
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9397163   0.6878262   1.2838515
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.8010696   0.5880325   1.0912877
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9762806   0.9074424   1.0503409
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.5329670   0.6527284   3.6002540
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.2431078   0.5632910   2.7433724
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.0434783   0.7318803   1.4877389
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.9271196   0.8014751   1.0724610
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.9818182   0.7443763   1.2949995
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9111869   0.8494106   0.9774562
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.8495662   0.5327456   1.3547981
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0408130   0.7290077   1.4859811
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.9807692   0.6730864   1.4291008
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.8672065   0.6097481   1.2333733
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.0817308   0.9346805   1.2519160
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.8038278   0.4452692   1.4511201
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.8329519   0.5308110   1.3070734
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.2425532   0.9422504   1.6385650
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.8269714   0.7451860   0.9177330
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.8869159   0.6903063   1.1395228
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.0179005   0.9250782   1.1200366


### Parameter: PAR


hfoodsec                   agecat      studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  ----------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0072274   -0.0158264    0.0013717
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0417973   -0.1196782    0.0360836
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0224331   -0.0297240    0.0745902
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0727103   -0.1336074   -0.0118132
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0197260   -0.0203072    0.0597592
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0244257   -0.0234068    0.0722583
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0064626   -0.0142026    0.0012774
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0268797   -0.0086589    0.0624184
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0090545   -0.0521471    0.0702562
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0286950   -0.0970461    0.0396561
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0073260   -0.0922519    0.1069039
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0150595   -0.0689474    0.0990664
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0280546   -0.0410276   -0.0150816
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0141100   -0.0821495    0.1103695
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0089429   -0.0674698    0.0495839
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0328506   -0.1036816    0.0379804
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0301020   -0.0331317    0.0933357
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0156607   -0.0259427   -0.0053787
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0036406   -0.0402183    0.0474994
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.1293706   -0.2968750    0.0381338
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0473082   -0.1317301    0.0371137
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0039549   -0.0203826    0.0124728
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0548953   -0.0771513    0.1869419
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0055556   -0.0596745    0.0707857
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0207610   -0.0630679    0.0215460
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0032468   -0.0608801    0.0543866
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0145693   -0.0297395    0.0006010
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0038752   -0.0620076    0.0542571
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0345564   -0.1534308    0.0843180
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0331384   -0.0358081    0.1020849
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0565476   -0.1833409    0.0702457
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0260274   -0.0275718    0.0796266
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0498289   -0.0776846   -0.0219731
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0184170   -0.0669103    0.0300762
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0078423   -0.0386725    0.0543570


### Parameter: PAF


hfoodsec                   agecat      studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  ----------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Food Secure                Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0245706   -0.0549783    0.0049606
Food Secure                Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.1379310   -0.4263353    0.0921581
Food Secure                6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.1244019   -0.1717466    0.3457015
Food Secure                6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.5292882   -1.0328736   -0.1504515
Food Secure                6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0704501   -0.0725164    0.1943591
Food Secure                6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.1339713   -0.1272041    0.3346318
Food Secure                6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0287973   -0.0649106    0.0060913
Food Secure                6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.1063331   -0.0466874    0.2369827
Food Secure                24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0234140   -0.1483952    0.1695192
Food Secure                24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0701923   -0.2650712    0.0946663
Food Secure                24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0168067   -0.2355841    0.2176421
Food Secure                24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0357830   -0.1864496    0.2163894
Mildly Food Insecure       Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0892272   -0.1351816   -0.0451331
Mildly Food Insecure       Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0458947   -0.3249632    0.3129493
Mildly Food Insecure       6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0379009   -0.3303700    0.1902717
Mildly Food Insecure       6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0978947   -0.3560821    0.1111358
Mildly Food Insecure       6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.1094620   -0.1219494    0.2931428
Mildly Food Insecure       6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0593493   -0.1014993   -0.0188123
Mildly Food Insecure       6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0139070   -0.1687812    0.1680398
Mildly Food Insecure       24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.3162393   -0.8034817    0.0393659
Mildly Food Insecure       24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.1194386   -0.3557060    0.0756529
Moderately Food Insecure   Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0120501   -0.0640005    0.0373637
Moderately Food Insecure   Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.1955645   -0.4394278    0.5504349
Moderately Food Insecure   6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0217391   -0.2627955    0.2421621
Moderately Food Insecure   6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0652966   -0.2169704    0.0674738
Moderately Food Insecure   6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0131579   -0.2797268    0.1978843
Moderately Food Insecure   6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0471922   -0.0999836    0.0030656
Moderately Food Insecure   6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0166235   -0.2992089    0.2044980
Moderately Food Insecure   24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0727124   -0.3546770    0.1505636
Moderately Food Insecure   24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0643939   -0.0698027    0.1817569
Moderately Food Insecure   24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.1428571   -0.5145609    0.1376230
Severely Food Insecure     6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0867580   -0.0930835    0.2370107
Severely Food Insecure     6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.1675520   -0.2824783   -0.0629246
Severely Food Insecure     6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0720667   -0.2964892    0.1135082
Severely Food Insecure     24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0147291   -0.0752207    0.0971541
