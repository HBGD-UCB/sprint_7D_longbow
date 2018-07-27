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

* hhwealth_quart
* agecat
* studyid
* country

## Data Summary

hhwealth_quart   agecat        studyid                     country                        tr          ever_stunted   n_cell      n
---------------  ------------  --------------------------  -----------------------------  ---------  -------------  -------  -----
Wealth Q1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       11     74
Wealth Q1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        3     74
Wealth Q1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       21     74
Wealth Q1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        3     74
Wealth Q1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       31     74
Wealth Q1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        5     74
Wealth Q3        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        8     60
Wealth Q3        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        0     60
Wealth Q3        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       17     60
Wealth Q3        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        0     60
Wealth Q3        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       34     60
Wealth Q3        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        1     60
Wealth Q2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        7     51
Wealth Q2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        2     51
Wealth Q2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0        9     51
Wealth Q2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        3     51
Wealth Q2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       27     51
Wealth Q2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        3     51
Wealth Q4        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       11     47
Wealth Q4        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        1     47
Wealth Q4        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       15     47
Wealth Q4        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        1     47
Wealth Q4        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       18     47
Wealth Q4        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        1     47
Wealth Q1        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0       10     24
Wealth Q1        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        0     24
Wealth Q1        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        5     24
Wealth Q1        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0     24
Wealth Q1        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0        7     24
Wealth Q1        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        2     24
Wealth Q3        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0        5     33
Wealth Q3        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        1     33
Wealth Q3        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        9     33
Wealth Q3        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0     33
Wealth Q3        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0       17     33
Wealth Q3        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        1     33
Wealth Q2        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0        5     19
Wealth Q2        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        0     19
Wealth Q2        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        6     19
Wealth Q2        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0     19
Wealth Q2        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0        6     19
Wealth Q2        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        2     19
Wealth Q4        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0        5     16
Wealth Q4        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        1     16
Wealth Q4        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0        3     16
Wealth Q4        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0     16
Wealth Q4        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0        7     16
Wealth Q4        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        0     16
Wealth Q1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        6     16
Wealth Q1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        2     16
Wealth Q1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        5     16
Wealth Q1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        3     16
Wealth Q3        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0        7     22
Wealth Q3        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        2     22
Wealth Q3        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       10     22
Wealth Q3        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        3     22
Wealth Q2        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       12     35
Wealth Q2        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        7     35
Wealth Q2        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       15     35
Wealth Q2        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        1     35
Wealth Q4        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       10     24
Wealth Q4        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        1     24
Wealth Q4        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       11     24
Wealth Q4        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        2     24
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       41    167
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        6    167
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      107    167
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       13    167
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       33    155
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        5    155
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      105    155
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       12    155
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       33    156
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        9    156
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0       88    156
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       26    156
Wealth Q3        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       35    160
Wealth Q3        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        4    160
Wealth Q3        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      107    160
Wealth Q3        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       14    160
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      150    557
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       12    557
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      130    557
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        6    557
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      247    557
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       12    557
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      117    551
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        9    551
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      120    551
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       15    551
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      262    551
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       28    551
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      151    672
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       10    672
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      157    672
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        6    672
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      326    672
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       22    672
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       98    445
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        9    445
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      110    445
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        8    445
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      200    445
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       20    445
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       35    100
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       16    100
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       39    100
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       10    100
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       17     56
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1        5     56
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       20     56
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       14     56
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       16     67
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1        9     67
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       30     67
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       12     67
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       22     64
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       16     64
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       18     64
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1        8     64
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       25    232
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       13    232
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      132    232
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       62    232
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       31    229
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       11    229
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      129    229
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       58    229
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       16    203
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       11    203
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      134    203
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       42    203
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       31    232
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1        8    232
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      137    232
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       56    232
Wealth Q1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        6     20
Wealth Q1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        1     20
Wealth Q1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        8     20
Wealth Q1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        5     20
Wealth Q4        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        2      7
Wealth Q4        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        5      7
Wealth Q3        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        2     14
Wealth Q3        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        2     14
Wealth Q3        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        8     14
Wealth Q3        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        2     14
Wealth Q2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        4     13
Wealth Q2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        1     13
Wealth Q2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        5     13
Wealth Q2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        3     13
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        8     64
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        5     64
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       26     64
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1        8     64
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0        6     64
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1       11     64
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0       15     73
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        8     73
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       23     73
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1        9     73
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       12     73
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        6     73
Wealth Q1        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0       11     68
Wealth Q1        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        6     68
Wealth Q1        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       22     68
Wealth Q1        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1       13     68
Wealth Q1        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       12     68
Wealth Q1        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        4     68
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        9     64
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        5     64
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       22     64
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1       14     64
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0        8     64
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        6     64
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1503   4685
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      784   4685
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1704   4685
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      694   4685
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1645   4861
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      730   4861
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1864   4861
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      622   4861
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1712   4721
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      639   4721
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1843   4721
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      527   4721
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2076   5079
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      505   5079
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2047   5079
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      451   5079
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      261   1208
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1       62   1208
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      260   1208
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       70   1208
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      400   1208
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      155   1208
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      213   1063
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1       58   1063
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      244   1063
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       49   1063
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      388   1063
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      111   1063
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      213   1142
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1       93   1142
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      204   1142
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      118   1142
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      377   1142
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      137   1142
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      218   1144
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1       61   1144
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      226   1144
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       77   1144
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      406   1144
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      156   1144
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      219   1007
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       25   1007
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      234   1007
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       21   1007
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      445   1007
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       63   1007
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      147    846
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       54    846
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      178    846
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       45    846
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      340    846
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       82    846
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      153    859
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       60    859
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      178    859
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       38    859
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      310    859
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      120    859
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      210   1014
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       42   1014
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      233   1014
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       38   1014
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      384   1014
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      107   1014
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      430   1332
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       31   1332
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      294   1332
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       23   1332
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      512   1332
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       42   1332
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      436   1351
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       29   1351
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      290   1351
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       16   1351
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      537   1351
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       43   1351
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      416   1283
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       32   1283
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      248   1283
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       15   1283
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      519   1283
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       53   1283
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      430   1366
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       22   1366
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      316   1366
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       13   1366
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      549   1366
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       36   1366
Wealth Q4        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       67    110
Wealth Q4        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       34    110
Wealth Q4        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        9    110
Wealth Q4        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        0    110
Wealth Q3        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       55     92
Wealth Q3        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       34     92
Wealth Q3        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        3     92
Wealth Q3        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        0     92
Wealth Q1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       40     80
Wealth Q1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       32     80
Wealth Q1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        8     80
Wealth Q1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        0     80
Wealth Q2        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       48     92
Wealth Q2        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       35     92
Wealth Q2        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0        9     92
Wealth Q2        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        0     92
Wealth Q4        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       35    140
Wealth Q4        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        4    140
Wealth Q4        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       88    140
Wealth Q4        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       13    140
Wealth Q2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       25    121
Wealth Q2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        4    121
Wealth Q2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       65    121
Wealth Q2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       27    121
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       26    133
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        6    133
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       77    133
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       24    133
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       15    101
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       11    101
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       46    101
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       29    101
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      114    478
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       25    478
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      102    478
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       13    478
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      185    478
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       39    478
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       88    430
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       14    430
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       92    430
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       14    430
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      182    430
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       40    430
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      126    566
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       12    566
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      121    566
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       14    566
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      262    566
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       31    566
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       73    366
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       13    366
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       90    366
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       11    366
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      158    366
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       21    366
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       50    248
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       70    248
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       65    248
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       63    248
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       15    116
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       29    116
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       26    116
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       46    116
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       22    131
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       27    131
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       35    131
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       47    131
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       12    105
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       39    105
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       30    105
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       24    105
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       29    229
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       12    229
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      140    229
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       48    229
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       27    231
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        9    231
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      147    231
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       48    231
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       26    228
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       10    228
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      143    228
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       49    228
Wealth Q4        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       42    246
Wealth Q4        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        4    246
Wealth Q4        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      164    246
Wealth Q4        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       36    246
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       34    105
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       12    105
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       41    105
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       18    105
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       49    171
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       17    171
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       74    171
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       31    171
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       38    168
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       10    168
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       89    168
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       31    168
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       56    223
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       11    223
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      116    223
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       40    223
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       20    145
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        9    145
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       53    145
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       23    145
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       24    145
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       16    145
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       24    135
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       10    135
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       45    135
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       23    135
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       24    135
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1        9    135
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       25    132
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        8    132
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       49    132
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       23    132
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       19    132
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1        8    132
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       29    167
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       16    167
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       57    167
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       22    167
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       30    167
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       13    167
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1208   3167
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      343   3167
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1234   3167
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      382   3167
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1295   3297
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      319   3297
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1374   3297
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      309   3297
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1753   4076
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      274   4076
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1731   4076
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      318   4076
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1000   2758
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      298   2758
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1083   2758
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      377   2758
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      245   1171
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      101   1171
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      237   1171
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       80   1171
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      352   1171
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      156   1171
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      202   1082
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1       73   1082
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      240   1082
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       67   1082
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      381   1082
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      119   1082
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      170    997
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      101    997
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      183    997
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       94    997
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      305    997
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      144    997
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      171   1056
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1       92   1056
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      203   1056
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       90   1056
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      345   1056
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      155   1056
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      216   1142
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       64   1142
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      232   1142
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       53   1142
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      441   1142
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      136   1142
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      140   1157
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      131   1157
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      175   1157
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      110   1157
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      333   1157
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      268   1157
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      152   1252
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      159   1252
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      171   1252
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      141   1252
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      304   1252
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      325   1252
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      203   1266
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      111   1266
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      230   1266
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       99   1266
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      375   1266
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      248   1266
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      423   1709
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      164   1709
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      250   1709
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       97   1709
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      520   1709
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      255   1709
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      430   1694
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      154   1694
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      298   1694
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       87   1694
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      515   1694
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      210   1694
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      439   1665
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      139   1665
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      297   1665
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       69   1665
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      545   1665
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      176   1665
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0      429   1635
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      120   1635
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      310   1635
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       66   1635
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0      553   1635
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      157   1635
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       75    169
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       69    169
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       20    169
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        5    169
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       56    164
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       88    164
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       13    164
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        7    164
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       43    176
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1      113    176
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       13    176
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        7    176
Wealth Q2        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       56    157
Wealth Q2        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       76    157
Wealth Q2        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       24    157
Wealth Q2        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        1    157
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       35    167
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       12    167
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       87    167
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       33    167
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       25    155
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       13    155
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       68    155
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       49    155
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       15    156
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       27    156
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       46    156
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       68    156
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       26    161
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       13    161
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       76    161
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       46    161
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      121    562
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       42    562
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      112    562
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       24    562
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      195    562
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       68    562
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       98    558
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       31    558
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       93    558
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       43    558
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      211    558
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       82    558
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      133    677
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       28    677
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      137    677
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       29    677
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      283    677
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       67    677
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       80    449
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       28    449
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       94    449
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       24    449
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      167    449
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       56    449
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       48    444
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      176    444
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       71    444
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      149    444
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       25    263
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       85    263
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       36    263
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      117    263
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       14    246
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       97    246
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       28    246
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      107    246
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       13    229
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      110    229
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       27    229
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       79    229
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       26    350
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       24    350
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      149    350
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      151    350
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       27    350
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       34    350
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      124    350
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      165    350
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       23    350
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       32    350
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      131    350
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      164    350
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       38    350
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       33    350
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      153    350
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      126    350
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       31    132
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       30    132
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       39    132
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       32    132
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       47    208
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       28    208
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       67    208
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       66    208
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       38    205
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       26    205
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       84    205
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       57    205
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       53    279
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       30    279
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0      110    279
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       86    279
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       23    204
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       27    204
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       42    204
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       58    204
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       25    204
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       29    204
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       14    197
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       22    197
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       45    197
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       57    197
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       19    197
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       40    197
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       29    217
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       30    217
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       43    217
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       62    217
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       24    217
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       29    217
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       26    199
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       29    199
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       45    199
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       59    199
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       14    199
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       26    199
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1556   5751
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1272   5751
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1693   5751
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1230   5751
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1406   5533
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1299   5533
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1571   5533
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1257   5533
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1606   5606
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1169   5606
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1776   5606
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1055   5606
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     2079   6028
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      953   6028
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     2062   6028
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      934   6028
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      220   1420
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      169   1420
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      214   1420
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      172   1420
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      320   1420
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      325   1420
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      189   1280
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      140   1280
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      221   1280
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      135   1280
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      340   1280
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      255   1280
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      156   1377
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      218   1377
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      157   1377
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      235   1377
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      281   1377
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      330   1377
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      158   1348
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      180   1348
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      182   1348
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      175   1348
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      311   1348
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      342   1348
Wealth Q1        0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        6     10
Wealth Q1        0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        1     10
Wealth Q1        0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        2     10
Wealth Q1        0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        1     10
Wealth Q3        0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        2     11
Wealth Q3        0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        2     11
Wealth Q3        0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        6     11
Wealth Q3        0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        1     11
Wealth Q2        0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        4      9
Wealth Q2        0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        1      9
Wealth Q2        0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        2      9
Wealth Q2        0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        2      9
Wealth Q4        0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        2      4
Wealth Q4        0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        2      4
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       49    122
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       17    122
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       39    122
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       17    122
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       38    100
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       10    100
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       43    100
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1        9    100
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       34     76
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       12     76
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       22     76
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1        8     76
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       56    145
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       11    145
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       56    145
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       22    145
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       47    148
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       28    148
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       35    148
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       38    148
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       38    127
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       26    127
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       42    127
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       21    127
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       53    185
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       30    185
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       54    185
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       48    185
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       31     96
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       30     96
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       20     96
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1       15     96


The following strata were considered:

* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5033a98e-96de-4cd5-a6c9-990706491365/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5033a98e-96de-4cd5-a6c9-990706491365/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5033a98e-96de-4cd5-a6c9-990706491365/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5033a98e-96de-4cd5-a6c9-990706491365/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


hhwealth_quart   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.4918033   0.4116674   0.5719392
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.4285714   0.3684849   0.4886580
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2285714   0.1793654   0.2777774
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1859649   0.1407738   0.2311560
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2357019   0.2010551   0.2703487
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2185792   0.1839979   0.2531606
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1755319   0.1370681   0.2139957
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2211268   0.1905912   0.2516623
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4791667   0.4094360   0.5488974
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2000000   0.1767362   0.2232638
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2553191   0.2201298   0.2905085
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2750000   0.2174213   0.3325787
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2403101   0.1665117   0.3141085
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.3161765   0.2379588   0.3943942
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2798635   0.2284136   0.3313134
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7857143   0.7585744   0.8128542
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6772727   0.6466273   0.7079182
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4647887   0.4412208   0.4883566
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4516129   0.4049974   0.4982284
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4918033   0.4336061   0.5500005
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4507042   0.3882152   0.5131932
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5084746   0.3806152   0.6363340
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5904762   0.4962010   0.6847513
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.5471698   0.4128494   0.6814902
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3143140   0.3044493   0.3241787
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3117490   0.3011077   0.3223903
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4255319   0.3608824   0.4901814
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3792135   0.3187111   0.4397159
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4285714   0.3790381   0.4781048
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1276596   0.1007285   0.1545907
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1083333   0.0682551   0.1484116
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0714286   0.0264194   0.1164377
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1111111   0.0580498   0.1641724
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0965517   0.0625285   0.1305749
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3137255   0.2484516   0.3789994
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2040816   0.1485085   0.2596547
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2619048   0.2374640   0.2863456
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3101604   0.2559040   0.3644168
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3478261   0.1518324   0.5438198
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2812500   0.1243932   0.4381068
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3333333   0.1140525   0.5526142
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1956606   0.1867036   0.2046176
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1805444   0.1716663   0.1894226
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2140221   0.1611827   0.2668616
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1672355   0.1184581   0.2160129
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2224449   0.1803563   0.2645335
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2608696   0.1835549   0.3381842
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2666667   0.2037876   0.3295458
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1024590   0.0643900   0.1405280
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.0823529   0.0485954   0.1161105
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1240157   0.0953397   0.1526917
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0486726   0.0288278   0.0685173
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0395137   0.0184551   0.0605722
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0615385   0.0420575   0.0810194
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1372549   0.0703961   0.2041137
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1320755   0.0675468   0.1966042
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1801802   0.1295639   0.2307964
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5833333   0.5405655   0.6261012
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4921875   0.4473960   0.5369790
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2608696   0.2050112   0.3167279
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3050847   0.2387503   0.3714192
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3555556   0.2152766   0.4958345
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2784810   0.1793384   0.3776236
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3023256   0.1646421   0.4400091
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1351751   0.1265502   0.1438001
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1551977   0.1447248   0.1656706
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2654545   0.1988551   0.3320540
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2182410   0.1598496   0.2766324
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2380000   0.1895399   0.2864601
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.4062500   0.3448885   0.4676115
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3333333   0.2751327   0.3915340
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5112540   0.4556762   0.5668318
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4519231   0.3966775   0.5071686
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5166932   0.4776249   0.5557614
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2793867   0.2430781   0.3156954
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2795389   0.2323068   0.3267710
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3290323   0.2959424   0.3621221
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.7243590   0.6620309   0.7866871
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.3500000   0.3261780   0.3738220
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.6428571   0.6037170   0.6819973
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.5964912   0.5304674   0.6625151
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1739130   0.1153215   0.2325046
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1746988   0.1168937   0.2325039
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1914286   0.1501811   0.2326761
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8943089   0.8650621   0.9235557
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7452830   0.7068056   0.7837604
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4800000   0.4601889   0.4998111
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5033333   0.4547685   0.5518982
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4062500   0.3684081   0.4440919
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4042553   0.3482667   0.4602439
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5400000   0.4015140   0.6784860
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5800000   0.4830263   0.6769737
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.5370370   0.4037176   0.6703565
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4802218   0.4680964   0.4923472
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.4444837   0.4335254   0.4554421
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5828877   0.5185485   0.6472269
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5994898   0.5410294   0.6579502
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5400982   0.4904845   0.5897119
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2142857   0.1807681   0.2478034
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2280702   0.1716031   0.2845373
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0621118   0.0248022   0.0994214
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0368098   0.0078820   0.0657376
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0632184   0.0376312   0.0888056
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4210526   0.3271090   0.5149963
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3076923   0.2350512   0.3803334
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4074074   0.3826959   0.4321189
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2386364   0.1839039   0.2933688
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3428072   0.3301858   0.3554285
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2894078   0.2782900   0.3005257
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3039216   0.2408425   0.3670006
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3664596   0.3076886   0.4252306
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2665370   0.2195432   0.3135308
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2083333   0.1523461   0.2643205
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.1730769   0.1189035   0.2272504
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2816901   0.2212462   0.3421341
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1759259   0.1251191   0.2267328
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2790698   0.2366499   0.3214897
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0714286   0.0475712   0.0952859
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0570342   0.0289957   0.0850728
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0926573   0.0688865   0.1164282
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.4230769   0.3739474   0.4722065
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.3866667   0.3044169   0.4689164
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0869565   0.0399033   0.1340097
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1037037   0.0522297   0.1551777
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1058020   0.0705518   0.1410523
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7647059   0.7078894   0.8215224
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4444444   0.3759578   0.5129311
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2500000   0.2279083   0.2720917
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2461538   0.1950045   0.2973032
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2083333   0.1752121   0.2414546
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2583333   0.2019714   0.3146953
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2941176   0.1403908   0.4478445
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3382353   0.2253677   0.4511029
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2727273   0.1202102   0.4252444
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2295840   0.2151852   0.2439827
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2582192   0.2449619   0.2714765
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3726937   0.3066921   0.4386954
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3393502   0.2715853   0.4071151
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3207127   0.2664350   0.3749904
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3733333   0.3176717   0.4289950
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.5205479   0.4638297   0.5772662
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4833948   0.4238723   0.5429174
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3859649   0.3294213   0.4425086
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4459235   0.4061665   0.4856805
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2636986   0.2279506   0.2994466
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2259740   0.1841859   0.2677622
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2896552   0.2566272   0.3226832
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3421053   0.3050054   0.3792051
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4188034   0.3511045   0.4865023
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2592593   0.1765183   0.3420002
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2033898   0.1306824   0.2760973
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2511211   0.1941405   0.3081017
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8738739   0.8459493   0.9017984
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7925926   0.7549828   0.8302024
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5818182   0.5613038   0.6023326
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5559322   0.5080749   0.6037895
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3733333   0.3337667   0.4128999
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4962406   0.4417759   0.5507053
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5272727   0.3949959   0.6595495
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5673077   0.4718471   0.6627683
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.6500000   0.5018155   0.7981845
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4497878   0.4386351   0.4609405
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.4208005   0.4100809   0.4315202
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5325444   0.4606068   0.6044820
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4901961   0.4279430   0.5524491
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5237366   0.4801619   0.5673113
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1315789   0.1051444   0.1580135
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1025641   0.0609334   0.1441949
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0841121   0.0314625   0.1367618
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0677966   0.0223863   0.1132070
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0909091   0.0528785   0.1289396
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.2272727   0.1578549   0.2966905
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4117647   0.3104174   0.5131120
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3421053   0.3173454   0.3668651
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3195876   0.2645981   0.3745772
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3571429   0.1041653   0.6101204
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3888889   0.2283836   0.5493942
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4285714   0.1672973   0.6898455
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3073684   0.2962940   0.3184428
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2502011   0.2399767   0.2604255
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2186380   0.1622288   0.2750472
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2541254   0.1955027   0.3127481
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2775801   0.2362349   0.3189253
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2575758   0.2002663   0.3148852
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3035714   0.2480656   0.3590772
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2686567   0.2073418   0.3299717
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2017937   0.1490873   0.2545002
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1943128   0.1565397   0.2320859
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0672451   0.0443747   0.0901156
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0725552   0.0439885   0.1011219
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0758123   0.0537624   0.0978622
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1511628   0.0753526   0.2269730
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1089109   0.0480725   0.1697493
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1173184   0.0701120   0.1645248
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6590909   0.6057343   0.7124475
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6388889   0.5697266   0.7080512
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2777778   0.2546250   0.3009306
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2552083   0.2031628   0.3072538
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2575758   0.2167367   0.2984149
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2952381   0.2415068   0.3489694
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2424242   0.0956521   0.3891963
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3194444   0.2113353   0.4275536
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2962963   0.1234040   0.4691886
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2211476   0.2091336   0.2331617
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2363861   0.2240405   0.2487318
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3498099   0.2779573   0.4216624
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3071672   0.2463925   0.3679420
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3100000   0.2634859   0.3565141
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.3614458   0.3149501   0.4079415
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.4705882   0.4170368   0.5241396
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3535032   0.3006057   0.4064006
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3009119   0.2513318   0.3504919
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3980738   0.3596209   0.4365267
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2404844   0.2056325   0.2753363
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.1885246   0.1484416   0.2286075
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2441054   0.2127415   0.2754693
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.6111111   0.5409839   0.6812383
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.3500000   0.3244296   0.3755704
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3333333   0.2973831   0.3692835
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.3770492   0.3116788   0.4424196
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2576687   0.1904685   0.3248689
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1764706   0.1123436   0.2405976
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2585551   0.2055921   0.3115182
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7727273   0.7399100   0.8055446
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7647059   0.7255301   0.8038817
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5573770   0.5356221   0.5791320
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5709343   0.5237491   0.6181194
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3614458   0.3306435   0.3922481
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.4387755   0.3898831   0.4876679
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6111111   0.4514590   0.7707633
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5588235   0.4622192   0.6554279
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.6779661   0.5584347   0.7974975
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4212613   0.4106545   0.4318680
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3726598   0.3623618   0.3829579
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4344473   0.3782970   0.4905976
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4455959   0.3856878   0.5055039
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5038760   0.4540584   0.5536935
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0740741   0.0337093   0.1144388
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0441176   0.0095733   0.0786620
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0463320   0.0207092   0.0719549
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3600000   0.2892625   0.4307375
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2857143   0.1994233   0.3720053
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2051282   0.1837785   0.2264779
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2901554   0.2367760   0.3435348
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3846154   0.1180629   0.6511679
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2352941   0.0915861   0.3790022
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.6470588   0.4180953   0.8760224
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2717992   0.2615514   0.2820470
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2223629   0.2128898   0.2318360
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.1919505   0.1405673   0.2433336
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2121212   0.1595072   0.2647353
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2792793   0.2358544   0.3227042
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1641791   0.1230513   0.2053069
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2820513   0.2281448   0.3359578
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1666667   0.1206309   0.2127025
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1402214   0.0988616   0.1815812
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2179226   0.1813886   0.2544566
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0623656   0.0403783   0.0843529
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0522876   0.0273367   0.0772385
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0741379   0.0528081   0.0954678
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1875000   0.1548395   0.2201605
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2376238   0.1743497   0.3008978
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1798561   0.1159411   0.2437712
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1130435   0.0551102   0.1709767
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1741071   0.1243965   0.2238177
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5510204   0.4987283   0.6033125
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5731707   0.5059014   0.6404400
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2926829   0.2676933   0.3176726
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2553191   0.2040367   0.3066016
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1641791   0.1374692   0.1908890
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2564103   0.2083688   0.3044517
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3103448   0.1413824   0.4793072
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3026316   0.1989904   0.4062727
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.4000000   0.2476556   0.5523444
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1976456   0.1858178   0.2094734
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1836007   0.1725409   0.1946606
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2919075   0.2410033   0.3428117
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2523659   0.1976787   0.3070532
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3070866   0.2551014   0.3590718


### Parameter: E(Y)


hhwealth_quart   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4687500   0.3684025   0.5690975
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2215412   0.1974449   0.2456375
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2097859   0.1900443   0.2295275
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.4378698   0.3628486   0.5128911
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2694611   0.2019673   0.3369549
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2795699   0.2422997   0.3168401
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7319820   0.6907363   0.7732277
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4542857   0.4020482   0.5065232
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4696970   0.3842329   0.5551610
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5576037   0.4913683   0.6238390
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3130392   0.2985298   0.3275485
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4140625   0.3810390   0.4470860
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1137725   0.0654682   0.1620767
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0943739   0.0699414   0.1188063
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.2600000   0.1735962   0.3464038
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3013100   0.2417535   0.3608666
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3150685   0.2077665   0.4223705
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1882260   0.1755905   0.2008615
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2050800   0.1775416   0.2326183
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2631579   0.1634997   0.3628161
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1082423   0.0890436   0.1274410
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0519766   0.0402006   0.0637525
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1581395   0.1236125   0.1926666
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5362903   0.4741000   0.5984806
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2857143   0.1988916   0.3725370
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3053892   0.2353257   0.3754527
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1452404   0.1316430   0.1588379
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2393715   0.2067754   0.2719677
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.3700787   0.2853004   0.4548571
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4992013   0.4714943   0.5269082
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3019310   0.2801585   0.3237034
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.6818182   0.6128099   0.7508264
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.6089744   0.5321526   0.6857961
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1831610   0.1540029   0.2123191
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.8253275   0.7760435   0.8746115
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5000000   0.4475428   0.5524572
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4048780   0.3373006   0.4724555
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5588235   0.4905199   0.6271271
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4619555   0.4455752   0.4783359
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5686275   0.5359707   0.6012842
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2243590   0.1586864   0.2900316
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0565476   0.0390711   0.0740241
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3750000   0.2554544   0.4945456
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2610837   0.2005134   0.3216541
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3154749   0.2985881   0.3323618
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3047285   0.2729602   0.3364969
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1900000   0.1120311   0.2679689
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2537835   0.2246650   0.2829019
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0779423   0.0632676   0.0926170
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.3960396   0.3001831   0.4918961
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1007067   0.0758923   0.1255211
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.6000000   0.5058464   0.6941536
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2467532   0.1910367   0.3024698
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2440476   0.1785757   0.3095195
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3111111   0.2327270   0.3894952
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2447426   0.2251815   0.2643036
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3400201   0.3042981   0.3757420
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4459459   0.3655921   0.5262998
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4399309   0.4113166   0.4685451
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2662338   0.2451800   0.2872875
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4000000   0.3226263   0.4773737
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2405345   0.2009567   0.2801123
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.8292683   0.7821522   0.8763844
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5600000   0.5079218   0.6120782
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4519231   0.3841252   0.5197209
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5728643   0.5039635   0.6417651
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4350548   0.4195163   0.4505932
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.5170623   0.4847602   0.5493645
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1096774   0.0603237   0.1590312
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0831461   0.0574641   0.1088280
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3392857   0.2141572   0.4644143
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3232759   0.2629596   0.3835921
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3906250   0.2701491   0.5111009
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2781321   0.2629168   0.2933473
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2569930   0.2278479   0.2861381
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2786885   0.1988015   0.3585756
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2139480   0.1862977   0.2415983
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0720721   0.0581790   0.0859652
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1229508   0.0892625   0.1566391
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.6465517   0.5591814   0.7339220
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2587719   0.2017989   0.3157450
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2807018   0.2131556   0.3482479
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2954545   0.2173255   0.3735835
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2289233   0.2117045   0.2461420
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3191288   0.2861103   0.3521473
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4216216   0.3502695   0.4929737
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3617694   0.3352900   0.3882487
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2306306   0.2103912   0.2508700
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5792683   0.5034809   0.6550557
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.3664596   0.2917996   0.4411197
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2384342   0.2031724   0.2736960
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7680608   0.7169536   0.8191681
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5685714   0.5166098   0.6205330
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4157706   0.3578352   0.4737060
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6040609   0.5355950   0.6725269
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3967178   0.3817669   0.4116687
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4690141   0.4370699   0.5009583
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0538600   0.0350961   0.0726238
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3134328   0.2015174   0.4253482
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2758621   0.2182254   0.3334987
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3750000   0.2554544   0.4945456
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2469816   0.2328540   0.2611092
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2375828   0.2092194   0.2659462
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2275862   0.1591060   0.2960664
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1844181   0.1605357   0.2083006
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0651369   0.0519735   0.0783004
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2255639   0.1542640   0.2968638
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1610879   0.1280982   0.1940776
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5648855   0.4796622   0.6501088
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2620087   0.2049313   0.3190861
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2286996   0.1734516   0.2839475
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3310345   0.2541736   0.4078954
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1904762   0.1742647   0.2066877
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2877882   0.2568125   0.3187640


### Parameter: RR


hhwealth_quart   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8714286   0.7028726   1.0804059
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8135965   0.5880519   1.1256476
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0311958   0.7945691   1.3382912
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8030585   0.6128717   1.0522642
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0116549   0.8200329   1.2480545
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.4173913   0.3464451   0.5028661
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.0770833   0.8382731   1.3839267
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.3157021   0.8869427   1.9517291
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1645932   0.8142027   1.6657736
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8619835   0.8142850   0.9124760
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9716520   0.8660957   1.0900731
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9164319   0.7637247   1.0996730
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1612698   0.8621312   1.5642023
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0761006   0.7572436   1.5292207
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9918394   0.9468917   1.0389208
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8911517   0.7148391   1.1109512
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0071429   0.8320747   1.2190453
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.8486111   0.5543110   1.2991638
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.5555556   0.7055265   3.4297127
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3517241   0.6566622   2.7824931
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.6505102   0.4617670   0.9164006
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1842489   0.9712646   1.4439377
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8085938   0.3659444   1.7866753
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.9583333   0.4030316   2.2787362
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9227429   0.8627870   0.9868653
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7813934   0.5332126   1.1450886
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0393546   0.7615277   1.4185405
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.0222222   0.6999462   1.4928837
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8037647   0.4622292   1.3976565
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.2103937   0.7813887   1.8749348
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8118266   0.4149966   1.5881154
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2643357   0.7545454   2.1185532
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9622642   0.4826888   1.9183214
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3127413   0.7481169   2.3035032
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8437500   0.7506896   0.9483467
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.1694915   0.8619190   1.5868202
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7832278   0.4603598   1.3325356
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.8502907   0.4654635   1.5532781
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1481228   1.0462799   1.2598789
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8221409   0.5695116   1.1868340
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8965753   0.6487544   1.2390627
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8205128   0.6513593   1.0335943
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8839502   0.7505536   1.0410554
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0106388   0.8852932   1.1537317
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0005447   0.8084653   1.2382594
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1776947   0.9992335   1.3880288
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.4831858   0.4329796   0.5392138
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9278752   0.8177609   1.0528168
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0045181   0.6264369   1.6107872
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1007143   0.7378947   1.6419307
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8333619   0.7839568   0.8858806
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0486111   0.9441437   1.1646376
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9950900   0.8421216   1.1758447
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0740741   0.7908201   1.4587832
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.9945130   0.6959830   1.4210924
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9255801   0.8934606   0.9588542
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0284825   0.8875958   1.1917319
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9265905   0.8026706   1.0696416
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.0643275   0.7941258   1.4264655
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.5926380   0.2203977   1.5935728
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0178161   0.4932886   2.1000883
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7307692   0.5280891   1.0112378
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.5857438   0.4620358   0.7425740
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8442292   0.8004921   0.8903561
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2057704   0.9275038   1.5675215
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8769926   0.6679375   1.1514791
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8307692   0.5499406   1.2550038
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6245370   0.4358176   0.8949764
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9906977   0.7616207   1.2886754
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7984791   0.4407030   1.4467087
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2972028   0.8513369   1.9765794
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9139394   0.7172442   1.1645758
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1925926   0.5722646   2.4853488
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2167235   0.6444904   2.2970338
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.5811966   0.4898099   0.6896339
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9846154   0.7855999   1.2340473
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.2400000   0.9466330   1.6242830
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1500000   0.6185672   2.1380054
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.9272727   0.4312947   1.9936127
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1247265   1.0370275   1.2198419
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9105337   0.6972343   1.1890859
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8605261   0.6735528   1.0994019
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.3943249   1.1592184   1.6771144
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7984465   0.6593757   0.9668491
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9224829   0.7923838   1.0739426
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8569405   0.6813505   1.0777815
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0984326   0.9201139   1.3113096
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2241946   1.0076572   1.4872642
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7845036   0.4858209   1.2668166
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9686099   0.6547655   1.4328871
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9069874   0.8565566   0.9603874
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9555085   0.8706307   1.0486610
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.3292159   1.1411279   1.5483057
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0759284   0.7954138   1.4553706
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.2327586   0.8783347   1.7301989
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9355534   0.9028624   0.9694281
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9204793   0.7645343   1.1082330
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9834609   0.8392327   1.1524758
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.7794872   0.4955847   1.2260270
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8060264   0.3222602   2.0160058
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0808081   0.5090746   2.2946462
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.8117647   1.2238920   2.6820107
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9341792   0.7751080   1.1258958
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0888889   0.4796730   2.4718486
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.2000000   0.4713105   3.0553108
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8140105   0.7708317   0.8596080
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1623113   0.8221580   1.6431971
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.2695875   0.9423926   1.7103832
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.1785714   0.8836605   1.5719054
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7511211   0.5309736   1.0625441
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7232754   0.5359258   0.9761190
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0789661   0.6412886   1.8153571
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1274019   0.7206557   1.7637201
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7204874   0.3400944   1.5263474
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7761066   0.4080171   1.4762651
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9693487   0.8467860   1.1096508
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9187500   0.7370864   1.1451868
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.1462185   0.9004116   1.4591291
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.3177083   0.6585538   2.6366188
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.2222222   0.5271953   2.8335365
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.0689064   0.9912659   1.1526281
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8780976   0.6602011   1.1679099
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8861957   0.6871678   1.1428690
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.3019608   1.0964999   1.5459207
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8512281   0.6813702   1.0634298
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1260827   0.9423644   1.3456178
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7839368   0.6060849   1.0139782
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0150570   0.8363287   1.2319807
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.5727273   0.4998826   0.6561872
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1311475   0.9222407   1.3873761
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6848739   0.4378807   1.0711875
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0034402   0.7202231   1.3980282
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9896194   0.9259090   1.0577135
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0243232   0.9348526   1.1223567
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.2139456   1.0550567   1.3967627
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9144385   0.6685055   1.2508466
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.1093991   0.8094847   1.5204318
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8846288   0.8521504   0.9183450
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0256615   0.8511646   1.2359319
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1598092   0.9855977   1.3648138
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.5955883   0.2294281   1.5461289
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.6254826   0.2877621   1.3595555
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7936508   0.5535387   1.1379179
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.4145078   1.1450089   1.7474382
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.6117647   0.2428857   1.5408730
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.6823529   0.7726317   3.6632089
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8181144   0.7728201   0.8660634
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1050831   0.7672072   1.5917587
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.4549550   1.0675637   1.9829206
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.7179487   1.2536281   2.3542451
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8413284   0.5616521   1.2602703
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.3075356   0.9465174   1.8062525
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8384043   0.4632208   1.5174659
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1887634   0.7541719   1.8737882
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2673267   0.9219336   1.7421179
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6285217   0.3368809   1.1726388
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9680357   0.6136417   1.5271014
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           1.0401987   0.8944739   1.2096646
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8723404   0.7012956   1.0851028
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.5617716   1.2185780   2.0016203
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9751462   0.5125500   1.8552532
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.2888889   0.6632210   2.5047979
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9289390   0.8533210   1.0112581
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8645407   0.6546111   1.1417935
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0519997   0.8250233   1.3414207


### Parameter: PAR


hhwealth_quart   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0230533   -0.0834507    0.0373441
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0070303   -0.0496280    0.0355675
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0087933   -0.0367666    0.0191799
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0412968   -0.0689703   -0.0136234
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0141419   -0.0434525    0.0717364
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0392598   -0.0264451    0.1049647
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0537323   -0.0847909   -0.0226738
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0105030   -0.0571218    0.0361158
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0221063   -0.0846937    0.0404811
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0491291   -0.0597076    0.1579659
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0012748   -0.0119154    0.0093657
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0114694   -0.0673337    0.0443948
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0138871   -0.0539872    0.0262129
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0229453   -0.0182404    0.0641309
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0537255   -0.1103377    0.0028867
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0394053   -0.0149052    0.0937158
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0327576   -0.1931367    0.1276216
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0074346   -0.0163450    0.0014758
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0089422   -0.0550750    0.0371907
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0022883   -0.0605940    0.0651707
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0057833   -0.0276161    0.0391827
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0033040   -0.0131843    0.0197924
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0208846   -0.0386261    0.0803953
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0470430   -0.0921933   -0.0018927
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0248447   -0.0416236    0.0913130
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0501663   -0.1684121    0.0680794
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0100653   -0.0004594    0.0205900
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0260830   -0.0829883    0.0308223
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0361713   -0.0946702    0.0223277
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0120527   -0.0602398    0.0361343
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0225442   -0.0072339    0.0523224
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0425408   -0.0721608   -0.0129207
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0338828   -0.0999860    0.0322204
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0092480   -0.0422336    0.0607295
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0689814   -0.1086493   -0.0293136
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0200000   -0.0285724    0.0685724
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0013720   -0.0573603    0.0546164
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0188235   -0.1013538    0.1390009
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0182663   -0.0293704   -0.0071621
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0142602   -0.0686671    0.0401466
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0100733   -0.0464020    0.0665486
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0055642   -0.0376645    0.0265362
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0460526   -0.1199832    0.0278780
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1463237   -0.2016238   -0.0910235
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0273323   -0.0386273   -0.0160372
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0008070   -0.0526417    0.0542557
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0183333   -0.0725974    0.0359308
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0279067   -0.0797671    0.0239538
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0065138   -0.0131593    0.0261868
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0270373   -0.1093462    0.0552716
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0137502   -0.0280845    0.0555849
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1647059   -0.2397844   -0.0896273
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0032468   -0.0543964    0.0479029
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0357143   -0.0207618    0.0921904
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0169935   -0.1166947    0.1506816
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0151586    0.0019310    0.0283862
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0326737   -0.0897882    0.0244409
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0726126    0.0146599    0.1305654
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0434640   -0.0954449    0.0085169
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0025351   -0.0264487    0.0315190
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0578947   -0.0100044    0.1257939
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0187247   -0.0902722    0.0528227
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0446056   -0.0825549   -0.0066563
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0218182   -0.0696857    0.0260493
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0785897    0.0235349    0.1336446
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0455916   -0.0665364    0.1577196
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0147331   -0.0255853   -0.0038808
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0154821   -0.0758222    0.0448581
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0219015   -0.0635789    0.0197759
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0009661   -0.0467755    0.0448433
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.1120130    0.0079057    0.2161202
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0188294   -0.0738294    0.0361706
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0334821   -0.1912691    0.2582334
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0292363   -0.0397688   -0.0187039
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0383550   -0.0112964    0.0880064
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0211128   -0.0345431    0.0767686
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0547087   -0.1070310   -0.0023864
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0048270   -0.0139885    0.0236424
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0282120   -0.0928744    0.0364504
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0125392   -0.0817247    0.0566463
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0190058   -0.0710624    0.0330507
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0231260   -0.0306760    0.0769280
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0530303   -0.0768741    0.1829348
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0077756   -0.0045575    0.0201088
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0306811   -0.0914233    0.0300612
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0601758    0.0060531    0.1142986
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0082662   -0.0376825    0.0542148
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0098538   -0.0377995    0.0180919
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0318428   -0.0605813   -0.0031043
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0331263   -0.0323085    0.0985611
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0192345   -0.0752679    0.0367988
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0046664   -0.0438452    0.0345123
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0111944   -0.0359938    0.0583826
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0543248    0.0052562    0.1033935
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0070502   -0.1514825    0.1373821
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0245435   -0.0351314   -0.0139555
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0345668   -0.0148190    0.0839525
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0202141   -0.0523644    0.0119362
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0465672   -0.1332924    0.0401580
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0707339    0.0171972    0.1242705
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0096154   -0.2472647    0.2280340
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0248177   -0.0346345   -0.0150009
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0456323    0.0006066    0.0906581
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0634071    0.0086528    0.1181614
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0177515   -0.0226996    0.0582026
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0027713   -0.0152266    0.0207693
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0380639   -0.0253156    0.1014434
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0187682   -0.0716604    0.0341239
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0138651   -0.0534294    0.0811596
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0306742   -0.0819903    0.0206419
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0645204    0.0161581    0.1128828
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0206897   -0.1310884    0.1724677
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0071694   -0.0182480    0.0039092
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0041193   -0.0490590    0.0408204


### Parameter: PAF


hhwealth_quart   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Wealth Q4        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0491803   -0.1937576    0.0778871
Wealth Q4        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0317335   -0.2430813    0.1436811
Wealth Q4        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0419156   -0.1841362    0.0832236
Wealth Q4        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0943131   -0.1674246   -0.0257802
Wealth Q4        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0524823   -0.1734546    0.2349173
Wealth Q4        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1404293   -0.1295350    0.3458709
Wealth Q4        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0734066   -0.1200169   -0.0287360
Wealth Q4        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0231199   -0.1336963    0.0766714
Wealth Q4        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0470650   -0.1964491    0.0836675
Wealth Q4        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0881076   -0.1299932    0.2641126
Wealth Q4        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0040724   -0.0387888    0.0294837
Wealth Q4        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0276997   -0.1719162    0.0987694
Wealth Q4        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.1220605   -0.5976989    0.2119794
Wealth Q4        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.2431319   -0.3403880    0.5726242
Wealth Q4        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.2066365   -0.5064863    0.0335314
Wealth Q4        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1307798   -0.0413332    0.2744458
Wealth Q4        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1039698   -0.7507076    0.3038534
Wealth Q4        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0394981   -0.0899282    0.0085986
Wealth Q4        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0436034   -0.2950030    0.1589919
Wealth Q4        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0086957   -0.2588936    0.2194064
Wealth Q4        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0534291   -0.3112098    0.3166643
Wealth Q4        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0635673   -0.3135974    0.3324391
Wealth Q4        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1320646   -0.3378733    0.4369333
Wealth Q4        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0877193   -0.1835500    0.0003521
Wealth Q4        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0869565   -0.1530506    0.2770062
Wealth Q4        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1642702   -0.6236847    0.1651551
Wealth Q4        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0693009   -0.0007863    0.1344798
Wealth Q4        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1089645   -0.3740019    0.1049486
Wealth Q1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0977394   -0.2866122    0.0634072
Wealth Q1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0241441   -0.1253783    0.0679836
Wealth Q1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0746669   -0.0293739    0.1681920
Wealth Q1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0623932   -0.1099304   -0.0168919
Wealth Q1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0556391   -0.1767397    0.0529988
Wealth Q1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0504909   -0.2765221    0.2937314
Wealth Q1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0835807   -0.1370212   -0.0326519
Wealth Q1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0400000   -0.0579541    0.1288847
Wealth Q1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0033886   -0.1521937    0.1261985
Wealth Q1        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0336842   -0.2072501    0.2265346
Wealth Q1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0395412   -0.0648457   -0.0148380
Wealth Q1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0250784   -0.1253287    0.0662411
Wealth Q1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0448980   -0.2286050    0.2575157
Wealth Q1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0983982   -0.8404759    0.3444747
Wealth Q1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1228070   -0.3700881    0.0798434
Wealth Q1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.5604472   -0.9338118   -0.2591688
Wealth Q1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0866384   -0.1263868   -0.0482927
Wealth Q1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0026482   -0.1891291    0.1634965
Wealth Q1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0964912   -0.4606631    0.1768855
Wealth Q1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1099625   -0.3342174    0.0765997
Wealth Q1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0835714   -0.2064711    0.3038861
Wealth Q1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0682692   -0.3152424    0.1323279
Wealth Q1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1365370   -0.3951753    0.4656095
Wealth Q1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.2745098   -0.4467850   -0.1227482
Wealth Q1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0131579   -0.2465330    0.1765249
Wealth Q1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1463415   -0.0771910    0.3234878
Wealth Q1        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0546218   -0.4893434    0.3999102
Wealth Q1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0619369    0.0097076    0.1114116
Wealth Q1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0960934   -0.2784982    0.0602876
Wealth Q2        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1628283    0.0445027    0.2665009
Wealth Q2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0987973   -0.2236823    0.0133424
Wealth Q2        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0095222   -0.1055515    0.1126182
Wealth Q2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1447368   -0.0142262    0.2787850
Wealth Q2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0778464   -0.4202779    0.1820243
Wealth Q2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0537891   -0.1031691   -0.0066194
Wealth Q2        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0389610   -0.1316875    0.0461678
Wealth Q2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1739007    0.0655813    0.2696636
Wealth Q2        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0795853   -0.1389408    0.2561833
Wealth Q2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0338648   -0.0599909   -0.0083827
Wealth Q2        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0299424   -0.1532614    0.0801901
Wealth Q2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.1996904   -0.7579972    0.1813087
Wealth Q2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0116191   -0.7439723    0.4131941
Wealth Q2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.3301435    0.0747624    0.5150352
Wealth Q2        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0582456   -0.2545766    0.1073612
Wealth Q2        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0857143   -0.7156734    0.5127753
Wealth Q2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1051168   -0.1479468   -0.0638848
Wealth Q2        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1492454   -0.0676094    0.3220522
Wealth Q2        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0757576   -0.1293422    0.2436092
Wealth Q2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2557104   -0.5248455   -0.0340776
Wealth Q2        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0669740   -0.2339108    0.2944890
Wealth Q2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2294574   -0.8819940    0.1968277
Wealth Q2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0193939   -0.1345394    0.0840653
Wealth Q2        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0734463   -0.3127642    0.1222437
Wealth Q2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0823864   -0.1119723    0.2427736
Wealth Q2        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1794872   -0.4008170    0.5193938
Wealth Q2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0339661   -0.0195380    0.0846623
Wealth Q2        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0961402   -0.3031812    0.0780075
Wealth Q3        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1427247    0.0240285    0.2469853
Wealth Q3        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0228493   -0.1127870    0.1419530
Wealth Q3        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0427255   -0.1711928    0.0716504
Wealth Q3        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0549708   -0.1090726   -0.0035081
Wealth Q3        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0903955   -0.0877157    0.2393414
Wealth Q3        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0806703   -0.3430642    0.1304599
Wealth Q3        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0060756   -0.0587276    0.0439579
Wealth Q3        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0196886   -0.0651471    0.0977674
Wealth Q3        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1306606    0.0212499    0.2278406
Wealth Q3        0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0116713   -0.2814023    0.2012822
Wealth Q3        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0618663   -0.0906293   -0.0338619
Wealth Q3        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0737009   -0.0374012    0.1729044
Wealth Q3        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.3753086   -1.1039886    0.1010057
Wealth Q3        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1485714   -0.5170223    0.1303909
Wealth Q3        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2564103    0.0954965    0.3886970
Wealth Q3        0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0256410   -0.9025936    0.4471024
Wealth Q3        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1004839   -0.1452735   -0.0574459
Wealth Q3        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1920691   -0.0210982    0.3607350
Wealth Q3        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.2786070    0.0732443    0.4384627
Wealth Q3        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0962567   -0.1517295    0.2908474
Wealth Q3        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0425464   -0.2776068    0.2824730
Wealth Q3        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1687500   -0.1026222    0.3733334
Wealth Q3        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1165094   -0.4975700    0.1675894
Wealth Q3        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0245450   -0.0988905    0.1341152
Wealth Q3        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1170732   -0.3591011    0.0818545
Wealth Q3        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2821188    0.1086882    0.4218035
Wealth Q3        6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0625000   -0.5288355    0.4251139
Wealth Q3        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0376394   -0.0998306    0.0210351
Wealth Q3        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0143136   -0.1833896    0.1306057
