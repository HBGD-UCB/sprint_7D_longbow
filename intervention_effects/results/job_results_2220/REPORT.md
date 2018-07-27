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

* hhwealth_quart
* agecat
* studyid
* country

## Data Summary

hhwealth_quart   agecat      studyid                     country                        tr          stunted   n_cell      n
---------------  ----------  --------------------------  -----------------------------  ---------  --------  -------  -----
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       60    315
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       22    315
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       50    315
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       19    315
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      123    315
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       41    315
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       30    269
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       24    269
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       44    269
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       26    269
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       80    269
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       65    269
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       29    267
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       35    267
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       37    267
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       33    267
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       59    267
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       74    267
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       37    336
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       34    336
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       60    336
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       38    336
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       95    336
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       72    336
Wealth Q3        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       32    167
Wealth Q3        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6    167
Wealth Q3        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       41    167
Wealth Q3        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        4    167
Wealth Q3        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       74    167
Wealth Q3        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       10    167
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       37    213
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        7    213
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       52    213
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       15    213
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       84    213
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       18    213
Wealth Q4        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       31    147
Wealth Q4        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6    147
Wealth Q4        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       37    147
Wealth Q4        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        3    147
Wealth Q4        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       68    147
Wealth Q4        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        2    147
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       32    155
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       10    155
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       29    155
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        7    155
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       65    155
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       12    155
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      119    578
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       66    578
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       75    578
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       45    578
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      178    578
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       95    578
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      130    576
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       58    576
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       97    576
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       44    576
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      158    576
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       89    576
Wealth Q1        6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        6     21
Wealth Q1        6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1     21
Wealth Q1        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        3     21
Wealth Q1        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        3     21
Wealth Q1        6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        6     21
Wealth Q1        6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        2     21
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      136    548
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       50    548
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       81    548
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       30    548
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      181    548
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       70    548
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      142    561
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       58    561
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      101    561
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       27    561
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      167    561
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       66    561
Wealth Q2        6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        5     13
Wealth Q2        6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0     13
Wealth Q2        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        1     13
Wealth Q2        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        0     13
Wealth Q2        6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        6     13
Wealth Q2        6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        1     13
Wealth Q3        6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        8     27
Wealth Q3        6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        1     27
Wealth Q3        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        4     27
Wealth Q3        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        0     27
Wealth Q3        6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       11     27
Wealth Q3        6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        3     27
Wealth Q4        6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        4     13
Wealth Q4        6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        4     13
Wealth Q4        6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        5     13
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       27     61
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       10     61
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       19     61
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        5     61
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       31     62
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       11     62
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       13     62
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        7     62
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       28     70
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       23     70
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       12     70
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        7     70
Wealth Q2        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       38     74
Wealth Q2        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       11     74
Wealth Q2        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       24     74
Wealth Q2        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1     74
Wealth Q3        24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1      1
Wealth Q1        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1      2
Wealth Q1        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      2
Wealth Q2        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        1      2
Wealth Q2        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      2
Wealth Q4        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        2     13
Wealth Q4        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1     13
Wealth Q4        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        9     13
Wealth Q4        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        1     13
Wealth Q1        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        5     16
Wealth Q1        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0     16
Wealth Q1        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        7     16
Wealth Q1        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        4     16
Wealth Q3        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        1     13
Wealth Q3        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1     13
Wealth Q3        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        9     13
Wealth Q3        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        2     13
Wealth Q2        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        2      3
Wealth Q2        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        1      3
Wealth Q3        24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1      1
Wealth Q4        24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1      1
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      118    432
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       10    432
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       98    432
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        9    432
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      175    432
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       22    432
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       81    419
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       17    419
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       87    419
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       23    419
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      185    419
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       26    419
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      113    506
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       10    506
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      106    506
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        9    506
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      245    506
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       23    506
Wealth Q2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       66    344
Wealth Q2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       10    344
Wealth Q2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       86    344
Wealth Q2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        4    344
Wealth Q2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      156    344
Wealth Q2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       22    344
Wealth Q1        24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        2      2
Wealth Q4        24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      1
Wealth Q2        24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1      1
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Control           0      100    327
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       65    327
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      111    327
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       51    327
Wealth Q4        Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      140    293
Wealth Q4        Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        4    293
Wealth Q4        Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      138    293
Wealth Q4        Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       11    293
Wealth Q3        24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        2     47
Wealth Q3        24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       23     47
Wealth Q3        24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        2     47
Wealth Q3        24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       20     47
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       45    208
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       45    208
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       73    208
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       45    208
Wealth Q3        Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       78    205
Wealth Q3        Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        4    205
Wealth Q3        Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      117    205
Wealth Q3        Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        6    205
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       58    161
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        6    161
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       91    161
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        6    161
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       41    193
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       43    193
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       62    193
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       47    193
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       21    141
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       47    141
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       15    141
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       58    141
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        5     61
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       27     61
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       11     61
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       18     61
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       44    168
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       45    168
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       47    168
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       32    168
Wealth Q1        Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       88    157
Wealth Q1        Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        3    157
Wealth Q1        Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       59    157
Wealth Q1        Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        7    157
Wealth Q1        24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        4     62
Wealth Q1        24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       27     62
Wealth Q1        24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       11     62
Wealth Q1        24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       20     62
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       35    350
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       15    350
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      218    350
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       82    350
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       43    349
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       18    349
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      195    349
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       93    349
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       14    185
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       20    185
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       74    185
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       77    185
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        9    149
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       12    149
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       68    149
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       60    149
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       35    350
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       20    350
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      209    350
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       86    350
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       14    191
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       14    191
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       72    191
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       91    191
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       48    350
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       23    350
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      196    350
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       83    350
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       22    199
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       14    199
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       90    199
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       73    199
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       39    115
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       16    115
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       46    115
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       14    115
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       52    187
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       15    187
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       85    187
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       35    187
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       43    177
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       14    177
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       95    177
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       25    177
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       59    251
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       17    251
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      137    251
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       38    251
Wealth Q1        Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      1
Wealth Q1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        0     14
Wealth Q1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1     14
Wealth Q1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       10     14
Wealth Q1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        3     14
Wealth Q2        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1     21
Wealth Q2        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        4     21
Wealth Q2        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       11     21
Wealth Q2        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        5     21
Wealth Q3        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        3     23
Wealth Q3        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1     23
Wealth Q3        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        9     23
Wealth Q3        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       10     23
Wealth Q4        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      6
Wealth Q4        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1      6
Wealth Q4        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        3      6
Wealth Q4        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      6
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Control           0       34    203
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Control           1       16    203
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       59    203
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       41    203
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Other             0       34    203
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Other             1       19    203
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Control           0       17     88
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Control           1        9     88
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       21     88
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       17     88
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Other             0       15     88
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Other             1        9     88
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Control           0       24    197
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Control           1       12    197
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       73    197
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       29    197
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Other             0       32    197
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Other             1       27    197
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Control           0       41    217
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Control           1       18    217
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       66    217
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       39    217
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Other             0       35    217
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Other             1       18    217
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Control           0       11     92
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Control           1        8     92
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       27     92
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       19     92
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Other             0       21     92
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Other             1        6     92
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Control           0       34    199
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Control           1       21    199
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       66    199
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       38    199
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Other             0       22    199
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Other             1       18    199
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Control           0       21    103
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Control           1       11    103
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       31    103
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       16    103
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Other             0       15    103
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Other             1        9    103
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Control           0       20     99
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Control           1       12     99
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       30     99
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       18     99
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Other             0       11     99
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Other             1        8     99
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1706   5346
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      914   5346
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1864   5346
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      862   5346
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1448   4140
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      591   4140
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1518   4140
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      583   4140
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1577   5202
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      998   5202
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1715   5202
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      912   5202
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1528   4194
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      558   4194
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1577   4194
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      531   4194
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1593   4895
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      851   4895
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1715   4895
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      736   4895
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1916   4732
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      452   4732
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1954   4732
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      410   4732
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1228   3690
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      572   3690
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1375   3690
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      515   3690
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1535   4151
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      560   4151
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1554   4151
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      502   4151
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        5     23
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        7     23
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        6     23
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        5     23
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0       12     39
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        8     39
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0       12     39
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        7     39
Wealth Q1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        3     18
Wealth Q1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        3     18
Wealth Q1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        2     18
Wealth Q1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       10     18
Wealth Q2        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        4     18
Wealth Q2        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        3     18
Wealth Q2        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        3     18
Wealth Q2        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        8     18
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      228   1132
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       57   1132
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      260   1132
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       57   1132
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      419   1132
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      111   1132
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      281   1261
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       61   1261
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      271   1261
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       78   1261
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      415   1261
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      155   1261
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       35    209
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       17    209
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       35    209
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       21    209
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       76    209
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       25    209
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      226   1196
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1      103   1196
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      227   1196
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      112   1196
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      372   1196
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      156   1196
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       41    219
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       12    219
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       42    219
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       22    219
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       75    219
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       27    219
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      215   1203
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       77   1203
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      245   1203
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       74   1203
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      420   1203
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      172   1203
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       53    258
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       25    258
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       33    258
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       33    258
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       57    258
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       57    258
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       36    310
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       39    310
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       53    310
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       38    310
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       80    310
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       64    310
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       30    261
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       36    261
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       49    261
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       25    261
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       76    261
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       45    261
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       31    183
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       18    183
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       36    183
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       17    183
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       60    183
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       21    183
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       45    265
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       21    265
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       49    265
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       23    265
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       88    265
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       39    265
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       48    211
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       22    211
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       40    211
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       14    211
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0       56    211
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       31    211
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       52    132
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       15    132
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       44    132
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       21    132
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       43    108
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       14    108
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       40    108
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       11    108
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       59    163
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       17    163
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       67    163
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       20    163
Wealth Q1        Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      1
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       39     85
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       16     85
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       23     85
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        7     85
Wealth Q1        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        0      6
Wealth Q1        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      6
Wealth Q1        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        4      6
Wealth Q1        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      6
Wealth Q2        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      9
Wealth Q2        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        4      9
Wealth Q2        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        4      9
Wealth Q2        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        0      9
Wealth Q3        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        3     13
Wealth Q3        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1     13
Wealth Q3        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        4     13
Wealth Q3        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     13
Wealth Q4        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1      6
Wealth Q4        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1      6
Wealth Q4        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        3      6
Wealth Q4        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      6


The following strata were considered:

* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q2, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q2, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q3, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q4, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q2, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hhwealth_quart: Wealth Q4, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hhwealth_quart: Wealth Q4, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hhwealth_quart: Wealth Q1, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* hhwealth_quart: Wealth Q4, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a0b99d86-549d-470f-aabc-8744d53959b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a0b99d86-549d-470f-aabc-8744d53959b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a0b99d86-549d-470f-aabc-8744d53959b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a0b99d86-549d-470f-aabc-8744d53959b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


hhwealth_quart   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2673031   0.2565114   0.2780948
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2441634   0.2337062   0.2546207
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3673469   0.2314275   0.5032664
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3207547   0.1788510   0.4626584
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2592593   0.1621314   0.3563872
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2909091   0.2127805   0.3690377
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2333333   0.1795991   0.2870676
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2702703   0.1827540   0.3577865
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2083333   0.1438773   0.2727894
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1734694   0.0984118   0.2485270
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2090909   0.1330055   0.2851763
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1232227   0.0788194   0.1676261
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3939394   0.3562621   0.4316167
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3148148   0.2793290   0.3503006
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3239437   0.3018302   0.3460571
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2974910   0.2546691   0.3403130
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2909091   0.2332513   0.3485668
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2333333   0.1772526   0.2894141
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3050847   0.1873238   0.4228457
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3714286   0.2787944   0.4640628
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3396226   0.2118295   0.4674158
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1908784   0.1808060   0.2009508
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1734349   0.1638117   0.1830580
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2000000   0.1419993   0.2580007
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1798107   0.1267735   0.2328480
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2094340   0.1689920   0.2498759
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2682927   0.1722411   0.3643443
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2753623   0.1697957   0.3809290
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2500000   0.1836231   0.3163769
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2900000   0.2270568   0.3529432
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2109375   0.1401978   0.2816772
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2832618   0.2253547   0.3411689
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6911765   0.6380295   0.7443235
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7945205   0.7463621   0.8426790
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3888889   0.3600078   0.4177699
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4478528   0.3851657   0.5105398
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3437500   0.1783835   0.5091165
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3404255   0.2042934   0.4765577
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3750000   0.1803669   0.5696331
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4000000   0.2887728   0.5112272
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3684211   0.2623223   0.4745198
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3181818   0.1975215   0.4388422
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3194444   0.1936761   0.4452127
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3070866   0.2228646   0.3913086
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3875728   0.3759908   0.3991548
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3471641   0.3354789   0.3588492
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3269231   0.1946919   0.4591542
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3750000   0.2394465   0.5105535
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2475248   0.1607607   0.3342888
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2456140   0.1863617   0.3048663
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2156863   0.1621331   0.2692395
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1590909   0.0507629   0.2674189
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2238806   0.1238334   0.3239278
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1764706   0.1023147   0.2506265
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.4509804   0.3507655   0.5511953
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.3684211   0.3091234   0.4277187
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0813008   0.0329550   0.1296467
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0782609   0.0291243   0.1273975
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0858209   0.0522531   0.1193887
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5056180   0.4504264   0.5608096
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4050633   0.3540074   0.4561192
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3000000   0.2818283   0.3181717
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2733333   0.2300445   0.3166222
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2456140   0.2095258   0.2817023
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2083333   0.1589311   0.2577355
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3200000   0.1903821   0.4496179
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4100000   0.3133641   0.5066359
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3584906   0.2290642   0.4879170
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3177778   0.3043755   0.3311801
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2724868   0.2598682   0.2851053
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3130699   0.2528652   0.3732746
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3303835   0.2728972   0.3878698
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2954545   0.2464120   0.3444971
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5468750   0.4246877   0.6690623
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4714286   0.3542701   0.5885870
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.5563910   0.4717994   0.6409826
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3567568   0.2876673   0.4258462
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3750000   0.2883060   0.4616940
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3479853   0.2914328   0.4045379
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5714286   0.5414972   0.6013599
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4687500   0.3942341   0.5432659
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3461538   0.1622395   0.5300681
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4473684   0.2883716   0.6063653
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3750000   0.1802041   0.5697959
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5200000   0.3956803   0.6443197
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4175824   0.3115306   0.5236342
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4444444   0.3548150   0.5340739
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0937500   0.0652743   0.1222257
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0618557   0.0328832   0.0908281
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3488550   0.3377330   0.3599769
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3162142   0.3049652   0.3274633
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2264151   0.1015551   0.3512751
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3437500   0.2226421   0.4648579
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2647059   0.1711820   0.3582297
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2238806   0.1730254   0.2747358
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3230769   0.2668810   0.3792728
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2380952   0.1088678   0.3673226
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1944444   0.0647421   0.3241468
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1558442   0.0745677   0.2371206
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5119048   0.4652597   0.5585498
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4311927   0.3785485   0.4838368
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3636364   0.3436300   0.3836428
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2915254   0.2477518   0.3352991
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2238806   0.1880230   0.2597382
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2916667   0.2393399   0.3439934
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3818182   0.2530979   0.5105385
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3653846   0.2726043   0.4581649
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4500000   0.2954391   0.6045609
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2898480   0.2780588   0.3016371
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2774869   0.2657101   0.2892638
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2636986   0.2034819   0.3239154
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2319749   0.1836642   0.2802856
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2905405   0.2487808   0.3323002
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4444444   0.3116645   0.5772244
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3714286   0.2580260   0.4848311
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4482759   0.3671785   0.5293732
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3085106   0.2424300   0.3745913
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3120567   0.2355131   0.3886003
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3603239   0.3003995   0.4202483
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8437500   0.7772074   0.9102926
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6206897   0.5360369   0.7053424
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5000000   0.4727790   0.5272210
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5582822   0.4930522   0.6235123
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3750000   0.2064094   0.5435906
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3750000   0.2373464   0.5126536
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.4210526   0.1979197   0.6441855
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3205128   0.2194189   0.4216067
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.5000000   0.3713419   0.6286581
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.5000000   0.3996904   0.6003096
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3481997   0.3373872   0.3590121
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3002856   0.2900661   0.3105051
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3142857   0.2107619   0.4178095
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2592593   0.1330629   0.3854557
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3563218   0.2435215   0.4691222
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2236842   0.1798674   0.2675010
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2298851   0.1825493   0.2772208
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2619048   0.1710935   0.3527161
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.3500000   0.2820181   0.4179819
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0781250   0.0315795   0.1246705
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0841121   0.0314607   0.1367636
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1116751   0.0676417   0.1557085
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5000000   0.4551954   0.5448046
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3813559   0.3315182   0.4311936
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2950820   0.2750487   0.3151152
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3229167   0.2782886   0.3675448
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2236842   0.1952602   0.2521082
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2171429   0.1744678   0.2598179
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3333333   0.1789517   0.4877150
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2843137   0.1965503   0.3720771
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4576271   0.3301794   0.5850748
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2674976   0.2566525   0.2783427
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2518975   0.2416811   0.2621140
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.1783626   0.1315336   0.2251916
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2234957   0.1757468   0.2712446
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2719298   0.2288522   0.3150075
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4788732   0.3625013   0.5952451
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3877551   0.2911448   0.4843654
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4311377   0.3559151   0.5063604
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2688172   0.2050452   0.3325892
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2702703   0.1875783   0.3529622
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2788845   0.2233551   0.3344138
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5882353   0.5577498   0.6187208
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5099338   0.4446769   0.5751906
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4210526   0.1978331   0.6442722
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4130435   0.2699752   0.5561117
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2222222   0.0645479   0.3798965
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.5833333   0.4345288   0.7321379
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.4545455   0.3106533   0.5984376
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.5454545   0.4203382   0.6705709
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3378378   0.2204221   0.4552535
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3719008   0.2819451   0.4618565


### Parameter: E(Y)


hhwealth_quart   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2558420   0.2407916   0.2708924
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3060109   0.2357250   0.3762969
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2705882   0.1755826   0.3655939
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2459016   0.1369416   0.3548617
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1575179   0.1225954   0.1924404
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3547401   0.3028049   0.4066753
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3028571   0.2546496   0.3510647
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2608696   0.1802635   0.3414757
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3456221   0.2822007   0.4090436
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1821640   0.1681996   0.1961283
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.1987633   0.1706207   0.2269058
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2603175   0.2117822   0.3088527
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2691622   0.2324279   0.3058965
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7446809   0.6724520   0.8169097
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4371859   0.3680934   0.5062785
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3495146   0.2569810   0.4420482
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3846154   0.2308090   0.5384218
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3132075   0.2523471   0.3740680
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3671665   0.3506706   0.3836623
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3014354   0.2364879   0.3663829
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2314815   0.1515641   0.3113989
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1877934   0.1352215   0.2403653
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.4285714   0.3118055   0.5453374
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0830040   0.0589417   0.1070662
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4583333   0.3827638   0.5339028
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2771429   0.2301844   0.3241013
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2203390   0.1591053   0.2815727
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3743842   0.3076444   0.4411241
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2945799   0.2761186   0.3130413
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3102007   0.2784381   0.3419632
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.5318352   0.4718706   0.5917998
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3564014   0.3173229   0.3954798
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4832215   0.4027128   0.5637301
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3977273   0.2948836   0.5005710
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4548387   0.3946888   0.5149886
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0745342   0.0338387   0.1152296
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3322110   0.3163556   0.3480664
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2785388   0.2144783   0.3425993
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2727273   0.1964623   0.3489923
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1870968   0.1255025   0.2486910
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4663212   0.3957578   0.5368847
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3028571   0.2546496   0.3510647
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2673797   0.2037741   0.3309853
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3869347   0.3190944   0.4547750
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2835749   0.2669016   0.3002481
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2684954   0.2400699   0.2969210
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4275093   0.3682798   0.4867387
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3315972   0.2931169   0.3700775
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7377049   0.6264014   0.8490084
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5497382   0.4789955   0.6204809
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3838384   0.2875538   0.4801229
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4457364   0.3816321   0.5098408
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3242084   0.3091807   0.3392360
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3175355   0.2509916   0.3840795
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2269939   0.1624895   0.2914982
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2903226   0.1764146   0.4042305
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0949074   0.0672376   0.1225772
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4326923   0.3651988   0.5001858
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3180516   0.2691207   0.3669825
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2191235   0.1678476   0.2703995
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3451777   0.2786192   0.4117361
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2596567   0.2447459   0.2745674
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2331483   0.2062975   0.2599991
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4285714   0.3755785   0.4815644
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2737226   0.2363580   0.3110873
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5243243   0.4521646   0.5964840
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3586957   0.2601534   0.4572379
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.5217391   0.3130038   0.7304744
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4061303   0.3435552   0.4687053


### Parameter: RR


hhwealth_quart   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9134328   0.8612205   0.9688105
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8731656   0.4904248   1.5546076
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7057613   0.4168711   1.1948514
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8020833   0.5630851   1.1425231
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.7708333   0.4925602   1.2063176
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.2053476   0.6848261   2.1215062
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7103429   0.4045030   1.2474247
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7991453   0.6893262   0.9264601
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9183419   0.7830996   1.0769408
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.8020833   0.5873881   1.0952515
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2174603   0.7689041   1.9276912
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1132075   0.6493345   1.9084634
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9086145   0.8416411   0.9809172
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8990536   0.5944514   1.3597368
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0471698   0.7391044   1.4836396
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0263505   0.6074197   1.7342131
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9318182   0.5967022   1.4551399
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.7273707   0.4878310   1.0845316
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9767648   0.7249369   1.3160726
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           1.1495191   1.0423029   1.2677640
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1516214   0.9828654   1.3493525
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9903288   0.5297838   1.8512290
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0909091   0.5375860   2.2137532
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9210526   0.6171921   1.3745119
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0039683   0.5811408   1.7344373
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9651294   0.6044509   1.5410261
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8957389   0.8563183   0.9369743
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1470588   0.6668045   1.9732079
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7571345   0.4433547   1.2929890
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8781513   0.6211859   1.2414152
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.4072495   0.6232384   3.1775176
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1092437   0.4983428   2.4690264
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.8169336   0.6209042   1.0748527
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9626087   0.4054035   2.2856626
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0555970   0.5180657   2.1508566
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8011252   0.6780879   0.9464872
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9111111   0.7690091   1.0794715
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.8482143   0.6417326   1.1211328
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2812500   0.8018740   2.0472064
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1202830   0.6511482   1.9274168
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8574759   0.8054161   0.9129006
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0553026   0.8141982   1.3678039
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9437335   0.7320196   1.2166789
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8620408   0.6171518   1.2041030
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0174006   0.7764685   1.3330922
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0511364   0.7774719   1.4211287
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9754135   0.7575180   1.2559852
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8203125   0.6938881   0.9697710
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2923977   0.6820041   2.4490935
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0833333   0.5152996   2.2775314
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8030431   0.5665708   1.1382131
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8547009   0.6251860   1.1684740
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           0.6597938   0.3775392   1.1530666
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9064347   0.8641508   0.9507876
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.5182292   0.7891093   2.9210401
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1691176   0.6073592   2.2504574
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.4430769   1.0840205   1.9210623
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8166667   0.3455972   1.9298319
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.6545455   0.3083490   1.3894312
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8423299   0.7233023   0.9809448
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8016949   0.6832168   0.9407186
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.3027778   1.0242918   1.6569789
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9569597   0.6274761   1.4594529
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1785714   0.7283526   1.9070854
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9573533   0.9026973   1.0153187
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8796971   0.6456493   1.1985871
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1017901   0.8412406   1.4430372
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8357143   0.5451822   1.2810733
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0086207   0.7112890   1.4302424
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0114943   0.7303614   1.4008416
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1679464   0.8905384   1.5317685
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7356322   0.6284049   0.8611561
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1165644   0.9815275   1.2701795
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0000000   0.5596752   1.7867506
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.1228070   0.5603927   2.2496647
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.5600000   1.0382102   2.3440341
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.5600000   1.0732050   2.2676004
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8623948   0.8235611   0.9030597
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.8249158   0.4582906   1.4848353
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1337513   0.7179699   1.7903146
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.0277214   0.7734781   1.3655349
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           1.3363636   0.8980957   1.9885050
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0766355   0.4536953   2.5548954
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.4294416   0.6996616   2.9204168
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7627119   0.6509440   0.8936703
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0943287   0.9381581   1.2764963
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9707563   0.7681944   1.2267309
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8529412   0.4888732   1.4881337
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.3728814   0.7997009   2.3568852
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9416815   0.8891776   0.9972856
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.2530415   0.8931933   1.7578647
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.5245902   1.1219279   2.0717687
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8097239   0.5717221   1.1468032
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9003170   0.6675323   1.2142795
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           1.0054054   0.6826546   1.4807488
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0374502   0.7611301   1.4140853
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8668874   0.7550939   0.9952322
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9809783   0.5207551   1.8479288
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.5277778   0.2176653   1.2797143
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.7792208   0.5189161   1.1701025
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.6193694   0.4084285   0.9392548
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.6818182   0.4885922   0.9514601


### Parameter: PAR


hhwealth_quart   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0114611   -0.0219638   -0.0009585
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0613360   -0.1774841    0.0548120
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0203209   -0.0743763    0.0337346
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0243686   -0.0892778    0.0405405
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0159515   -0.0808970    0.0489940
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0391993   -0.0749440   -0.0034546
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0210865   -0.0639230    0.0217500
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0300395   -0.0863683    0.0262892
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0405374   -0.0611926    0.1422674
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0087144   -0.0183661    0.0009373
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0012367   -0.0508598    0.0483863
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0079752   -0.0903054    0.0743549
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0208378   -0.0707017    0.0290261
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0535044    0.0045921    0.1024166
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0482970   -0.0144697    0.1110638
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0057646   -0.1317738    0.1433030
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0153846   -0.1216665    0.0908973
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0049743   -0.1098927    0.0999442
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0204063   -0.0321603   -0.0086524
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0254877   -0.1395956    0.0886202
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0141326   -0.0677605    0.0394954
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0287025   -0.0695345    0.1269396
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0224090   -0.0823360    0.0375181
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0017031   -0.0404867    0.0438930
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0472846   -0.0989048    0.0043355
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0228571   -0.0661570    0.0204428
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0252751   -0.0747442    0.0241941
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0543842   -0.0595400    0.1683085
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0231978   -0.0359453   -0.0104504
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0028692   -0.0542562    0.0485177
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0150398   -0.1216614    0.0915818
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0003554   -0.0573192    0.0566084
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0882071   -0.1629450   -0.0134692
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0515734   -0.1046767    0.2078236
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0651613   -0.1731130    0.0427905
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0192158   -0.0482891    0.0098574
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0166440   -0.0279743   -0.0053136
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0521237   -0.0580517    0.1622991
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0488467   -0.0079873    0.1056807
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0509985   -0.1579723    0.0559754
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0455835   -0.0985311    0.0073641
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0607792   -0.1046394   -0.0169191
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0434991   -0.0090357    0.0960339
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0051165   -0.1044852    0.1147182
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0062731   -0.0180655    0.0055193
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0047968   -0.0469166    0.0565102
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0169352   -0.1355109    0.1016406
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0230866   -0.0316577    0.0778308
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1060451   -0.1952671   -0.0168231
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0497382   -0.0155577    0.1150341
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0088384   -0.1301550    0.1478318
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1252236    0.0356226    0.2148246
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0239913   -0.0344454   -0.0135372
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0032498   -0.0863828    0.0928825
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0033097   -0.0440285    0.0506478
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0284178   -0.0403450    0.0971807
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0167824   -0.0238163    0.0573812
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0673077   -0.1177846   -0.0168308
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0229696   -0.0216723    0.0676115
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0045607   -0.0472374    0.0381160
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0118443   -0.1279874    0.1516761
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0078410   -0.0180983    0.0024164
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0547857    0.0132825    0.0962890
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0503018   -0.1533910    0.0527874
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0049054   -0.0470779    0.0568887
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0639110   -0.1293148    0.0014928
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0623570   -0.2597319    0.1350179
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0615942   -0.2079760    0.0847876
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1393243   -0.2481495   -0.0304991


### Parameter: PAF


hhwealth_quart   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Wealth Q4        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0447977   -0.0886216   -0.0027380
Wealth Q4        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.2004373   -0.6505068    0.1269047
Wealth Q4        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0750988   -0.3141608    0.1204749
Wealth Q4        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0990991   -0.4339000    0.1575293
Wealth Q4        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1012678   -0.6008378    0.2424025
Wealth Q4        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1105016   -0.2289100   -0.0035021
Wealth Q4        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0696253   -0.2322348    0.0715258
Wealth Q4        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1151515   -0.3855815    0.1024975
Wealth Q4        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1172881   -0.2319911    0.3675440
Wealth Q4        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0478382   -0.1049255    0.0062997
Wealth Q4        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0062222   -0.2895398    0.2148493
Wealth Q4        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0306365   -0.4007808    0.2417003
Wealth Q4        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0774172   -0.2794796    0.0927344
Wealth Q4        24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0718487    0.0086092    0.1310543
Wealth Q4        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1104725   -0.0270999    0.2296182
Wealth Q4        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0164931   -0.4673859    0.3408101
Wealth Q4        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0400000   -0.3713179    0.2112697
Wealth Q4        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0158817   -0.4127680    0.2695081
Wealth Q1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0555779   -0.0899620   -0.0222785
Wealth Q1        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0845543   -0.5377651    0.2350860
Wealth Q1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0610526   -0.3383026    0.1587607
Wealth Q1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1528409   -0.5688857    0.5425552
Wealth Q1        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0522876   -0.2107962    0.0854702
Wealth Q1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0205188   -0.6457134    0.4170410
Wealth Q1        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1031665   -0.2353719    0.0148908
Wealth Q1        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0824742   -0.2656249    0.0741724
Wealth Q1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1147099   -0.3961800    0.1100158
Wealth Q1        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1452632   -0.2202813    0.4013060
Wealth Q1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0787489   -0.1265838   -0.0329450
Wealth Q1        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0092496   -0.1892892    0.1435348
Wealth Q1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0282790   -0.2496765    0.1538948
Wealth Q1        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0009971   -0.1742949    0.1467261
Wealth Q1        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1825397   -0.3807484   -0.0127842
Wealth Q1        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1296703   -0.3671822    0.4459599
Wealth Q1        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1432624   -0.4076363    0.0714583
Wealth Q2        Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.2578125   -0.8724036    0.1550474
Wealth Q2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0501006   -0.0865690   -0.0148562
Wealth Q2        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.1871327   -0.3229368    0.5005406
Wealth Q2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.1791045   -0.0150786    0.3361406
Wealth Q2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2725780   -0.9898057    0.1861242
Wealth Q2        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0977513   -0.2301743    0.0204169
Wealth Q2        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2006861   -0.3883760   -0.0383694
Wealth Q2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1626866   -0.0208582    0.3132310
Wealth Q2        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0132231   -0.3148768    0.2594526
Wealth Q2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0221214   -0.0655324    0.0195209
Wealth Q2        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0178655   -0.1950459    0.1928442
Wealth Q2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0396135   -0.3575389    0.2038561
Wealth Q2        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0696224   -0.1110059    0.2208840
Wealth Q2        24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1437500   -0.2914787   -0.0129196
Wealth Q2        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0904762   -0.0243357    0.1924195
Wealth Q2        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0230263   -0.4153315    0.3256156
Wealth Q2        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.2809365    0.0525764    0.4542543
Wealth Q3        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0739996   -0.1092817   -0.0398397
Wealth Q3        Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0102345   -0.3160024    0.2555973
Wealth Q3        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0145804   -0.2139454    0.2000861
Wealth Q3        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0978836   -0.1459769    0.2898513
Wealth Q3        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1768293   -0.3798026    0.5089080
Wealth Q3        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1555556   -0.2996160   -0.0274640
Wealth Q3        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0722198   -0.0676776    0.1937864
Wealth Q3        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0208134   -0.2403315    0.1598536
Wealth Q3        6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0343137   -0.4689973    0.3651793
Wealth Q3        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0301974   -0.0717256    0.0097217
Wealth Q3        6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.2349823    0.0358004    0.3930177
Wealth Q3        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1173709   -0.3861329    0.0992800
Wealth Q3        24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0179211   -0.1915918    0.1905962
Wealth Q3        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1218920   -0.2711419    0.0098338
Wealth Q3        24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1738437   -0.8768624    0.2658444
Wealth Q3        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1180556   -0.4825562    0.1568291
Wealth Q3        24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.3430532   -0.6464129   -0.0955890
