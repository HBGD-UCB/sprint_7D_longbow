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

* parity
* agecat
* studyid
* country

## Data Summary

parity   agecat        studyid                     country                        tr.x       ever_stunted   n_cell      n
-------  ------------  --------------------------  -----------------------------  --------  -------------  -------  -----
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       11     78
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        2     78
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       21     78
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        2     78
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       35     78
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        7     78
3+       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       16     73
3+       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        1     73
3+       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       17     73
3+       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        1     73
3+       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       36     73
3+       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        2     73
2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0        9     70
2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        3     70
2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       21     70
2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        2     70
2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0       34     70
2        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1        1     70
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       58    193
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       21    193
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       85    193
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       29    193
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0       82    231
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       28    231
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0       83    231
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       38    231
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0      124    368
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1       54    368
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0      137    368
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1       53    368
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       14     91
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        7     91
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       44     91
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       26     91
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       36    228
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       25    228
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0      103    228
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       64    228
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       11     77
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        8     77
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       35     77
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       23     77
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       51    227
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1        7    227
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0      147    227
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1       22    227
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       55    241
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1       12    241
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0      144    241
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1       30    241
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0       36    172
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1        5    172
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0      118    172
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1       13    172
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      159    704
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       10    704
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      325    704
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       22    704
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      175    704
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       13    704
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      174    768
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       15    768
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      383    768
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       22    768
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      160    768
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       14    768
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      176    732
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       15    732
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      326    732
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       25    732
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      171    732
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       19    732
2        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        9      9
3+       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       15     16
3+       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        1     16
1        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0        9     13
1        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        4     13
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      560   2614
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      126   2614
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     1575   2614
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      353   2614
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      580   2794
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      102   2794
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     1751   2794
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      361   2794
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      758   3693
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      160   3693
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     2282   3693
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      493   3693
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       59    216
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1       36    216
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0       84    216
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1       37    216
2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       23     52
2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1        9     52
2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0       17     52
2        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1        3     52
1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       11     30
1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1        3     30
1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0       11     30
1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1        5     30
3+       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       11     42
3+       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        3     42
3+       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       11     42
3+       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        1     42
3+       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       14     42
3+       0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        2     42
2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        3     13
2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        1     13
2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        3     13
2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        1     13
2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        3     13
2        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        2     13
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0        4     15
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        1     15
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0        1     15
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        3     15
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0        4     15
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        2     15
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1990   5574
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      739   5574
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2247   5574
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      598   5574
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2465   6452
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1      739   6452
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2573   6452
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      675   6452
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2481   7320
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1180   7320
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2639   7320
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     1020   7320
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      225   1161
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       58   1161
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      250   1161
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       29   1161
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      496   1161
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      103   1161
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      191   1190
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       80   1190
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      235   1190
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       71   1190
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      446   1190
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      167   1190
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      254   1212
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1       43   1212
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      304   1212
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       42   1212
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      467   1212
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      102   1212
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       47    169
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       19    169
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       75    169
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       28    169
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       79    286
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       59    286
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       95    286
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       53    286
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       72    192
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       20    192
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       79    192
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       21    192
2        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        4     55
2        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        6     55
2        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       22     55
2        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       23     55
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        6     46
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1        5     46
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       20     46
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       15     46
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        9    123
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       18    123
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       36    123
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       60    123
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       36    184
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        9    184
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0      104    184
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       35    184
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       39    182
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        9    182
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       99    182
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       35    182
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       26    131
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1        7    131
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       74    131
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       24    131
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      118    583
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       21    583
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      252    583
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       38    583
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      135    583
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       19    583
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      142    643
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       21    643
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      297    643
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       39    643
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      124    643
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       20    643
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      136    596
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       21    596
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      250    596
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       35    596
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      127    596
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       27    596
3+       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0     2284   2540
3+       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      256   2540
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      789    887
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       98    887
2        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      742    820
2        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1       78    820
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      581   2587
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      101   2587
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     1606   2587
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      299   2587
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      598   2833
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1       97   2833
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     1835   2833
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      303   2833
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      852   3896
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      123   3896
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     2578   3896
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      343   3896
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       71    445
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      106    445
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0      124    445
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1      144    445
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       21     87
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       28     87
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       17     87
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       21     87
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       18     92
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       36     92
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       22     92
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       16     92
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       58    202
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       15    202
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       41    202
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       19    202
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       50    202
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       19    202
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0      131    561
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       46    561
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0      129    561
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       58    561
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0      140    561
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       57    561
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       48    163
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       13    163
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       43    163
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       12    163
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       37    163
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       10    163
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1366   3690
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      390   3690
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1490   3690
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      444   3690
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1863   4676
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      423   4676
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     1894   4676
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      496   4676
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2027   4932
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1      421   4932
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2038   4932
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1      446   4932
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      221   1446
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1      140   1446
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      244   1446
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1       90   1446
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      487   1446
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      264   1446
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      184   1575
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1      178   1575
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      231   1575
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1      169   1575
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      436   1575
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      377   1575
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      246   1558
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1      130   1558
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      296   1558
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1      128   1558
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      455   1558
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      303   1558
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       41    236
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       57    236
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       65    236
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       73    236
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       66    284
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       69    284
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       71    284
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1       78    284
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0       69    429
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1      137    429
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0       89    429
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1      134    429
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        5     92
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       16     92
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       19     92
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       52     92
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        8    228
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       53    228
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       35    228
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1      132    228
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0        6     77
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       13     77
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       20     77
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       38     77
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       37    227
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       21    227
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       97    227
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       72    227
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       38    242
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       29    242
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0      103    242
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       72    242
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0       26    172
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       15    172
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0       78    172
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       53    172
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      129    709
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       41    709
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      266    709
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       83    709
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      152    709
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       38    709
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      150    776
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       41    776
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      321    776
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       88    776
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      135    776
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       41    776
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      147    739
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       46    739
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      274    739
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       81    739
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      134    739
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       57    739
3+       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0     2244   3455
3+       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1     1211   3455
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      776   1230
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      454   1230
2        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0      726   1105
2        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      379   1105
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      559   3287
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      299   3287
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     1555   3287
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      874   3287
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      607   3578
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      280   3578
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     1821   3578
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      870   3578
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0      849   4943
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      376   4943
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     2578   4943
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1     1140   4943
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       71    881
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      339    881
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0      128    881
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1      343    881
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       18    175
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       80    175
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       22    175
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       55    175
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0       21    187
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1       79    187
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0       20    187
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1       67    187
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       56    254
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       40    254
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       41    254
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       34    254
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       47    254
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       36    254
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0      124    696
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       97    696
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0      122    696
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1      114    696
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0      133    696
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1      106    696
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       47    201
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       25    201
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       41    201
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       27    201
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       34    201
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       27    201
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     1830   6559
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1361   6559
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2055   6559
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     1313   6559
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2384   7662
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1415   7662
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2451   7662
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     1412   7662
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     2433   8697
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1917   8697
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     2597   8697
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     1750   8697


The following strata were considered:

* parity: 1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 1, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 1, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 1, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 1, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 2, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 2, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 2, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 2, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 2, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 2, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 2, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 2, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 2, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 2, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 2, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 2, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 2, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 2, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 2, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 2, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 2, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 2, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 2, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 2, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 3+, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 3+, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 3+, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 3+, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 3+, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 3+, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 3+, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 3+, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 3+, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 3+, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 3+, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 3+, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 3+, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 3+, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 3+, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 3+, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 3+, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 3+, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 3+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 3+, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* parity: 3+, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 3+, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* parity: 3+, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* parity: 3+, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* parity: 3+, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* parity: 3+, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 3+, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* parity: 3+, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 3+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 3+, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* parity: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 3+, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 2, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* parity: 3+, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* parity: 2, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* parity: 3+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* parity: 2, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   Other     0   0
##   Zinc    776 454
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   Other     0   0
##   Zinc    789  98
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   Other     0   0
##   Zinc    726 379
##          ever_stunted
## tr.x      0
##   Control 0
##   LNS     0
##   Other   0
##   Zinc    9
##          ever_stunted
## tr.x        0   1
##   Control   0   0
##   LNS       0   0
##   Other     0   0
##   Zinc    742  78
##          ever_stunted
## tr.x         0    1
##   Control    0    0
##   LNS        0    0
##   Other      0    0
##   Zinc    2244 1211
##          ever_stunted
## tr.x         0    1
##   Control    0    0
##   LNS        0    0
##   Other      0    0
##   Zinc    2284  256
```




# Results Detail

## Results Plots
![](/tmp/c85c95c2-e367-4dcc-8b66-670b41549939/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 72 rows containing missing values (geom_errorbar).
```

![](/tmp/c85c95c2-e367-4dcc-8b66-670b41549939/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/c85c95c2-e367-4dcc-8b66-670b41549939/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c85c95c2-e367-4dcc-8b66-670b41549939/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


parity   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3457447   0.2976558   0.3938336
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3018868   0.2581759   0.3455977
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3997361   0.3648534   0.4346189
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5111111   0.4668406   0.5553816
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5234899   0.4815592   0.5654207
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6842105   0.6322987   0.7361224
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.6551724   0.5624278   0.7479170
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.4328358   0.3999215   0.4657502
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4114286   0.3585965   0.4642607
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2146597   0.1563936   0.2729257
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2151589   0.1753081   0.2550097
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2329545   0.1704635   0.2954456
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3069388   0.3005373   0.3133403
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3066165   0.2954673   0.3177656
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7900000   0.7471950   0.8328050
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7701149   0.7288707   0.8113592
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.3472222   0.2369791   0.4574653
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3970588   0.2804741   0.5136435
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4426230   0.3176668   0.5675791
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4406897   0.4316277   0.4497516
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.4025765   0.3943113   0.4108417
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2545455   0.2246274   0.2844635
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3140496   0.2953036   0.3327956
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4210526   0.3659134   0.4761918
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3965517   0.3011009   0.4920026
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1791045   0.1535264   0.2046826
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1724138   0.1318068   0.2130208
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0793651   0.0408032   0.1179270
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0543210   0.0322328   0.0764091
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0804598   0.0400179   0.1209016
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1742919   0.1681909   0.1803929
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1776577   0.1669701   0.1883452
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3223163   0.3133443   0.3312883
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2787647   0.2704310   0.2870984
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1447811   0.1047458   0.1848165
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1213873   0.0869622   0.1558123
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1792619   0.1477323   0.2107914
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2173913   0.1577344   0.2770482
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2100000   0.1790143   0.2409857
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4545455   0.3834033   0.5256876
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4285714   0.3024498   0.5546930
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1875000   0.1582984   0.2167016
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2611940   0.2062814   0.3161067
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1288344   0.0773638   0.1803049
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1160714   0.0817956   0.1503472
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1388889   0.0823603   0.1954175
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1261538   0.1209376   0.1313701
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1174255   0.1086715   0.1261796
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5714286   0.4929358   0.6499214
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5526316   0.4831801   0.6220831
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2131148   0.1100330   0.3161965
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2181818   0.1086942   0.3276695
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2127660   0.0954010   0.3301309
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1719771   0.1639864   0.1799679
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.1795491   0.1708384   0.1882598
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3878116   0.3375314   0.4380919
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2694611   0.2218624   0.3170597
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3515313   0.3173723   0.3856903
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5816327   0.5240473   0.6392180
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5289855   0.4692025   0.5887685
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.7619048   0.7200959   0.8037137
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7323944   0.6524877   0.8123010
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3620690   0.3303968   0.3937411
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4260355   0.3704080   0.4816630
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2383420   0.1781908   0.2984931
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2281690   0.1844855   0.2718525
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2984293   0.2334939   0.3633648
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3156708   0.3080871   0.3232545
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3232999   0.3100068   0.3365930
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8163265   0.7732716   0.8593814
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7142857   0.6697609   0.7588105
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4166667   0.3174606   0.5158728
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4533333   0.3406300   0.5660367
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4337349   0.3264832   0.5409867
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3724664   0.3635523   0.3813806
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3655190   0.3569209   0.3741171
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2658228   0.2522957   0.2793499
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2543860   0.2400351   0.2687368
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3333333   0.2865480   0.3801186
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3714286   0.2838758   0.4589814
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1206897   0.0992212   0.1421581
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1301775   0.0923239   0.1680312
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0785340   0.0403575   0.1167106
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0712251   0.0442996   0.0981505
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1000000   0.0573136   0.1426864
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1495601   0.1430255   0.1560948
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1709280   0.1587900   0.1830661
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2306492   0.2225209   0.2387775
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2078202   0.2002245   0.2154159
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2049470   0.1578969   0.2519971
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1039427   0.0681167   0.1397686
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1719533   0.1417221   0.2021844
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2878788   0.2139804   0.3617772
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2718447   0.2261787   0.3175106
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2000000   0.1713398   0.2286602
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2517986   0.1971402   0.3064570
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1337580   0.0804684   0.1870475
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1228070   0.0846698   0.1609443
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1753247   0.1152190   0.2354303
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1395683   0.1332468   0.1458899
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1417212   0.1305625   0.1528799
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6666667   0.5924632   0.7408701
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4210526   0.3558578   0.4862474
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2054795   0.1120978   0.2988612
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3166667   0.1985432   0.4347901
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2753623   0.1691745   0.3815501
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1850394   0.1759911   0.1940876
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2075314   0.1981758   0.2168870
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4917127   0.4401967   0.5432287
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4225000   0.3740777   0.4709223
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4637146   0.4294249   0.4980044
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6650485   0.6376732   0.6924239
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6008969   0.5738259   0.6279678
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.8688525   0.8461389   0.8915660
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7904192   0.7451054   0.8357330
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3658537   0.3306063   0.4011010
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4045802   0.3403801   0.4687802
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2411765   0.1768236   0.3055293
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2378223   0.1931235   0.2825212
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2000000   0.1430836   0.2569164
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3484848   0.3401612   0.3568085
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3598189   0.3457123   0.3739254
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8268293   0.8097741   0.8438844
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7282378   0.7067466   0.7497290
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4389140   0.3734401   0.5043880
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4830508   0.4192503   0.5468514
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4435146   0.3804854   0.5065439
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4265121   0.4161318   0.4368923
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3898456   0.3796641   0.4000271
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3033708   0.2619989   0.3447427
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2789474   0.2692846   0.2886102
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4098361   0.3767440   0.4429281
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3832335   0.3291060   0.4373610
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1219512   0.0980054   0.1458971
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.0992366   0.0601289   0.1383444
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0591716   0.0235736   0.0947696
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0634006   0.0377430   0.0890581
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0691489   0.0328570   0.1054409
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1836735   0.1760677   0.1912792
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1830913   0.1703563   0.1958263
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3789474   0.3359425   0.4219522
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3057851   0.2596905   0.3518797
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2707952   0.2603575   0.2812329
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2101933   0.2012120   0.2191747
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2952030   0.2408731   0.3495328
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2320261   0.1847098   0.2793425
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2724307   0.2371720   0.3076893
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4275362   0.3766732   0.4783993
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3581081   0.3250830   0.3911332
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6666667   0.6274752   0.7058581
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.6250000   0.5491061   0.7008939
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2121212   0.1768501   0.2473924
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2448980   0.1809614   0.3088345
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1510791   0.0914924   0.2106658
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1310345   0.0921644   0.1699046
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1233766   0.0713910   0.1753623
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1480939   0.1410649   0.1551228
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1569554   0.1449245   0.1689862
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.5988701   0.5701178   0.6276223
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5373134   0.5013218   0.5733050
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2598870   0.1952189   0.3245551
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.3101604   0.2438042   0.3765167
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2893401   0.2259622   0.3527180
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2220957   0.2111108   0.2330806
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2295760   0.2187626   0.2403894


### Parameter: E(Y)


parity   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3600770   0.3362338   0.3839203
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5176056   0.4565460   0.5786653
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.6623377   0.5560159   0.7686595
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4173554   0.3550975   0.4796133
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2190722   0.1899518   0.2481925
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3066963   0.2938401   0.3195525
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7807487   0.7212896   0.8402078
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.3930348   0.3253439   0.4607258
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4216396   0.4093039   0.4339754
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2857143   0.2414443   0.3299843
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4025974   0.2923393   0.5128555
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1742739   0.1262810   0.2222667
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0664063   0.0487851   0.0840274
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1768210   0.1645146   0.1891274
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3005464   0.2882407   0.3128522
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1542904   0.1339455   0.1746354
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2135417   0.1461480   0.2809353
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4347826   0.2899436   0.5796217
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2417582   0.1793843   0.3041322
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1244168   0.0988857   0.1499479
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1196099   0.1094189   0.1298008
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5632184   0.4583923   0.6680445
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2147239   0.1514912   0.2779567
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1757908   0.1639734   0.1876082
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3416321   0.3171793   0.3660848
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5508475   0.4650015   0.6366934
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7391304   0.6489111   0.8293498
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4096916   0.3455763   0.4738070
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2489851   0.2177868   0.2801834
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3214086   0.3061040   0.3367132
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7714286   0.7090361   0.8338211
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4330709   0.3718652   0.4942765
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3689637   0.3565657   0.3813618
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2590674   0.2388727   0.2792620
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3626374   0.2633129   0.4619619
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1277533   0.0842322   0.1712744
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0806011   0.0608672   0.1003349
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1657122   0.1519228   0.1795017
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2191569   0.2080052   0.2303085
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1636520   0.1423621   0.1849419
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2781065   0.1910643   0.3651488
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2391304   0.1773295   0.3009314
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392617   0.1114428   0.1670807
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1411931   0.1283681   0.1540180
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5652174   0.4633650   0.6670698
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2623762   0.2013093   0.3234431
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1965355   0.1835149   0.2095561
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4596825   0.4350619   0.4843032
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6317016   0.5861266   0.6772767
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.8114035   0.7605149   0.8622921
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.3953488   0.3220676   0.4686301
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2284908   0.1975639   0.2594177
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3568604   0.3404803   0.3732404
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7741203   0.7464923   0.8017483
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4554598   0.4184347   0.4924848
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4076841   0.3930086   0.4223596
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2907609   0.2479343   0.3335874
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3903509   0.3268905   0.4538113
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1046512   0.0587717   0.1505306
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0639205   0.0458384   0.0820025
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1832441   0.1684107   0.1980774
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3379630   0.2747357   0.4011903
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2398637   0.2258572   0.2538702
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2672269   0.2420743   0.2923794
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3916084   0.3247984   0.4584184
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.6341463   0.5486758   0.7196169
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2366412   0.1635802   0.3097023
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1337907   0.1061334   0.1614481
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1546193   0.1406847   0.1685538
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5617978   0.5156465   0.6079490
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2869875   0.2495218   0.3244532
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2260163   0.2106142   0.2414184


### Parameter: RR


parity   agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8731495   0.7143211   1.0672931
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1561599   0.9810886   1.3624721
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0242194   0.9099955   1.1527810
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9575597   0.8154824   1.1243903
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9505419   0.8187624   1.1035312
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0023257   0.7216014   1.3922602
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0852273   0.7409406   1.5894908
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9989499   0.9579411   1.0417143
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9748290   0.9033206   1.0519982
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1435294   0.7420505   1.7622244
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.2747541   0.8335141   1.9495748
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9135147   0.8873411   0.9404604
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2337662   1.0819598   1.4068722
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9418103   0.7160744   1.2387076
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9626437   0.7308785   1.2679027
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6844444   0.3632274   1.2897269
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0137931   0.5038952   2.0396632
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0193108   0.9507784   1.0927831
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8648793   0.8302597   0.9009424
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8384191   0.5642073   1.2459013
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.2381575   0.8921721   1.7183164
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9660000   0.7073135   1.3192961
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9428571   0.6755987   1.3158396
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.3930348   1.0723425   1.8096326
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9009354   0.5481969   1.4806442
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0780423   0.6094672   1.9068709
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9308122   0.8547501   1.0136429
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9671053   0.8028187   1.1650110
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.0237762   0.5099306   2.0554126
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           0.9983633   0.4793692   2.0792522
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0440291   0.9762124   1.1165569
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6948246   0.5581021   0.8650412
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9064485   0.7708625   1.0658826
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9094839   0.7825727   1.0569764
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9612676   0.8507575   1.0861326
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1766695   1.0055393   1.3769239
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9573178   0.6974011   1.3141038
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2521056   0.8972713   1.7472624
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0241679   0.9765391   1.0741196
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8750000   0.8063920   0.9494452
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.0880000   0.7711352   1.5350668
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.0409639   0.7385087   1.4672891
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9813475   0.9489648   1.0148353
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9569758   0.8868032   1.0327011
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           1.1142857   0.8469378   1.4660257
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.0786137   0.7670517   1.5167264
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9069326   0.4899298   1.6788664
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2733333   0.6667811   2.4316493
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.1428717   1.0514462   1.2422468
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9010229   0.8564075   0.9479625
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.5071685   0.3351963   0.7673708
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8390133   0.6283316   1.1203372
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9443025   0.6939897   1.2848997
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2589928   0.9706449   1.6329998
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9181287   0.5540195   1.5215353
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3107607   0.7749235   2.2171139
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0154253   0.9272543   1.1119805
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.6315789   0.5219285   0.7642655
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.5411111   0.8560392   2.7744332
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.3400966   0.7383924   2.4321200
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.1215526   1.0493962   1.1986704
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8592416   0.7356621   1.0035805
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9430601   0.8295590   1.0720905
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9035383   0.8498503   0.9606180
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9097277   0.8541761   0.9688921
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1058524   0.9184905   1.3314340
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9860927   0.7114972   1.3666656
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8292683   0.5614008   1.2249464
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0325237   0.9861946   1.0810292
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8807596   0.8496115   0.9130495
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1005591   0.9017453   1.3432068
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.0104818   0.8223383   1.2416708
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9140318   0.8819658   0.9472638
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9194932   0.7988230   1.0583918
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9350898   0.7946901   1.1002943
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.8137405   0.5239242   1.2638729
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0714697   0.5189111   2.2124165
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1686170   0.5259535   2.5965523
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9968303   0.9193178   1.0808784
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8069330   0.6681789   0.9745008
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.7762078   0.7327999   0.8221870
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7859886   0.5971966   1.0344633
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9228589   0.7369231   1.1557088
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8376088   0.7204551   0.9738129
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9375000   0.8191808   1.0729088
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1545190   0.8471773   1.5733589
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8673235   0.5294833   1.4207249
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8166357   0.4585392   1.4543881
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0598372   0.9684668   1.1598281
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8972121   0.8262348   0.9742866
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1934434   0.8595759   1.6569882
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.1133304   0.7991943   1.5509427
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0336807   0.9654492   1.1067343


### Parameter: PAR


parity   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0143323   -0.0276778    0.0563424
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0064945   -0.0360427    0.0490317
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0218729   -0.1146602    0.0709145
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0154804   -0.0683264    0.0373655
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0044125   -0.0462995    0.0551245
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0002424   -0.0113916    0.0109067
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0092513   -0.0505202    0.0320176
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0458126   -0.0437898    0.1354150
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0190500   -0.0274895   -0.0106105
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0311688    0.0009273    0.0614104
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0184552   -0.1139356    0.0770252
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0048306   -0.0454394    0.0357782
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0129588   -0.0456029    0.0196852
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0025291   -0.0081586    0.0132167
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0217699   -0.0302911   -0.0132486
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0095093   -0.0255792    0.0445978
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0038496   -0.0352912    0.0275920
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0197628   -0.1459260    0.1064003
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0542582   -0.0008578    0.1093743
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0044176   -0.0486657    0.0398306
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0065440   -0.0152988    0.0022108
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0082102   -0.0776896    0.0612693
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0016092   -0.0800679    0.0832862
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0038136   -0.0048931    0.0125203
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0461795   -0.0893506   -0.0030085
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0307852   -0.0934818    0.0319114
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0227743   -0.1027215    0.0571728
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0476227   -0.0081236    0.1033690
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0106431   -0.0413340    0.0626203
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0057378   -0.0075557    0.0190313
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0448980   -0.0900543    0.0002584
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0164042   -0.0620080    0.0948164
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0035027   -0.0121172    0.0051118
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0067554   -0.0214864    0.0079756
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0293040   -0.0583116    0.1169196
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0070636   -0.0307938    0.0449211
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0020671   -0.0308919    0.0350260
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0161521    0.0040093    0.0282949
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0114923   -0.0191588   -0.0038259
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0412950   -0.0811417   -0.0014482
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0097723   -0.0553550    0.0358105
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0391304   -0.0156231    0.0938839
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0055038   -0.0405131    0.0515206
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0016247   -0.0095340    0.0127835
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1014493   -0.1712186   -0.0316800
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0568968   -0.0215037    0.1352972
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0114961    0.0021286    0.0208636
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0320302   -0.0771979    0.0131376
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0333469   -0.0712124    0.0045186
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0574490   -0.1029873   -0.0119106
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0294952   -0.0347525    0.0937429
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0126856   -0.0684693    0.0430980
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0083755   -0.0057321    0.0224831
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0527090   -0.0744444   -0.0309735
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0165457   -0.0376327    0.0707242
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0188280   -0.0292246   -0.0084313
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0126099   -0.0257849    0.0005651
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0194852   -0.0736344    0.0346640
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0173001   -0.0564347    0.0218346
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0047489   -0.0266481    0.0361458
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0004294   -0.0131644    0.0123056
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0409844   -0.0873339    0.0053651
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0309315   -0.0402839   -0.0215791
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0279761   -0.0753045    0.0193524
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0359278   -0.0798755    0.0080199
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0325203   -0.1084759    0.0434353
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0245200   -0.0394633    0.0885033
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0172884   -0.0684981    0.0339213
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0065254   -0.0055064    0.0185572
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0370723   -0.0731728   -0.0009718
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0271005   -0.0271835    0.0813846
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0039206   -0.0068730    0.0147142


### Parameter: PAF


parity   agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0398035   -0.0842530    0.1496659
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0125472   -0.0720505    0.0904692
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0330237   -0.1883945    0.1020338
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0370918   -0.1771223    0.0862807
1        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0201417   -0.2409652    0.2263100
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0007905   -0.0378409    0.0349372
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0118493   -0.0667767    0.0402499
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1165612   -0.1436968    0.3175952
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0451808   -0.0663272   -0.0244537
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1090909    0.0099061    0.1983397
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0458404   -0.3258553    0.1750365
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0277186   -0.2974387    0.1859304
1        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1951447   -0.7998145    0.2063788
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0143030   -0.0471153    0.0721188
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0724343   -0.1033302   -0.0424035
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0616324   -0.1955902    0.2635154
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0180276   -0.1796071    0.1214192
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0454545   -0.3975409    0.2179297
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.2244318    0.0232411    0.3841817
1        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0355061   -0.4597856    0.2654586
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0547111   -0.1348457    0.0197650
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0145773   -0.1478030    0.1031850
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0074941   -0.4560518    0.3234665
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0216941   -0.0279907    0.0689776
2        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1351733   -0.2689161   -0.0155270
2        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0558870   -0.1834427    0.0579203
2        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0308123   -0.1485774    0.0748782
2        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1162403   -0.0129616    0.2289626
2        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0427461   -0.1904904    0.2302878
2        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0178521   -0.0236238    0.0576474
2        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0582011   -0.1220830    0.0020440
2        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0378788   -0.1614000    0.2029643
2        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0094934   -0.0333414    0.0138042
2        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0260759   -0.0861562    0.0306810
2        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                 0.0808081   -0.1707123    0.2782908
2        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0552913   -0.2707626    0.2976859
2        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0256456   -0.4823909    0.3595707
2        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0974709    0.0287332    0.1613439
2        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0524389   -0.0899515   -0.0162173
2        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2523340   -0.5197269   -0.0319884
2        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0351386   -0.2198618    0.1216120
2        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1636364   -0.0528229    0.3355918
2        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0395211   -0.3547808    0.3190635
2        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0115072   -0.0697871    0.0866239
2        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1794872   -0.3365932   -0.0408477
2        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.2168519   -0.1442769    0.4640100
2        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0584939    0.0124460    0.1023947
3+       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0696789   -0.1726554    0.0242548
3+       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0527890   -0.1177448    0.0083919
3+       0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0708019   -0.1326515   -0.0123298
3+       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0746055   -0.0888614    0.2135316
3+       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0555192   -0.3301474    0.1624080
3+       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0234700   -0.0159120    0.0613253
3+       0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0680888   -0.0985417   -0.0384801
3+       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0363276   -0.0903044    0.1482520
3+       0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0461827   -0.0732293   -0.0198178
3+       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0433687   -0.0918521    0.0029618
3+       0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0499171   -0.2062170    0.0861297
3+       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.1653116   -0.6961280    0.1993816
3+       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0742932   -0.5730020    0.4552245
3+       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0023433   -0.0744815    0.0649517
3+       0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1212689   -0.2869736    0.0231004
3+       0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1289546   -0.1742059   -0.0854471
3+       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1046903   -0.2967250    0.0589056
3+       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0917443   -0.2218870    0.0245369
3+       6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0512821   -0.1850968    0.0674231
3+       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1036168   -0.1753221    0.3163552
3+       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1292197   -0.5839924    0.1949853
3+       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0422030   -0.0353318    0.1139314
3+       6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0659887   -0.1368255    0.0004342
3+       6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0944310   -0.1157910    0.2650458
3+       6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0173465   -0.0307274    0.0631782
