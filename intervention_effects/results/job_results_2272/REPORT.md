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

* perdiar24
* agecat
* studyid
* country

## Data Summary

perdiar24   agecat        studyid                    country        tr         ever_stunted   n_cell      n
----------  ------------  -------------------------  -------------  --------  -------------  -------  -----
Q3          0-6 months    ki1000304-Vitamin-B12      INDIA          Other                 0        1      1
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Control               0       17    281
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Control               1       10    281
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                 0      157    281
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                 1       97    281
Q1          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Control               0       46     85
Q1          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Control               1       32     85
Q1          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                 0        5     85
Q1          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                 1        2     85
Q3          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                 0       22     37
Q3          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                 1       15     37
Q2          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                 0       10     13
Q2          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                 1        3     13
Q2          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control               0       33    165
Q2          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control               1        4    165
Q2          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                 0      112    165
Q2          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                 1       16    165
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control               0       54    254
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control               1        9    254
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                 0      162    254
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                 1       29    254
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control               0       45    171
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control               1        9    171
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                 0      101    171
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                 1       16    171
Q1          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control               0       10     50
Q1          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control               1        2     50
Q1          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                 0       34     50
Q1          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                 1        4     50
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control               0       59    160
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control               1       27    160
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                 0       57    160
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                 1       17    160
Q1          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control               0        6     14
Q1          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control               1        0     14
Q1          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                 0        5     14
Q1          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                 1        3     14
Q2          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control               0        5     17
Q2          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control               1        1     17
Q2          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                 0        9     17
Q2          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                 1        2     17
Q3          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control               0       20     50
Q3          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control               1        2     50
Q3          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                 0       25     50
Q3          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                 1        3     50
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control               0      309   1649
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control               1       94   1649
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                   0      350   1649
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                   1      113   1649
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                 0      586   1649
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                 1      197   1649
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control               0      306   1516
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control               1       77   1516
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                   0      315   1516
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                   1       96   1516
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                 0      529   1516
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                 1      193   1516
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control               0       82    364
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control               1       33    364
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                   0       64    364
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                   1       30    364
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                 0      105    364
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                 1       50    364
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control               0      209   1039
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control               1       71   1039
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                   0      205   1039
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                   1       75   1039
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                 0      357   1039
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                 1      122   1039
Q3          6-24 months   ki1000304-Vitamin-B12      INDIA          Control               0       27    134
Q3          6-24 months   ki1000304-Vitamin-B12      INDIA          Control               1        3    134
Q3          6-24 months   ki1000304-Vitamin-B12      INDIA          Other                 0       95    134
Q3          6-24 months   ki1000304-Vitamin-B12      INDIA          Other                 1        9    134
Q2          6-24 months   ki1000304-Vitamin-B12      INDIA          Control               0       19    111
Q2          6-24 months   ki1000304-Vitamin-B12      INDIA          Control               1        4    111
Q2          6-24 months   ki1000304-Vitamin-B12      INDIA          Other                 0       79    111
Q2          6-24 months   ki1000304-Vitamin-B12      INDIA          Other                 1        9    111
Q4          6-24 months   ki1000304-Vitamin-B12      INDIA          Control               0       32    149
Q4          6-24 months   ki1000304-Vitamin-B12      INDIA          Control               1        2    149
Q4          6-24 months   ki1000304-Vitamin-B12      INDIA          Other                 0       98    149
Q4          6-24 months   ki1000304-Vitamin-B12      INDIA          Other                 1       17    149
Q1          6-24 months   ki1000304-Vitamin-B12      INDIA          Control               0       26    110
Q1          6-24 months   ki1000304-Vitamin-B12      INDIA          Control               1        1    110
Q1          6-24 months   ki1000304-Vitamin-B12      INDIA          Other                 0       78    110
Q1          6-24 months   ki1000304-Vitamin-B12      INDIA          Other                 1        5    110
Q4          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Control               0        4    157
Q4          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Control               1        9    157
Q4          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 0       63    157
Q4          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 1       81    157
Q1          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Control               0       15     38
Q1          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Control               1       20     38
Q1          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 0        3     38
Q1          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 1        0     38
Q3          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 0        9     21
Q3          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 1       12     21
Q2          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 0        5     10
Q2          6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 1        5     10
Q2          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               0       25    130
Q2          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               1        3    130
Q2          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 0       82    130
Q2          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 1       20    130
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               0       29    131
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               1        9    131
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 0       65    131
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 1       28    131
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               0       40    202
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               1       11    202
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 0      109    202
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 1       42    202
Q1          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               0        7     34
Q1          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               1        2     34
Q1          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 0       21     34
Q1          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 1        4     34
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               0       44    111
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               1       13    111
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 0       39    111
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 1       15    111
Q1          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               0        6     12
Q1          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               1        1     12
Q1          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 0        5     12
Q1          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 1        0     12
Q2          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               0        5     14
Q2          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               1        0     14
Q2          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 0        8     14
Q2          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 1        1     14
Q3          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               0       19     40
Q3          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               1        1     40
Q3          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 0       13     40
Q3          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 1        7     40
Q4          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   0      274    317
Q4          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   1       43    317
Q2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   0      571    674
Q2          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   1      103    674
Q3          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   0      473    558
Q3          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   1       85    558
Q1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   0      428    476
Q1          6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   1       48    476
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               0      269   1569
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               1      121   1569
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   0      329   1569
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   1      122   1569
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 0      524   1569
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 1      204   1569
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               0      273   1457
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               1      117   1457
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   0      298   1457
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   1      100   1457
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 0      486   1457
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 1      183   1457
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               0       69    339
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               1       43    339
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   0       54    339
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   1       35    339
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 0       91    339
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 1       47    339
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               0      178    947
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               1       86    947
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   0      182    947
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   1       74    947
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 0      287    947
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 1      140    947
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Control               0       29    246
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Control               1       27    246
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                 0       92    246
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                 1       98    246
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Control               0       27    217
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Control               1       24    217
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                 0       83    217
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                 1       83    217
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Control               0       25    174
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Control               1       23    174
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                 0       76    174
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                 1       50    174
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Control               0       18    167
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Control               1       25    167
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                 0       74    167
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                 1       50    167
Q4          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Control               0        3    282
Q4          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Control               1       24    282
Q4          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 0       69    282
Q4          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 1      186    282
Q1          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Control               0       17     86
Q1          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Control               1       62     86
Q1          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 0        4     86
Q1          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 1        3     86
Q3          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 0        8     37
Q3          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 1       29     37
Q2          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 0        5     13
Q2          0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Other                 1        8     13
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               0       26    165
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               1       11    165
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 0       84    165
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 1       44    165
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               0       37    254
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               1       26    254
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 0      102    254
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 1       89    254
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               0       31    171
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               1       23    171
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 0       64    171
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 1       53    171
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               0        7     51
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control               1        5     51
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 0       28     51
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                 1       11     51
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               0       43    171
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               1       47    171
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 0       36    171
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 1       45    171
Q1          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               0        6     17
Q1          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               1        2     17
Q1          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 0        5     17
Q1          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 1        4     17
Q2          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               0        5     19
Q2          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               1        3     19
Q2          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 0        7     19
Q2          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 1        4     19
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               0       19     52
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control               1        5     52
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 0       13     52
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                 1       15     52
Q4          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   0      254    394
Q4          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   1      140    394
Q2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   0      540    798
Q2          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   1      258    798
Q3          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   0      455    674
Q3          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   1      219    674
Q1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   0      400    586
Q1          0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   LNS                   1      186    586
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               0      247   1954
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               1      235   1954
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   0      297   1954
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   1      261   1954
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 0      476   1954
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 1      438   1954
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               0      257   1810
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               1      212   1810
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   0      271   1810
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   1      216   1810
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 0      436   1810
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 1      418   1810
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               0       60    448
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               1       79    448
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   0       48    448
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   1       71    448
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 0       85    448
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 1      105    448
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               0      161   1228
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control               1      182   1228
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   0      158   1228
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                   1      169   1228
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 0      263   1228
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                 1      295   1228
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               0       73    317
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               1       17    317
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  0      201    317
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  1       26    317
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               0      139    674
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               1       21    674
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  0      432    674
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  1       82    674
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               0      120    558
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               1       19    558
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  0      353    558
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  1       66    558
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               0       95    476
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               1       11    476
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  0      333    476
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  1       37    476
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               0       70    394
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               1       43    394
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  0      184    394
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  1       97    394
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               0      133    798
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               1       54    798
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  0      407    798
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  1      204    798
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               0      114    674
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               1       53    674
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  0      341    674
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  1      166    674
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               0       90    586
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control               1       49    586
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  0      310    586
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                  1      137    586


The following strata were considered:

* perdiar24: Q1, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* perdiar24: Q1, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q1, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* perdiar24: Q1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q1, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* perdiar24: Q1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q1, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* perdiar24: Q1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q2, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* perdiar24: Q2, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q2, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q2, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q2, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* perdiar24: Q2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q2, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q2, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q2, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* perdiar24: Q2, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q2, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q2, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* perdiar24: Q2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q3, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* perdiar24: Q3, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q3, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q3, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q3, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q3, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* perdiar24: Q3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q3, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q3, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q3, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q3, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* perdiar24: Q3, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q3, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q3, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q3, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q3, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* perdiar24: Q3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q4, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* perdiar24: Q4, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q4, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q4, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q4, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* perdiar24: Q4, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q4, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q4, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q4, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q4, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* perdiar24: Q4, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* perdiar24: Q4, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q4, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q4, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q4, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* perdiar24: Q4, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* perdiar24: Q3, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q2, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q2, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q3, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q3, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q2, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q4, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* perdiar24: Q4, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar24: Q1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q2, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q3, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q4, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* perdiar24: Q1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* perdiar24: Q2, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr          0   1
##   Control   0   0
##   LNS     400 186
##   Other     0   0
##   Zinc      0   0
##          ever_stunted
## tr          0   1
##   Control   0   0
##   LNS     428  48
##   Other     0   0
##   Zinc      0   0
##          ever_stunted
## tr        0 1
##   Control 0 0
##   LNS     0 0
##   Other   5 8
##   Zinc    0 0
##          ever_stunted
## tr          0   1
##   Control   0   0
##   LNS     540 258
##   Other     0   0
##   Zinc      0   0
##          ever_stunted
## tr        0 1
##   Control 0 0
##   LNS     0 0
##   Other   5 5
##   Zinc    0 0
##          ever_stunted
## tr          0   1
##   Control   0   0
##   LNS     571 103
##   Other     0   0
##   Zinc      0   0
##          ever_stunted
## tr         0  1
##   Control  0  0
##   LNS      0  0
##   Other    8 29
##   Zinc     0  0
##          ever_stunted
## tr          0   1
##   Control   0   0
##   LNS     455 219
##   Other     0   0
##   Zinc      0   0
##          ever_stunted
## tr         0  1
##   Control  0  0
##   LNS      0  0
##   Other   22 15
##   Zinc     0  0
##          ever_stunted
## tr         0  1
##   Control  0  0
##   LNS      0  0
##   Other    9 12
##   Zinc     0  0
##          ever_stunted
## tr          0   1
##   Control   0   0
##   LNS     473  85
##   Other     0   0
##   Zinc      0   0
##          ever_stunted
## tr          0   1
##   Control   0   0
##   LNS     254 140
##   Other     0   0
##   Zinc      0   0
##          ever_stunted
## tr          0   1
##   Control   0   0
##   LNS     274  43
##   Other     0   0
##   Zinc      0   0
```




# Results Detail

## Results Plots
![](/tmp/3b2ed640-d9ac-4d2d-ac7d-2f31501b87c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3b2ed640-d9ac-4d2d-ac7d-2f31501b87c4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3b2ed640-d9ac-4d2d-ac7d-2f31501b87c4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3b2ed640-d9ac-4d2d-ac7d-2f31501b87c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


perdiar24   agecat        studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                0.3525180    0.2182074   0.4868286
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 NA                0.3064877    0.2109807   0.4019947
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                0.4791667    0.4400678   0.5182655
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                NA                0.3968254    0.3347875   0.4588633
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                0.4166667    0.3503807   0.4829526
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                NA                0.2820513    0.1729773   0.3911252
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.4875519    0.4259667   0.5491370
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.4677419    0.4174489   0.5180350
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.4792123    0.4395631   0.5188615
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.2332506    0.1801469   0.2863543
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.2440605    0.1963928   0.2917282
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.2515964    0.2173457   0.2858471
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                0.1037736   -0.0283981   0.2359453
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 NA                0.1000000    0.0608145   0.1391855
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.3102564    0.2513861   0.3691267
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.2705100    0.2225276   0.3184924
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.2802198    0.2389861   0.3214535
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                0.2887701    0.1362859   0.4412542
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 NA                0.3338789    0.2736921   0.3940657
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                0.5813953    0.5433144   0.6194763
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                NA                0.4032258    0.3389236   0.4675280
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                0.2972973    0.2641715   0.3304231
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                NA                0.3437500    0.2797256   0.4077744
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.4520256    0.3919419   0.5121092
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.4435318    0.3890476   0.4980160
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.4894614    0.4471184   0.5318043
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.2010444    0.1497477   0.2523411
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.2335766    0.1849967   0.2821566
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.2673130    0.2285752   0.3060508
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                0.1312500    0.0101966   0.2523034
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 NA                0.1595331    0.1144733   0.2045929
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.3000000    0.2401325   0.3598675
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.2512563    0.2000191   0.3024935
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.2735426    0.2284906   0.3185946
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                0.3173653    0.2343566   0.4003740
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 NA                0.3274162    0.2540637   0.4007687
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                0.4705882    0.4383186   0.5028578
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                NA                0.5000000    0.4416803   0.5583197
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                0.4126984    0.3824858   0.4429110
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                NA                0.4659686    0.4126659   0.5192713
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              NA                0.2083333    0.1326121   0.2840545
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                NA                0.5357143    0.4352759   0.6361526
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.5306122    0.4612823   0.5999422
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.5168196    0.4510482   0.5825909
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.5286738    0.4792169   0.5781308
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control              NA                0.1428571    0.1213829   0.1643314
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                NA                0.1518325    0.1134873   0.1901776
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.2535714    0.1886950   0.3184479
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.2678571    0.2144932   0.3212211
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.2546973    0.2086751   0.3007195
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                0.1366906    0.0782201   0.1951612
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 NA                0.1575179    0.1079221   0.2071137
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                0.2156863    0.1871159   0.2442566
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                NA                0.2781457    0.2245878   0.3317036
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.3257576    0.2549971   0.3965181
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.2890625    0.2248868   0.3532382
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.3278689    0.2789099   0.3768278
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                0.3805310    0.1772062   0.5838557
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 NA                0.3451957    0.2309650   0.4594264
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                0.4821429    0.4522901   0.5119956
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                NA                0.5157895    0.4607939   0.5707850
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                0.4259259    0.3841551   0.4676968
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                NA                0.4529915    0.3910957   0.5148872
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              NA                0.5222222    0.4677484   0.5766960
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                NA                0.5555556    0.5041464   0.6069647
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.5683453    0.4792589   0.6574317
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.5966387    0.4983206   0.6949567
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.5526316    0.4648603   0.6404029
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Control              NA                0.3703704    0.3528373   0.3879035
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                NA                0.3818898    0.3277851   0.4359944
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control              NA                0.1666667    0.1351851   0.1981482
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                NA                0.1367521    0.0940300   0.1794743
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control              NA                0.3139535    0.2610666   0.3668404
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                NA                0.2297297    0.1852630   0.2741965
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.2869565    0.1913608   0.3825522
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.3191489    0.2208379   0.4174600
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.3225806    0.2365499   0.4086114
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                0.1888889    0.0550764   0.3227014
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 NA                0.1145374    0.0635004   0.1655745
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                0.2368421    0.1974808   0.2762034
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                NA                0.3010753    0.2346344   0.3675161
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              NA                0.2280702    0.1718812   0.2842591
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                NA                0.2777778    0.2193968   0.3361587
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                0.3839286    0.2861685   0.4816886
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  NA                0.3932584    0.2834700   0.5030469
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                NA                0.3405797    0.2497715   0.4313879


### Parameter: E(Y)


perdiar24   agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   NA                   NA                0.3174061   0.2433469   0.3914654
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          NA                   NA                0.4195402   0.3460046   0.4930759
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.3137255   0.1851119   0.4423391
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.4779939   0.4500511   0.5059367
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2449970   0.2202311   0.2697629
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   NA                   NA                0.1008403   0.0634113   0.1382694
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2848948   0.2571334   0.3126562
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   NA                   NA                0.3233083   0.2579219   0.3886946
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          NA                   NA                0.4491018   0.3734356   0.5247680
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.3333333   0.2611861   0.4054806
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.4674033   0.4380938   0.4967128
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2414248   0.2152664   0.2675832
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   NA                   NA                0.1528190   0.1092255   0.1964125
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2745367   0.2448346   0.3042388
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   NA                   NA                0.3249258   0.2719693   0.3778824
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          NA                   NA                0.4930876   0.4264146   0.5597605
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.4527559   0.3914206   0.5140912
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.3846154   0.2510944   0.5181364
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.5260586   0.4915809   0.5605364
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1496063   0.1056549   0.1935577
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2579403   0.2269401   0.2889405
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   NA                   NA                0.1523297   0.1085772   0.1960823
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.2623762   0.2015586   0.3231939
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3167899   0.2824028   0.3511770
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   NA                   NA                0.3553299   0.2626943   0.4479656
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          NA                   NA                0.5081301   0.4455296   0.5707306
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.4444444   0.3697487   0.5191402
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.5380117   0.4630680   0.6129554
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.5691964   0.5158338   0.6225590
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.3807829   0.3239069   0.4376589
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1461988   0.0930891   0.1993085
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.2750000   0.2055959   0.3444041
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3104396   0.2565886   0.3642905
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   NA                   NA                0.1356467   0.0825706   0.1887228
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.2824427   0.2050554   0.3598301
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.2522523   0.1710914   0.3334131
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3687316   0.3115385   0.4259246


### Parameter: RR


perdiar24   agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 Control           0.8694243   0.5131188   1.4731455
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              Control           1.0000000   1.0000000   1.0000000
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                Control           0.8281573   0.6942654   0.9878710
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                Control           0.6769231   0.4455890   1.0283576
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           0.9593686   0.8127509   1.1324356
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                Control           0.9828949   0.8451803   1.1430489
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           1.0463444   0.7752848   1.4121734
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                Control           1.0786528   0.8273275   1.4063255
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 Control           0.9636364   0.2346334   3.9576429
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           0.8718917   0.6724479   1.1304892
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                Control           0.9031877   0.7104452   1.1482209
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 Control           1.1562102   0.6961697   1.9202532
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              Control           1.0000000   1.0000000   1.0000000
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                Control           0.6935484   0.5837216   0.8240390
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                Control           1.1562500   0.9306656   1.4365139
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           0.9812096   0.8187860   1.1758533
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                Control           1.0828178   0.9240081   1.2689223
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           1.1618163   0.8359776   1.6146571
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                Control           1.3296219   0.9915322   1.7829923
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 Control           1.2154901   0.4580524   3.2254301
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           0.8375209   0.6295670   1.1141647
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                Control           0.9118087   0.7037668   1.1813503
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 Control           1.0316698   0.6977038   1.5254936
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              Control           1.0000000   1.0000000   1.0000000
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                Control           1.0625000   0.9280416   1.2164393
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                Control           1.1290777   0.9856932   1.2933197
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                Control           2.5714286   1.7082908   3.8706789
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           0.9740061   0.8117811   1.1686500
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                Control           0.9963468   0.8485623   1.1698693
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                Control           1.0628272   0.7921793   1.4259420
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           1.0563380   0.7638707   1.4607839
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                Control           1.0044400   0.7343602   1.3738486
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 Control           1.1523678   0.7349763   1.8067950
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                Control           1.2895846   1.0208178   1.6291138
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           0.8873547   0.6505360   1.2103838
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                Control           1.0064811   0.7733742   1.3098501
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 Control           0.9071423   0.4704156   1.7493192
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              Control           1.0000000   1.0000000   1.0000000
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Other                Control           1.0697856   0.9456907   1.2101643
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                Control           1.0635451   0.8989016   1.2583450
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                Control           1.0638298   0.9253660   1.2230121
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           1.0497819   0.8362563   1.3178281
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                Control           0.9723518   0.7780631   1.2151559
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Control              Control           1.0000000   1.0000000   1.0000000
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Other                Control           1.0311024   0.8880321   1.1972225
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Other                Control           0.8205128   0.5695570   1.1820438
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Other                Control           0.7317317   0.5661252   0.9457825
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           1.1121857   0.7062331   1.7514854
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Other                Control           1.1241447   0.7337927   1.7221503
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Zinc                 Control           0.6063747   0.2710581   1.3564999
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Other                Control           1.2712067   0.9643587   1.6756902
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Other                Control           1.2179487   0.8810276   1.6837146
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     LNS                  Control           1.0243010   0.7020004   1.4945754
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Other                Control           0.8870913   0.6136995   1.2822743


### Parameter: PAR


perdiar24   agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                -0.0351118   -0.1693856    0.0991619
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                -0.0596264   -0.1219062    0.0026534
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                -0.1029412   -0.2131575    0.0072751
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0095580   -0.0615424    0.0424264
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0117463   -0.0335445    0.0570372
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                -0.0029332   -0.1164413    0.1105748
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0253616   -0.0755259    0.0248027
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                 0.0345382   -0.0791847    0.1482612
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                -0.1322936   -0.1976787   -0.0669084
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.0360360   -0.0280569    0.1001290
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0153777   -0.0356435    0.0663989
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0403804   -0.0042852    0.0850460
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                 0.0215690   -0.0784962    0.1216342
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0254633   -0.0758997    0.0249732
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                 0.0075605   -0.0871430    0.1022641
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                 0.0224993   -0.0358441    0.0808427
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.0400575   -0.0133206    0.0934355
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              NA                 0.1762821    0.0663086    0.2862555
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0045536   -0.0619733    0.0528661
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.0067492   -0.0315990    0.0450973
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0043689   -0.0494828    0.0582206
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                 0.0156391   -0.0328252    0.0641034
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.0466900   -0.0069992    0.1003791
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0089677   -0.0671821    0.0492467
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                -0.0252010   -0.2004564    0.1500544
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                 0.0259872   -0.0290367    0.0810112
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.0185185   -0.0434061    0.0804431
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              NA                 0.0157895   -0.0356805    0.0672595
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0008511   -0.0755927    0.0772949
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Control              NA                 0.0104125   -0.0436936    0.0645187
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control              NA                -0.0204678   -0.0632411    0.0223054
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control              NA                -0.0389535   -0.0838968    0.0059898
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0234830   -0.0557959    0.1027619
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                -0.0532422   -0.1576546    0.0511702
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.0456006   -0.0210289    0.1122301
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              NA                 0.0241821   -0.0343832    0.0827474
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0151970   -0.0957754    0.0653814


### Parameter: PAF


perdiar24   agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Q1          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                -0.1106212   -0.6369910    0.2464959
Q1          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                -0.1421233   -0.3254991    0.0158835
Q1          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                -0.3281250   -0.8944709    0.0689136
Q1          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0199961   -0.1346295    0.0830557
Q1          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0479449   -0.1565702    0.2162958
Q1          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                -0.0290880   -2.0605352    0.6539748
Q1          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0890208   -0.2797321    0.0732699
Q2          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                 0.1068275   -0.3381347    0.4038290
Q2          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                -0.2945736   -0.4993704   -0.1177498
Q2          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.1081081   -0.0813881    0.2643981
Q2          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0329003   -0.0827934    0.1362325
Q2          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.1672588   -0.0405549    0.3335691
Q2          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                 0.1411408   -0.8705829    0.6056635
Q2          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0927500   -0.2925088    0.0761358
Q3          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                 0.0232685   -0.3138889    0.2739079
Q3          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                 0.0456295   -0.0742908    0.1521634
Q3          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.0884748   -0.0257639    0.1899908
Q3          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              NA                 0.4583333    0.2458659    0.6109408
Q3          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0086561   -0.1238820    0.0947563
Q3          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.0451128   -0.2339924    0.2610898
Q3          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0169376   -0.2159381    0.2052131
Q3          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                 0.1026661   -0.2727403    0.3673429
Q3          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.1779504   -0.0100756    0.3309753
Q3          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0283081   -0.2291453    0.1397131
Q4          0-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                -0.0709229   -0.6960656    0.3238022
Q4          0-24 months   ki1000304-Vitamin-B12      INDIA          Control              NA                 0.0511429   -0.0574246    0.1485635
Q4          0-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.0416667   -0.1016738    0.1663569
Q4          0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              NA                 0.0293478   -0.0681508    0.1179470
Q4          0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0014953   -0.1422420    0.1271450
Q4          0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Control              NA                 0.0273451   -0.1211689    0.1561864
Q4          0-6 months    ki1017093b-PROVIDE         BANGLADESH     Control              NA                -0.1400000   -0.5292695    0.1501825
Q4          0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Control              NA                -0.1416490   -0.3466723    0.0321606
Q4          0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Control              NA                 0.0756445   -0.2188449    0.2989813
Q4          6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO   Control              NA                -0.3925065   -1.3450736    0.1731286
Q4          6-24 months   ki1017093b-PROVIDE         BANGLADESH     Control              NA                 0.1614509   -0.0632639    0.3386735
Q4          6-24 months   ki1112895-Guatemala BSC    GUATEMALA      Control              NA                 0.0958647   -0.1417835    0.2840493
Q4          6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Control              NA                -0.0412143   -0.2846594    0.1560976
