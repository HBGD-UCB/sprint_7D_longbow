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

* hfoodsec
* agecat
* studyid
* country

## Data Summary

hfoodsec                   agecat        studyid                     country      tr          ever_stunted   n_cell      n
-------------------------  ------------  --------------------------  -----------  ---------  -------------  -------  -----
Food Secure                0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                0       29    172
Food Secure                0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                1        5    172
Food Secure                0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       47    172
Food Secure                0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        3    172
Food Secure                0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0       82    172
Food Secure                0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1        6    172
Mildly Food Insecure       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                0        2     12
Mildly Food Insecure       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0        4     12
Mildly Food Insecure       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0        6     12
Moderately Food Insecure   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                0        5     40
Moderately Food Insecure   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                1        1     40
Moderately Food Insecure   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       10     40
Moderately Food Insecure   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        1     40
Moderately Food Insecure   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0       21     40
Moderately Food Insecure   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1        2     40
Severely Food Insecure     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                0        1      8
Severely Food Insecure     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                1        0      8
Severely Food Insecure     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0        1      8
Severely Food Insecure     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        3      8
Severely Food Insecure     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0        1      8
Severely Food Insecure     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1        2      8
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control                0       37    252
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control                1        8    252
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                    0      153    252
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                    1       54    252
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control                0        6     86
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control                1        6     86
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                    0       46     86
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                    1       28     86
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control                0       54    542
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control                1       32    542
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                    0      337    542
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                    1      119    542
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control                0       22    235
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control                1       10    235
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                    0      134    235
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                    1       69    235
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        2      6
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        1      6
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0        2      6
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        1      6
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0        3      4
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        1      4
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        0     10
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        2     10
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0        7     10
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        1     10
Food Secure                0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                0        7     23
Food Secure                0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        0     23
Food Secure                0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       10     23
Food Secure                0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1        6     23
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                0      787   2291
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                1      348   2291
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               0      832   2291
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               1      324   2291
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                0     2648   6859
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                1      798   6859
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               0     2705   6859
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               1      708   6859
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                0     1604   4613
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                1      648   4613
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               0     1784   4613
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               1      577   4613
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                0      298   1637
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                1      100   1637
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      354   1637
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    1      109   1637
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  0      558   1637
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  1      218   1637
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                0      470   2314
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                1      142   2314
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      469   2314
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    1      175   2314
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  0      786   2314
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  1      272   2314
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                0      131    586
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                1       30    586
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      104    586
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    1       29    586
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  0      224    586
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  1       68    586
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      527   2657
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1      113   2657
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      600   2657
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       94   2657
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0     1076   2657
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1      247   2657
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      124    646
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       45    646
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      122    646
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       33    646
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      240    646
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       82    646
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0       62    314
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       12    314
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       80    314
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       10    314
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      121    314
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       29    314
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0       16    109
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       11    109
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       21    109
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        5    109
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0       42    109
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       14    109
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                0       77    531
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                1       15    531
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    0      334    531
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    1      105    531
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                0       10     96
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                1        4     96
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    0       66     96
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    1       16     96
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                0       45    272
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                1        8    272
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    0      180    272
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    1       39    272
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                0       28    252
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                1       10    252
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    0      167    252
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    1       47    252
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       49    162
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1       19    162
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       66    162
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       28    162
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       33    100
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        6    100
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       43    100
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       18    100
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       46    173
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1       12    173
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       92    173
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       23    173
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       27    150
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1        9    150
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       74    150
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       40    150
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0     1669   4341
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1      421   4341
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0     1775   4341
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1      476   4341
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0      757   2028
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1      220   2028
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0      806   2028
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1      245   2028
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0     2817   6901
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1      595   6901
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0     2824   6901
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1      665   6901
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      259   1524
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1      126   1524
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      328   1524
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1      117   1524
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0      490   1524
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1      204   1524
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      415   2192
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1      190   2192
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      429   2192
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1      173   2192
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0      700   2192
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1      285   2192
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      109    562
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1       45    562
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0       99    562
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1       40    562
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0      187    562
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1       82    562
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      516   3335
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1      285   3335
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      589   3335
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1      261   3335
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0     1056   3335
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1      628   3335
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      118    899
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1      120    899
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      121    899
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       83    899
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      236    899
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1      221    899
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0       61    420
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       44    420
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       79    420
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       31    420
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      121    420
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       84    420
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0       16    163
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       16    163
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0       19    163
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       28    163
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0       40    163
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       44    163
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                0       73    844
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                1       71    844
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    0      332    844
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    1      368    844
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                0       41    400
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                1       32    400
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    0      183    400
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    1      144    400
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                0        8    149
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                1       11    149
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    0       67    149
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    1       63    149
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                0       26    391
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control                1       36    391
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    0      160    391
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                    1      169    391
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       45    200
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1       36    200
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       62    200
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       57    200
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       32    130
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1       17    130
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       41    130
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       40    130
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       44    204
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1       24    204
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       87    204
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       49    204
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                0       25    179
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control                1       21    179
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               0       66    179
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal               1       67    179
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0     1493   5766
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1     1335   5766
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0     1628   5766
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1     1310   5766
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0      680   2877
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1      741   2877
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0      740   2877
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1      716   2877
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0     2575   8669
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1     1745   8669
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0     2594   8669
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1     1755   8669
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      233   1946
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1      250   1946
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      292   1946
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1      257   1946
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0      453   1946
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1      461   1946
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      381   2749
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1      359   2749
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      386   2749
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1      380   2749
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0      628   2749
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1      615   2749
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      105    701
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1       89    701
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0       89    701
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1       76    701
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0      170    701
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1      172    701
Mildly Food Insecure       0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                0        2      3
Mildly Food Insecure       0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                1        1      3
Severely Food Insecure     0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                0        0      6
Severely Food Insecure     0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                1        2      6
Severely Food Insecure     0-6 months    iLiNS_DYADM_LNS             MALAWI       LNS                    0        4      6
Severely Food Insecure     0-6 months    iLiNS_DYADM_LNS             MALAWI       LNS                    1        0      6
Moderately Food Insecure   0-6 months    iLiNS_DYADM_LNS             MALAWI       LNS                    0        1      1
Food Secure                0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                0        7     14
Food Secure                0-6 months    iLiNS_DYADM_LNS             MALAWI       Control                1        0     14
Food Secure                0-6 months    iLiNS_DYADM_LNS             MALAWI       LNS                    0        4     14
Food Secure                0-6 months    iLiNS_DYADM_LNS             MALAWI       LNS                    1        3     14
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       33     73
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1        6     73
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       25     73
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1        9     73
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       46    120
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1       12    120
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       52    120
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       10    120
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       49    109
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1       19    109
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       28    109
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       13    109
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       27     84
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1        9     84
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       31     84
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       17     84
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       32     92
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1       17     92
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       25     92
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       18     92
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       44    141
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1       24    141
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       50    141
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       23    141
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       45    137
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1       36    137
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       24    137
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       32    137
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                0       25    105
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control                1       21    105
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    0       28    105
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                    1       31    105


The following strata were considered:

* hfoodsec: Food Secure, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Food Secure, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Food Secure, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Food Secure, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Food Secure, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Food Secure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Food Secure, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Food Secure, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Food Secure, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Food Secure, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Food Secure, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* hfoodsec: Food Secure, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Moderately Food Insecure, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Severely Food Insecure, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hfoodsec: Mildly Food Insecure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Food Secure, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hfoodsec: Mildly Food Insecure, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Severely Food Insecure, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Moderately Food Insecure, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hfoodsec: Food Secure, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/80e63c3b-9027-4a0e-93d6-94d698ba7e2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/80e63c3b-9027-4a0e-93d6-94d698ba7e2e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/80e63c3b-9027-4a0e-93d6-94d698ba7e2e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/80e63c3b-9027-4a0e-93d6-94d698ba7e2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


hfoodsec                   agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.3529412   0.2975738   0.4083086
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.3150685   0.2594804   0.3706566
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.3558052   0.3226455   0.3889650
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.3070588   0.2760445   0.3380732
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.3729216   0.3498216   0.3960216
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.4383562   0.4175574   0.4591549
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.4403670   0.3963252   0.4844087
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.3529412   0.3147993   0.3910830
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.3602941   0.3062178   0.4143704
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.4039352   0.3957122   0.4121581
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.4035410   0.3945626   0.4125195
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.4851351   0.4383634   0.5319068
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.4960836   0.4541569   0.5380102
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.4947707   0.4602019   0.5293396
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.1777778   0.1577906   0.1977649
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.2608696   0.2116352   0.3101039
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2315728   0.2231296   0.2400161
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2074421   0.2001088   0.2147754
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2320261   0.1906645   0.2733877
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2717391   0.2327801   0.3106982
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2570888   0.2261657   0.2880120
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.2068966   0.1558708   0.2579223
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.1612903   0.1134649   0.2091158
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1765625   0.1470161   0.2061089
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1354467   0.1099825   0.1609109
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1866969   0.1656957   0.2076981
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.1509434   0.1321289   0.1697579
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.1780822   0.1372102   0.2189542
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2068966   0.1716399   0.2421532
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2000000   0.1510312   0.2489688
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.1743845   0.1675938   0.1811752
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.1905990   0.1831355   0.1980625
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3140496   0.2675859   0.3605133
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2873754   0.2431740   0.3315768
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2893401   0.2528888   0.3257914
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.3469388   0.2755656   0.4183119
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.4186047   0.3493091   0.4879002
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4190476   0.3245604   0.5135348
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.2818182   0.1976455   0.3659908
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4097561   0.3423550   0.4771572
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.5789474   0.5505428   0.6073520
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.4846154   0.4094081   0.5598227
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.3469388   0.2965095   0.3973681
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.4938272   0.4257250   0.5619293
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.4720651   0.4599420   0.4841882
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.4458816   0.4346513   0.4571118
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.5175983   0.4592186   0.5759781
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.4681239   0.4188705   0.5173772
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.5043764   0.4659072   0.5428456
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.5000000   0.4602946   0.5397054
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.3783784   0.2827402   0.4740166
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2877442   0.2765378   0.2989506
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2443880   0.2328034   0.2559725
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2512563   0.2003787   0.3021339
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2354212   0.1904644   0.2803779
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2809278   0.2427726   0.3190831
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.1538462   0.0929317   0.2147607
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.2647059   0.1951599   0.3342519
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1621622   0.0780460   0.2462784
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1111111   0.0460799   0.1761423
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1933333   0.1300345   0.2566321
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.1538462   0.1094617   0.1982306
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2950820   0.2249145   0.3652495
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2014354   0.1908788   0.2119920
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2114616   0.2013926   0.2215306
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3272727   0.2666693   0.3878761
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2629213   0.2164426   0.3094001
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2939481   0.2530566   0.3348396
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.4565217   0.3931585   0.5198850
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.5254237   0.4534837   0.5973638
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.5042017   0.4406458   0.5677576
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.4068627   0.3394136   0.4743119
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4835886   0.4377462   0.5294310
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.5806452   0.5611436   0.6001467
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.5136778   0.4681756   0.5591801
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.4565217   0.4194270   0.4936165
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.5037594   0.4404461   0.5670727
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.5214638   0.5044221   0.5385054
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.4917582   0.4747153   0.5088012
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.4587629   0.3824627   0.5350631
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.4606061   0.3724151   0.5487970
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.5029240   0.4445032   0.5613448
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.3125000   0.2905849   0.3344151
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.3399015   0.2834942   0.3963088
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3066079   0.2891128   0.3241031
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2802768   0.2644593   0.2960944
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.1863354   0.1233434   0.2493274
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2180451   0.1333281   0.3027622
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2328767   0.1819193   0.2838342
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.2500000   0.1890152   0.3109848
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.3541667   0.2763891   0.4319442
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.2662722   0.1995805   0.3329639
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.2129032   0.1484086   0.2773979
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.2546584   0.2070358   0.3022810
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.2631579   0.2420036   0.2843122
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.2196262   0.1724295   0.2668228
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2500000   0.2159387   0.2840613
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.3508772   0.2840731   0.4176812
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2251791   0.2080649   0.2422933
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2331113   0.2173668   0.2488559
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2922078   0.2204558   0.3639597
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2877698   0.2046311   0.3709085
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3048327   0.2433513   0.3663141
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.4444444   0.3802299   0.5086590
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.5714286   0.5182539   0.6246033
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.5000000   0.3262282   0.6737718
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.5957447   0.4550125   0.7364769
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.5238095   0.4166769   0.6309422
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.4930556   0.4791152   0.5069959
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.5257143   0.4950165   0.5564121
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.4444444   0.4005083   0.4883805
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.4789916   0.4254531   0.5325301
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.3720930   0.3558685   0.3883176
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.2609649   0.2270215   0.2949084
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.2794118   0.2125707   0.3462528
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.3170732   0.2632485   0.3708979
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4074074   0.2212158   0.5935990
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1923077   0.0401184   0.3444970
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.2500000   0.1360653   0.3639347
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.1630435   0.1499529   0.1761341
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.2391800   0.2061583   0.2722016
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2794118   0.2345064   0.3243171
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2978723   0.2440621   0.3516826


### Parameter: E(Y)


hfoodsec                   agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.3333333   0.2548273   0.4118394
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.3520240   0.3358122   0.3682358
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.4400000   0.3912941   0.4887059
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.3578431   0.2916658   0.4240205
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.4037375   0.3915647   0.4159102
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.4925427   0.4693232   0.5157623
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.2460317   0.1927494   0.2993141
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2195655   0.2083210   0.2308101
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2545376   0.2336424   0.2754328
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.1833333   0.1132915   0.2533751
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1708694   0.1565549   0.1851840
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.1727941   0.1277815   0.2178068
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2023121   0.1419707   0.2626536
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.1825822   0.1724683   0.1926962
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2956204   0.2714883   0.3197526
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.3804348   0.2806852   0.4801843
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.3785714   0.3321295   0.4250134
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.4966443   0.4160921   0.5771965
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.4384615   0.3528349   0.5240881
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.4587236   0.4421845   0.4752626
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.4974306   0.4704428   0.5244185
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.3953488   0.2914092   0.4992885
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2655539   0.2493628   0.2817449
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2608430   0.2354079   0.2862782
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.2054795   0.1121500   0.2988089
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1624204   0.1215594   0.2032814
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2400000   0.1558715   0.3241285
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2066344   0.1920536   0.2212152
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2933071   0.2655967   0.3210175
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.4952381   0.3991473   0.5913289
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.4716352   0.4389854   0.5042849
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.5242967   0.4747320   0.5738614
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.4916201   0.4181777   0.5650626
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.5064303   0.4822735   0.5305871
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.4807418   0.4395517   0.5219319
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.3361702   0.2756434   0.3966971
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2933217   0.2697137   0.3169297
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2167235   0.1804186   0.2530285
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.3095238   0.2100679   0.4089797
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.2476780   0.2143650   0.2809910
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.2261905   0.1744339   0.2779470
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.3266667   0.2513619   0.4019714
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2292899   0.2060345   0.2525454
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2971530   0.2561989   0.3381071
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.4963504   0.4123198   0.5803809
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.5398773   0.4631279   0.6166267
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.5201422   0.4864172   0.5538672
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.4650000   0.3957013   0.5342987
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.2785978   0.2408208   0.3163747
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.2935780   0.2076905   0.3794655
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.2752294   0.1909960   0.3594627
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.2259887   0.1903824   0.2615950
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2901235   0.2200235   0.3602235


### Parameter: RR


hfoodsec                   agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           0.8926941   0.7049702   1.1304062
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.8629969   0.7521827   0.9901366
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0481060   0.9371429   1.1722078
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.0045872   0.8993176   1.1221790
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.0208333   0.8484634   1.2282212
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9990242   0.9693406   1.0296169
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0225678   0.8995237   1.1624427
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0198616   0.9054077   1.1487839
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.4673913   1.1779851   1.8278986
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8957965   0.8514310   0.9424737
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.1711574   0.9317620   1.4720601
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1080167   0.8936551   1.3737974
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           0.7795699   0.5301001   1.1464424
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7671317   0.5964336   0.9866832
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0573984   0.8643093   1.2936240
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.1797945   0.9086144   1.5319096
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.9666667   0.7173375   1.3026565
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.0929813   1.0342546   1.1550426
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9150638   0.7390843   1.1329448
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.9213198   0.7586587   1.1188565
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.2065663   0.9265600   1.5711906
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.6725207   0.4625713   0.9777607
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9778271   0.7396885   1.2926330
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.8370629   0.7113317   0.9850178
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.4233842   1.1649423   1.7391612
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9445341   0.9111506   0.9791407
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9044153   0.7751758   1.0552020
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.9744551   0.8503613   1.1166581
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.7567568   0.5806236   0.9863202
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8493236   0.7987850   0.9030598
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9369762   0.7093596   1.2376297
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1180928   0.8762569   1.4266723
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.7205882   1.0698127   2.7672358
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.6851852   0.3134460   1.4977976
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.1922222   0.6455946   2.2016817
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.9180328   1.3197394   2.7875578
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.0497736   0.9780216   1.1267896
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.8033708   0.6219233   1.0377560
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.8981748   0.7124755   1.1322748
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.1509282   0.9470580   1.3986848
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.8069444   0.6552363   0.9937779
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9591174   0.8191716   1.1229714
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.8846673   0.8047060   0.9725742
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.1034730   0.9500904   1.2816176
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9430344   0.8991586   0.9890511
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0040177   0.7791257   1.2938240
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0962613   0.8949364   1.3428761
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.0876847   0.9083644   1.3024047
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9141212   0.8436180   0.9905166
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.1701754   0.6992126   1.9583608
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.2497717   0.8354680   1.8695262
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.4166667   1.0202818   1.9670492
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7995699   0.5396986   1.1845723
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9563837   0.6996523   1.3073204
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.8345794   0.6634739   1.0498120
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.4035088   1.1105511   1.7737471
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.0352262   0.9352072   1.1459420
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9848122   0.6739866   1.4389827
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0432053   0.7592299   1.4333963
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.2857143   1.0827001   1.5267951
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           1.1914894   0.7826866   1.8138127
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0476190   0.6999555   1.5679650
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.0662374   0.9992590   1.1377053
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.0777311   0.9283379   1.2511654
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.7013432   0.6114384   0.8044674
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.1347882   0.8462967   1.5216226
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.4720280   0.1892694   1.1772130
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.6136364   0.3218182   1.1700692
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.4669704   1.2504318   1.7210072
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.0660694   0.8370994   1.3576692


### Parameter: PAR


hfoodsec                   agecat        studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  ------------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0196078   -0.0752644    0.0360487
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0037813   -0.0326638    0.0251013
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0016438   -0.0423980    0.0456857
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0049020   -0.0491780    0.0589819
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0001977   -0.0091767    0.0087813
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0074076   -0.0319580    0.0467732
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0682540    0.0188624    0.1176455
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0120073   -0.0194474   -0.0045672
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0225115   -0.0127953    0.0578182
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0235632   -0.0715448    0.0244183
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0056931   -0.0313317    0.0199455
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0218507   -0.0190413    0.0627427
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0045844   -0.0535544    0.0443856
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0081977    0.0007111    0.0156843
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0184291   -0.0577245    0.0208662
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0334960   -0.0361879    0.1031799
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0404762   -0.1218443    0.0408919
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0823031   -0.1576810   -0.0069251
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0915228    0.0223216    0.1607239
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0133415   -0.0246419   -0.0020411
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0201677   -0.0697127    0.0293772
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.1046512   -0.2007081   -0.0085942
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0221904   -0.0339026   -0.0104781
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0095867   -0.0348217    0.0539951
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0516333   -0.0190760    0.1223426
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0002582   -0.0732958    0.0738122
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0861538    0.0146862    0.1576214
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0051990   -0.0048581    0.0152561
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0339656   -0.0848294    0.0168981
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0387164   -0.0335231    0.1109558
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0325665   -0.0870332    0.0219001
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0563485   -0.1019154   -0.0107815
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0350984   -0.0282875    0.0984843
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0150334   -0.0321698    0.0021029
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0219789   -0.0434459    0.0874037
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0236702   -0.0327499    0.0800903
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0132862   -0.0291580    0.0025856
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0303881   -0.0253068    0.0860831
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0595238   -0.0190404    0.1380880
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0185942   -0.0754305    0.0382422
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0369674   -0.0842034    0.0102686
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0766667    0.0095054    0.1438279
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0041108   -0.0116268    0.0198484
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0049452   -0.0583103    0.0682008
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0519059   -0.0022939    0.1061058
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0398773   -0.1157851    0.1955397
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0270866   -0.0036224    0.0577956
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0205556   -0.0330348    0.0741459
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0934952   -0.1276107   -0.0593798
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0141662   -0.0397684    0.0681008
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.1321780   -0.2889835    0.0246274
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0629452    0.0298326    0.0960579
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0107117   -0.0431169    0.0645403


### Parameter: PAF


hfoodsec                   agecat        studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  ------------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Food Secure                0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0588235   -0.2515500    0.1042249
Food Secure                0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0107415   -0.0962109    0.0680641
Food Secure                0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0037360   -0.1011468    0.0986289
Food Secure                0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0136986   -0.1472198    0.1520454
Food Secure                0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0004897   -0.0229896    0.0215152
Food Secure                0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0150395   -0.0682609    0.0918444
Food Secure                0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.2774194    0.1146438    0.4102681
Food Secure                0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0546867   -0.0910980   -0.0194904
Food Secure                0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0884406   -0.0617577    0.2173916
Food Secure                6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.1285266   -0.4689430    0.1330008
Food Secure                6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0333184   -0.1947901    0.1063310
Food Secure                6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.1264552   -0.1073613    0.3109020
Food Secure                6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0226601   -0.3027659    0.1972206
Food Secure                6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0448987    0.0048867    0.0833020
Food Secure                6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0623406   -0.2039517    0.0626140
Mildly Food Insecure       0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0880466   -0.0962510    0.2413608
Mildly Food Insecure       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.1069182   -0.3443085    0.0885515
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.1657183   -0.3570723   -0.0013462
Mildly Food Insecure       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.2087361    0.0707771    0.3262128
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0290840   -0.0547584   -0.0040345
Mildly Food Insecure       0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0405438   -0.1448911    0.0542932
Mildly Food Insecure       0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.2647059   -0.6139986    0.0089948
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0835625   -0.1325498   -0.0366942
Mildly Food Insecure       0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0367529   -0.1494563    0.1927966
Mildly Food Insecure       6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.2512821   -0.0712435    0.4767030
Mildly Food Insecure       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0015898   -0.5714392    0.3656624
Mildly Food Insecure       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.3589744    0.1213856    0.5323160
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0251604   -0.0234779    0.0714874
Mildly Food Insecure       6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.1158023   -0.3023791    0.0440458
Moderately Food Insecure   0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0781773   -0.0670190    0.2036157
Moderately Food Insecure   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0690503   -0.1911035    0.0404961
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.1074744   -0.2081227   -0.0152111
Moderately Food Insecure   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0713933   -0.0565334    0.1838304
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0296851   -0.0651372    0.0045869
Moderately Food Insecure   0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0457187   -0.1004898    0.1725024
Moderately Food Insecure   0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0704114   -0.0995396    0.2140938
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0452958   -0.1034803    0.0098207
Moderately Food Insecure   0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.1402162   -0.1572096    0.3611976
Moderately Food Insecure   6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.1923077   -0.0455544    0.3760565
Moderately Food Insecure   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0750740   -0.3308011    0.1315126
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.1634349   -0.4342218    0.0562263
Moderately Food Insecure   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.2346939    0.0576815    0.3784549
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0179285   -0.0518580    0.0830849
Moderately Food Insecure   6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0166420   -0.2207511    0.2078706
Severely Food Insecure     0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.1045752    0.0002199    0.1980380
Severely Food Insecure     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0738636   -0.2646976    0.3217916
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0520754   -0.0055932    0.1064369
Severely Food Insecure     0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0442055   -0.0726353    0.1483190
Severely Food Insecure     0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.3355922   -0.5108918   -0.1806315
Severely Food Insecure     6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0482537   -0.1441022    0.2082691
Severely Food Insecure     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.4802469   -1.1786009   -0.0057514
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.2785326    0.1632651    0.3779210
Severely Food Insecure     6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0369212   -0.1595266    0.2000866
