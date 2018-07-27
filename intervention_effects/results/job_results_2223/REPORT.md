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

* parity
* agecat
* studyid
* country

## Data Summary

parity   agecat      studyid                     country                        tr          stunted   n_cell      n
-------  ----------  --------------------------  -----------------------------  ---------  --------  -------  -----
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       42    400
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       37    400
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       61    400
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       54    400
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      111    400
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       95    400
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       62    411
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       42    411
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       62    411
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       31    411
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      130    411
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       84    411
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       52    376
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       36    376
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       68    376
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       31    376
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      116    376
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       73    376
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       40    231
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        9    231
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       57    231
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       15    231
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       91    231
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       19    231
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       37    195
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       13    195
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       42    195
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        6    195
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       91    195
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        6    195
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       49    227
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        6    227
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       54    227
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        7    227
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       98    227
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       13    227
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       45    153
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       20    153
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       66    153
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       22    153
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       67    180
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       22    180
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       68    180
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       23    180
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0      101    284
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       40    284
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       97    284
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       46    284
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       29     63
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        7     63
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       20     63
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        7     63
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       15     39
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        6     39
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       12     39
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        6     39
2        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        9     42
2        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        4     42
2        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       21     42
2        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        8     42
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        9     76
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        6     76
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       39     76
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       22     76
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       25    208
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       31    208
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       90    208
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       62    208
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        9     64
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        7     64
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       30     64
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       18     64
2        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        3     15
2        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1     15
2        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       10     15
2        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        1     15
1        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        2     12
1        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1     12
1        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        5     12
1        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        4     12
3+       6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        3     19
3+       6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0     19
3+       6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       13     19
3+       6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3     19
1        24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1      1
2        24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        1      1
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      117    555
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       17    555
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      118    555
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       19    555
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      252    555
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       32    555
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      131    581
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       14    581
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      139    581
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       15    581
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      255    581
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       27    581
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      125    549
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       16    549
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      117    549
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       11    549
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      246    549
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       34    549
3+       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        2      3
3+       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0      3
3+       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        0      3
3+       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      3
1        24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1      1
2        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       67     75
2        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        8     75
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      105    180
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       75    180
1        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      136    156
1        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       20    156
3+       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      436    650
3+       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      214    650
3+       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      272    306
3+       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       34    306
2        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      126    201
2        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       75    201
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      874   3732
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       96   3732
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2473   3732
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      289   3732
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      504   2323
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      109   2323
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1402   2323
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      308   2323
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      476   2357
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       85   2357
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1513   2357
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      283   2357
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1307   5972
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      163   5972
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     4025   5972
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      477   5972
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      623   3095
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      119   3095
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1967   3095
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      386   3095
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      908   4125
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      101   4125
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2810   4125
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      306   4125
2        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        2      9
2        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        0      9
2        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        4      9
2        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        3      9
1        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3     17
1        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        3     17
1        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2     17
1        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        9     17
3+       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1     11
3+       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2     11
3+       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2     11
3+       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        6     11
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       25    228
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       87    228
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       34    228
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       82    228
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Control           0      153    670
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Control           1      157    670
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      230    670
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Other             1      130    670
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      268    603
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Control           1       12    603
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      307    603
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       16    603
1        24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        4     54
1        24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       27     54
1        24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        1     54
1        24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       22     54
2        Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       66    137
2        Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        4    137
2        Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       58    137
2        Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        9    137
2        6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       47    132
2        6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       26    132
2        6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       36    132
2        6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       23    132
2        24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        3     47
2        24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       21     47
2        24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        5     47
2        24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       18     47
1        Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       54    112
1        Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        3    112
1        Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       49    112
1        Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        6    112
1        6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       42    130
1        6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       27    130
1        6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       35    130
1        6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       26    130
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       65    220
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       23    220
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      105    220
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       27    220
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0      150    627
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       48    627
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      340    627
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       89    627
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       53    179
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       11    179
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       81    179
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       34    179
1        Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      1
1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2     16
1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2     16
1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       10     16
1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        2     16
3+       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1     37
3+       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2     37
3+       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       20     37
3+       24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       14     37
2        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2     12
2        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3     12
2        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        3     12
2        24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4     12
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2285   6613
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      962   6613
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2487   6613
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      879   6613
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1669   4706
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      602   4706
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1828   4706
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      607   4706
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2300   6710
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1051   6710
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2411   6710
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      948   6710
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2178   5689
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      638   5689
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2277   5689
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      596   5689
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2273   6361
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      933   6361
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2319   6361
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      836   6361
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1826   6271
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1310   6271
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1951   6271
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1184   6271
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0       16     62
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1       11     62
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0       13     62
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       22     62
2        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        6     23
2        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        7     23
2        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        7     23
2        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        3     23
3+       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        2     13
3+       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        3     13
3+       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        3     13
3+       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        5     13
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0      150    408
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       48    408
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0      167    408
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       43    408
2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       65    152
2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       23    152
2        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       51    152
2        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       13    152
1        Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      1
1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       53    122
1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       11    122
1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       41    122
1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       17    122
1        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        2     10
1        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2     10
1        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        5     10
1        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        1     10
3+       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        1     18
3+       24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2     18
3+       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0       10     18
3+       24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     18
2        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        2      7
2        24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        3      7
2        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        0      7
2        24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        2      7


The following strata were considered:

* parity: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 1, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 1, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 1, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 1, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 1, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 2, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 2, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 2, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 2, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 2, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 2, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 2, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 2, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 2, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 2, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 2, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 2, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 2, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 2, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 2, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 2, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 2, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 2, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 3+, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 3+, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 3+, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 3+, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 3+, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 3+, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 3+, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 3+, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 3+, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 3+, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 3+, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 3+, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 3+, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 3+, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 3+, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 3+, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 3+, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 3+, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 3+, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 3+, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 3+, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 3+, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 3+, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* parity: 2, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 3+, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 2, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 3+, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 2, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 3+, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 2, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 2, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 1, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 3+, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 3+, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 1, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 3+, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* parity: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

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
##   Zinc     105  75
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     136  20
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     126  75
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     67  8
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     436 214
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     272  34
```




# Results Detail

## Results Plots
![](/tmp/9a9bf775-93af-4226-aefe-586eb57cb218/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a9bf775-93af-4226-aefe-586eb57cb218/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a9bf775-93af-4226-aefe-586eb57cb218/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a9bf775-93af-4226-aefe-586eb57cb218/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


parity   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2857143   0.2070526   0.3643760
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3333333   0.1637234   0.5029433
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1108844   0.1069331   0.1148356
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1059529   0.0991749   0.1127309
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4177296   0.4084400   0.4270192
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3776715   0.3680100   0.3873329
1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.1718750   0.1231872   0.2205628
1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2931034   0.2371821   0.3490248
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1836735   0.0750191   0.2923279
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2083333   0.1143232   0.3023434
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1727273   0.1019329   0.2435216
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2471910   0.1906328   0.3037492
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2527473   0.1956560   0.3098385
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4375000   0.3762511   0.4987489
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3750000   0.2714705   0.4785295
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0965517   0.0484379   0.1446655
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0974026   0.0505327   0.1442725
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0957447   0.0613730   0.1301163
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1603774   0.1540463   0.1667084
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1640459   0.1526685   0.1754233
1        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3913043   0.3299474   0.4526613
1        6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4262295   0.3677724   0.4846866
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.1718750   0.1387347   0.2050153
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2956522   0.2419187   0.3493856
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2910168   0.2815378   0.3004959
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2649762   0.2560544   0.2738980
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4038462   0.3094297   0.4982626
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3333333   0.2374089   0.4292578
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3925234   0.3270194   0.4580274
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4074074   0.3233026   0.4915122
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.6285714   0.5405654   0.7165774
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1000991   0.0955687   0.1046295
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0982028   0.0903089   0.1060967
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3136377   0.3043314   0.3229440
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2822269   0.2738917   0.2905620
2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2613636   0.2080403   0.3146869
2        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2031250   0.1614856   0.2447644
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2600000   0.1381061   0.3818939
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1250000   0.0312000   0.2188000
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0618557   0.0137935   0.1099178
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3076923   0.2749915   0.3403931
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2500000   0.1922958   0.3077042
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4000000   0.3507437   0.4492563
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3606557   0.2632938   0.4580177
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1134752   0.0610753   0.1658751
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0859375   0.0373395   0.1345355
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1214286   0.0831361   0.1597211
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1515152   0.1444518   0.1585785
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1575724   0.1447302   0.1704146
2        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3561644   0.2951827   0.4171461
2        6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3898305   0.3339945   0.4456666
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2613636   0.2245597   0.2981675
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2045455   0.1631641   0.2459268
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2265625   0.2179526   0.2351724
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2074487   0.1989749   0.2159225
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4090909   0.3062288   0.5119530
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3131313   0.2216549   0.4046077
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3862434   0.3167371   0.4557497
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.1944444   0.1026216   0.2862673
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2592593   0.1801672   0.3383513
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0989691   0.0940840   0.1038541
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1046343   0.0961852   0.1130835
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0428571   0.0318324   0.0538819
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0495356   0.0368498   0.0622214
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2962735   0.2868135   0.3057335
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2611408   0.2522882   0.2699934
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2424242   0.2134205   0.2714280
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2047619   0.1766362   0.2328876
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1090909   0.0265182   0.1916636
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1147541   0.0345941   0.1949141
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1171171   0.0571647   0.1770696
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2836879   0.2522312   0.3151447
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3216783   0.3089239   0.3344328
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5535714   0.5184325   0.5887103
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4078947   0.3506644   0.4651251
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1268657   0.0704630   0.1832684
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1386861   0.0807597   0.1966125
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1126761   0.0758685   0.1494837
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1778140   0.1698251   0.1858030
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1801170   0.1667065   0.1935274
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5064516   0.4806817   0.5322215
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3611111   0.3344313   0.3877909
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2424242   0.2235591   0.2612894
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2074592   0.1811848   0.2337336
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2650815   0.2538657   0.2762972
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2492813   0.2386757   0.2598869
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4683544   0.3581811   0.5785278
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4695652   0.3782366   0.5608938
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4611650   0.3930075   0.5293226
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7767857   0.7388203   0.8147511
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7068966   0.6646603   0.7491328


### Parameter: E(Y)


parity   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3076923   0.1203158   0.4950688
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1071668   0.0993209   0.1150126
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3977037   0.3842293   0.4111782
1        6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2295082   0.1545812   0.3044352
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1861472   0.1358452   0.2364492
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2500000   0.1695680   0.3304320
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3906250   0.2701491   0.5111009
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0963855   0.0723678   0.1204033
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1631664   0.1501460   0.1761868
1        6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4076923   0.3228928   0.4924918
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2513966   0.1876667   0.3151266
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2781009   0.2650483   0.2911536
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3819951   0.3349645   0.4290258
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.5322581   0.4071084   0.6574078
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0986667   0.0895651   0.1077682
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2979136   0.2853406   0.3104865
2        6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2368421   0.1690317   0.3046525
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1282051   0.0811608   0.1752494
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2745098   0.2062724   0.3427472
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3684211   0.2592510   0.4775911
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1111111   0.0847987   0.1374235
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1561307   0.1414738   0.1707876
2        6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3712121   0.2884797   0.4539445
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2272727   0.1717702   0.2827753
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2169098   0.2047948   0.2290249
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3723404   0.3234116   0.4212692
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2222222   0.0905686   0.3538758
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1031618   0.0934018   0.1129219
3+       Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0464345   0.0296254   0.0632436
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2783910   0.2653337   0.2914484
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2230392   0.1825964   0.2634820
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1145374   0.0730179   0.1560570
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3028169   0.2655366   0.3400972
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4471154   0.3793840   0.5148468
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1225225   0.0952190   0.1498261
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1795093   0.1638995   0.1951191
3+       6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4283582   0.3908609   0.4658556
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2185008   0.1861301   0.2508715
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2569061   0.2414457   0.2723665
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4650000   0.4160599   0.5139401
3+       24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7412281   0.6842550   0.7982011


### Parameter: RR


parity   agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1666667   0.6426354   2.1180144
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9555262   0.8880561   1.0281224
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9041051   0.8739552   0.9352951
1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           1.7053292   1.2119424   2.3995757
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.1342593   0.5389976   2.3869199
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9404040   0.4578921   1.9313713
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0224775   0.7412994   1.4103078
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8571429   0.6289543   1.1681196
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0088126   0.5046164   2.0167850
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9916413   0.5365690   1.8326676
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0228744   0.9444186   1.1078478
1        6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.0892532   0.8844176   1.3415298
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.7201581   1.3197543   2.2420415
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9105185   0.8688472   0.9541885
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8253968   0.5696893   1.1958797
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9719626   0.7292930   1.2953797
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.5428571   1.2022527   1.9799566
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9810559   0.8946032   1.0758633
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8998498   0.8629539   0.9383232
2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.7771739   0.5819864   1.0378238
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.4807692   0.1984572   1.1646793
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.2379064   0.0960041   0.5895525
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8125000   0.6299149   1.0480086
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9016393   0.6701472   1.2130969
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7573242   0.3649289   1.5716485
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0700893   0.6117469   1.8718381
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0399777   0.9467766   1.1423535
2        6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           1.0945241   0.8755451   1.3682711
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.7826087   0.6116390   1.0013691
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9156355   0.8659491   0.9681727
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7654321   0.5206091   1.1253862
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9441505   0.6930369   1.2862521
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.3333333   0.7667307   2.3186470
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0572426   0.9617735   1.1621884
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.1558307   0.8039903   1.6616426
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8814181   0.8413087   0.9234397
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.8446429   0.7039850   1.0134045
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0519126   0.3755443   2.9464434
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0735736   0.4305156   2.6771626
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1339161   1.0076374   1.2760202
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.7368421   0.6316756   0.8595176
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0931730   0.5939701   2.0119318
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8881524   0.5115511   1.5420057
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0129513   0.9285865   1.1049809
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7130219   0.6518426   0.7799433
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.8557692   0.7375654   0.9929167
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9403951   0.8856277   0.9985493
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0025852   0.7388604   1.3604424
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9846497   0.7458134   1.2999699
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9100277   0.8424232   0.9830575


### Parameter: PAR


parity   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0219780   -0.1553291    0.1992851
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0037176   -0.0104958    0.0030607
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0200259   -0.0298639   -0.0101878
1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0576332    0.0006809    0.1145855
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0024737   -0.0941056    0.0990530
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0028090   -0.0544167    0.0600347
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0468750   -0.1506200    0.0568700
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0001662   -0.0418353    0.0415029
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0027890   -0.0085885    0.0141666
1        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0163880   -0.0421465    0.0749224
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0795216    0.0250861    0.1339572
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0129159   -0.0218885   -0.0039434
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0218510   -0.1031830    0.0594809
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1248507    0.0321748    0.2175266
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0014324   -0.0093264    0.0064615
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0157242   -0.0241494   -0.0072989
2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0245215   -0.0664128    0.0173697
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1317949   -0.2290149   -0.0345748
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0331825   -0.0952157    0.0288507
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0315789   -0.1290054    0.0658475
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0023641   -0.0473941    0.0426660
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0046155   -0.0082271    0.0174582
2        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0150477   -0.0408618    0.0709573
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0340909   -0.0756361    0.0074543
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0096527   -0.0181766   -0.0011288
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0367505   -0.1263162    0.0528152
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0277778   -0.0606103    0.1161658
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0041928   -0.0042568    0.0126423
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0035774   -0.0091113    0.0162660
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0178824   -0.0268921   -0.0088727
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0193850   -0.0475701    0.0088001
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0054465   -0.0669284    0.0778214
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0191290    0.0010295    0.0372284
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1064560   -0.1643594   -0.0485527
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0043431   -0.0532366    0.0445503
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0016952   -0.0117153    0.0151057
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0780934   -0.1053324   -0.0508544
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0239234   -0.0502287    0.0023818
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0081754   -0.0188182    0.0024674
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0033544   -0.1020394    0.0953305
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0355576   -0.0780377    0.0069224


### Parameter: PAF


parity   agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0714286   -0.6557354    0.4792375
1        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0346896   -0.1022606    0.0287391
1        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0503538   -0.0766777   -0.0246734
1        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.2511161    0.0305511    0.4214990
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0132890   -0.6693520    0.4167806
1        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0112360   -0.2431139    0.2135440
1        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1200000   -0.4614755    0.1416894
1        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0017241   -0.5423313    0.3493932
1        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0170932   -0.0538939    0.0832989
1        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0401969   -0.1081436    0.1686799
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.3163194    0.1438468    0.4540474
1        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0464433   -0.0807943   -0.0131840
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0572024   -0.2931142    0.1356704
1        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.2345679    0.0829453    0.3611217
2        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0145180   -0.0990240    0.0634902
2        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0527809   -0.0830318   -0.0233751
2        6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1035354   -0.3187046    0.0765253
2        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -1.0280000   -1.8916110   -0.4223158
2        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1208791   -0.4044270    0.1054216
2        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0857143   -0.4146638    0.1667451
2        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0212766   -0.5187048    0.3132267
2        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0295619   -0.0536493    0.1062015
2        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0405368   -0.1155997    0.1748207
2        6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1500000   -0.3823392    0.0432883
2        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0445009   -0.0864030   -0.0042148
2        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0987013   -0.3677455    0.1174202
3+       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1250000   -0.3029558    0.4123937
3+       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0406426   -0.0412674    0.1161093
3+       Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0770408   -0.2138609    0.2982279
3+       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0642350   -0.0993098   -0.0302792
3+       6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0869131   -0.2338472    0.0425232
3+       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0475524   -0.8487879    0.5093237
3+       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0631700    0.0055048    0.1174916
3+       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.2380952   -0.4105184   -0.0867492
3+       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0354478   -0.5222291    0.2956697
3+       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0094437   -0.0673930    0.0807492
3+       6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1823086   -0.2607811   -0.1087204
3+       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1094891   -0.2518099    0.0166510
3+       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0318225   -0.0754888    0.0100709
3+       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0072138   -0.2434561    0.1841452
3+       24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0479713   -0.1098385    0.0104472
