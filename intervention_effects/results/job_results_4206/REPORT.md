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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
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
editor_options: 
  chunk_output_type: console
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

* agecat
* studyid
* country
* intXmbmi

## Data Summary

agecat        studyid                     country                        intXmbmi                           ever_stunted   n_cell      n
------------  --------------------------  -----------------------------  --------------------------------  -------------  -------  -----
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months                      0      140    158
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months                      1       18    158
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months                        0       56     61
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months                        1        5     61
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_0-6 months                0       13     13
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_0-6 months                1        0     13
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_0-6 months                0       76     97
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_0-6 months                1       21     97
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_0-6 months                      0      365    496
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_0-6 months                      1      131    496
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_0-6 months                        0      115    181
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_0-6 months                        1       66    181
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_0-6 months                0       31     36
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_0-6 months                1        5     36
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_0-6 months                      0      353    405
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_0-6 months                      1       52    405
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_0-6 months                        0       94    118
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_0-6 months                        1       24    118
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_0-6 months                0      104    116
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_0-6 months                1       12    116
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months                      0     1057   1149
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months                      1       92   1149
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_0-6 months                        0       31     35
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_0-6 months                        1        4     35
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months                0      945   1003
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months                1       58   1003
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_0-6 months                      0       28     31
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_0-6 months                      1        3     31
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_0-6 months                        0        3      5
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_0-6 months                        1        2      5
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_0-6 months                0        2      2
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_0-6 months                1        0      2
0-6 months    ki1119695-PROBIT            BELARUS                        Normal weight_0-6 months                      0     7401   7879
0-6 months    ki1119695-PROBIT            BELARUS                        Normal weight_0-6 months                      1      478   7879
0-6 months    ki1119695-PROBIT            BELARUS                        Underweight_0-6 months                        0      457    508
0-6 months    ki1119695-PROBIT            BELARUS                        Underweight_0-6 months                        1       51    508
0-6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_0-6 months                0     4592   4886
0-6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_0-6 months                1      294   4886
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_0-6 months                      0     4218   5228
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_0-6 months                      1     1010   5228
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_0-6 months                        0      298    386
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_0-6 months                        1       88    386
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_0-6 months                0     1722   1981
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_0-6 months                1      259   1981
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_0-6 months                      0      669    954
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_0-6 months                      1      285    954
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_0-6 months                        0       51     86
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_0-6 months                        1       35     86
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_0-6 months                0      123    149
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_0-6 months                1       26    149
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months                      0      135    215
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months                      1       80    215
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months                        0       31     47
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months                        1       16     47
0-6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_0-6 months                0        8      9
0-6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_0-6 months                1        1      9
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Normal weight_6-24 months                     0        1      1
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Normal weight_6-24 months                     1        0      1
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Normal weight_6-24 months                     0     1311   1921
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Normal weight_6-24 months                     1      610   1921
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Underweight_6-24 months                       0      198    327
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Underweight_6-24 months                       1      129    327
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Overweight or Obese_6-24 months               0      125    150
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Overweight or Obese_6-24 months               1       25    150
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months                     0     1821   2847
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months                     1     1026   2847
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months                       0      841   1554
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months                       1      713   1554
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months               0      274    351
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months               1       77    351
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6-24 months               0       59     68
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6-24 months               1        9     68
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6-24 months                     0      241    396
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6-24 months                     1      155    396
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Underweight_6-24 months                       0       58    122
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Underweight_6-24 months                       1       64    122
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6-24 months               0       25     36
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6-24 months               1       11     36
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6-24 months                     0      183    211
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6-24 months                     1       28    211
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Underweight_6-24 months                       0       43     49
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Underweight_6-24 months                       1        6     49
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_6-24 months               0       79     82
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_6-24 months               1        3     82
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months                     0      739    907
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months                     1      168    907
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months                       0       21     26
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months                       1        5     26
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months               0      682    835
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months               1      153    835
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_6-24 months                     0     2991   4574
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_6-24 months                     1     1583   4574
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_6-24 months                       0      320    558
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_6-24 months                       1      238    558
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_6-24 months               0      319    422
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_6-24 months               1      103    422
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Normal weight_6-24 months                     0     1691   2540
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Normal weight_6-24 months                     1      849   2540
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Underweight_6-24 months                       0      279    451
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Underweight_6-24 months                       1      172    451
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Overweight or Obese_6-24 months               0      154    186
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Overweight or Obese_6-24 months               1       32    186
6-24 months   ki1119695-PROBIT            BELARUS                        Normal weight_6-24 months                     0     6457   6845
6-24 months   ki1119695-PROBIT            BELARUS                        Normal weight_6-24 months                     1      388   6845
6-24 months   ki1119695-PROBIT            BELARUS                        Underweight_6-24 months                       0      393    427
6-24 months   ki1119695-PROBIT            BELARUS                        Underweight_6-24 months                       1       34    427
6-24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_6-24 months               0     4042   4299
6-24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_6-24 months               1      257   4299
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6-24 months                     0     3417   4407
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6-24 months                     1      990   4407
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6-24 months                       0      218    307
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6-24 months                       1       89    307
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6-24 months               0     1504   1819
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6-24 months               1      315   1819
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6-24 months                     0      671   1164
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6-24 months                     1      493   1164
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6-24 months                       0       53     99
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6-24 months                       1       46     99
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6-24 months               0      138    202
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6-24 months               1       64    202
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Normal weight_6-24 months                     0        1      2
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Normal weight_6-24 months                     1        1      2
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months                     0      278    565
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months                     1      287    565
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months                       0       46    123
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months                       1       77    123
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months               0       22     39
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months               1       17     39


The following strata were considered:

* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Underweight_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Underweight_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Underweight_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Normal weight_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Underweight_0-6 months
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Overweight or Obese_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Overweight or Obese_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Normal weight_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Overweight or Obese_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Normal weight_6-24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     2991 1583
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     320 238
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     319 103
```




# Results Detail

## Results Plots
![](/tmp/6966bff6-f4e8-48cf-b331-d8fb33d26804/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6966bff6-f4e8-48cf-b331-d8fb33d26804/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6966bff6-f4e8-48cf-b331-d8fb33d26804/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6966bff6-f4e8-48cf-b331-d8fb33d26804/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intXmbmi                          intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  --------------------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months          Control              NA                0.1724138    0.0344960   0.3103316
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months          LNS                  NA                0.1276596    0.0319517   0.2233674
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months          Other                NA                0.0853659    0.0246942   0.1460375
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months            Control              NA                0.0833333   -0.0743413   0.2410080
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months            LNS                  NA                0.0500000   -0.0463095   0.1463095
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months            Other                NA                0.1034483   -0.0083121   0.2152086
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_0-6 months    Control              NA                0.2553191    0.1300119   0.3806264
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_0-6 months    Maternal             NA                0.1800000    0.0729574   0.2870426
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_0-6 months          Control              NA                0.2681818    0.1983923   0.3379713
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_0-6 months          Other                NA                0.2608696    0.2240848   0.2976543
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_0-6 months            Control              NA                0.3409091    0.2413392   0.4404790
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_0-6 months            Other                NA                0.3870968    0.2871792   0.4870144
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_0-6 months    Control              NA                0.1176471   -0.0028997   0.2381938
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_0-6 months    Other                NA                0.1578947    0.0560628   0.2597267
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_0-6 months          Control              NA                0.1171171    0.0572229   0.1770114
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_0-6 months          Other                NA                0.1326531    0.0938321   0.1714740
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_0-6 months            Control              NA                0.2916667    0.1090448   0.4742885
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_0-6 months            Other                NA                0.1808511    0.1027109   0.2589912
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_0-6 months    Control              NA                0.1290323    0.0105107   0.2475539
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_0-6 months    Other                NA                0.0941176    0.0317743   0.1564610
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months          Control              NA                0.0776699    0.0478142   0.1075256
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months          Other                NA                0.0758123    0.0446272   0.1069974
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months          Zinc                 NA                0.0834813    0.0606228   0.1063399
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months    Control              NA                0.0669456    0.0352441   0.0986471
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months    Other                NA                0.0480000    0.0214885   0.0745115
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months    Zinc                 NA                0.0583658    0.0380888   0.0786427
0-6 months    ki1119695-PROBIT            BELARUS                        Normal weight_0-6 months          Control              NA                0.0650640    0.0443706   0.0857574
0-6 months    ki1119695-PROBIT            BELARUS                        Normal weight_0-6 months          Maternal             NA                0.0565153    0.0411916   0.0718390
0-6 months    ki1119695-PROBIT            BELARUS                        Underweight_0-6 months            Control              NA                0.1040000    0.0461916   0.1618084
0-6 months    ki1119695-PROBIT            BELARUS                        Underweight_0-6 months            Maternal             NA                0.0968992    0.0597881   0.1340104
0-6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_0-6 months    Control              NA                0.0602559    0.0417176   0.0787941
0-6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_0-6 months    Maternal             NA                0.0600893    0.0452023   0.0749764
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_0-6 months          Control              NA                0.1876413    0.1666329   0.2086497
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_0-6 months          VitA                 NA                0.1950782    0.1826421   0.2075142
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_0-6 months            Control              NA                0.3214286    0.2214259   0.4214313
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_0-6 months            VitA                 NA                0.2019868    0.1566475   0.2473260
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_0-6 months    Control              NA                0.1190965    0.0903221   0.1478710
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_0-6 months    VitA                 NA                0.1345382    0.1172309   0.1518454
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_0-6 months          Control              NA                0.3263889    0.2497645   0.4030133
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_0-6 months          LNS                  NA                0.2938272    0.2624412   0.3252131
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_0-6 months            Control              NA                0.6000000    0.3506279   0.8493721
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_0-6 months            LNS                  NA                0.3661972    0.2534792   0.4789152
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_0-6 months    Control              NA                0.1428571    0.0128076   0.2729067
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_0-6 months    LNS                  NA                0.1818182    0.1128639   0.2507725
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months          Control              NA                0.3333333    0.2073082   0.4593585
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months          LNS                  NA                0.3539823    0.2656063   0.4423583
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months          Other                NA                0.4583333    0.3170482   0.5996185
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months            Control              NA                0.6000000    0.2930810   0.9069190
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months            LNS                  NA                0.2380952    0.0539612   0.4222293
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months            Other                NA                0.3125000    0.0829277   0.5420723
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Normal weight_6-24 months         Control              NA                0.3298319    0.2629352   0.3967287
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Normal weight_6-24 months         Zinc                 NA                0.3134948    0.2623228   0.3646668
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Underweight_6-24 months           Control              NA                0.3461538    0.1970802   0.4952275
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Underweight_6-24 months           Zinc                 NA                0.4096386    0.3122921   0.5069850
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Overweight or Obese_6-24 months   Control              NA                0.1142857   -0.0064109   0.2349823
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Overweight or Obese_6-24 months   Zinc                 NA                0.1826087    0.0511235   0.3140939
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months         Control              NA                0.3645533    0.3287383   0.4003683
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months         LNS                  NA                0.3008596    0.2668297   0.3348895
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months         Other                NA                0.3869416    0.3619113   0.4119719
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months           Control              NA                0.4811828    0.4303927   0.5319728
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months           LNS                  NA                0.4098765    0.3619630   0.4577901
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months           Other                NA                0.4736165    0.4384975   0.5087355
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months   Control              NA                0.2441860    0.1532604   0.3351117
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months   LNS                  NA                0.2105263    0.1284292   0.2926234
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months   Other                NA                0.2117647    0.1502615   0.2732679
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6-24 months   Control              NA                0.1081081    0.0073107   0.2089056
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6-24 months   Maternal             NA                0.1612903    0.0308553   0.2917254
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6-24 months         Control              NA                0.3728814    0.2741641   0.4715986
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6-24 months         Other                NA                0.4063927    0.2943377   0.5184477
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Underweight_6-24 months           Control              NA                0.5625000    0.4570853   0.6679147
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Underweight_6-24 months           Other                NA                0.4827586    0.3060185   0.6594987
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6-24 months   Control              NA                0.4705882    0.1511757   0.7900008
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6-24 months   Other                NA                0.1578947   -0.0455599   0.3613494
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6-24 months         Control              NA                0.1896552    0.0885245   0.2907859
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6-24 months         Other                NA                0.1111111    0.0611955   0.1610267
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Underweight_6-24 months           Control              NA                0.1250000   -0.1065472   0.3565472
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Underweight_6-24 months           Other                NA                0.1219512    0.0207499   0.2231525
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months         Control              NA                0.1836735    0.1351603   0.2321867
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months         Other                NA                0.1711712    0.1215966   0.2207457
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months         Zinc                 NA                0.1931818    0.1562728   0.2300908
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months           Control              NA                0.0000001   -0.0000001   0.0000002
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months           Other                NA                0.2500000   -0.0559993   0.5559993
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months           Zinc                 NA                0.1764706   -0.0083354   0.3612766
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months   Control              NA                0.1909548    0.1363119   0.2455976
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months   Other                NA                0.1634615    0.1131778   0.2137453
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months   Zinc                 NA                0.1892523    0.1521202   0.2263845
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Normal weight_6-24 months         Control              NA                0.3861066    0.3359739   0.4362393
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Normal weight_6-24 months         LNS                  NA                0.3175429    0.2788996   0.3561863
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Underweight_6-24 months           Control              NA                0.3467742    0.2801871   0.4133612
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Underweight_6-24 months           LNS                  NA                0.3944954    0.3205482   0.4684426
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Overweight or Obese_6-24 months   Control              NA                0.1944444    0.0064031   0.3824858
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Overweight or Obese_6-24 months   LNS                  NA                0.1666667    0.0711862   0.2621471
6-24 months   ki1119695-PROBIT            BELARUS                        Normal weight_6-24 months         Control              NA                0.0629994    0.0396606   0.0863381
6-24 months   ki1119695-PROBIT            BELARUS                        Normal weight_6-24 months         Maternal             NA                0.0509607    0.0395151   0.0624063
6-24 months   ki1119695-PROBIT            BELARUS                        Underweight_6-24 months           Control              NA                0.0878049    0.0456176   0.1299922
6-24 months   ki1119695-PROBIT            BELARUS                        Underweight_6-24 months           Maternal             NA                0.0720721    0.0364797   0.1076644
6-24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_6-24 months   Control              NA                0.0613118    0.0426960   0.0799276
6-24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_6-24 months   Maternal             NA                0.0583144    0.0421314   0.0744973
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6-24 months         Control              NA                0.2151215    0.1909567   0.2392863
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6-24 months         VitA                 NA                0.2278519    0.2135307   0.2421732
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6-24 months           Control              NA                0.3650794    0.2459991   0.4841596
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6-24 months           VitA                 NA                0.2704918    0.2146636   0.3263200
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6-24 months   Control              NA                0.1818182    0.1462122   0.2174241
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6-24 months   VitA                 NA                0.1703216    0.1503959   0.1902474
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6-24 months         Control              NA                0.4083770    0.3386387   0.4781152
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6-24 months         LNS                  NA                0.4265159    0.3954269   0.4576049
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6-24 months           Control              NA                0.4285714    0.1680273   0.6891155
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6-24 months           LNS                  NA                0.4705882    0.3639383   0.5772382
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6-24 months   Control              NA                0.3589744    0.2080488   0.5098999
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6-24 months   LNS                  NA                0.3067485    0.2357795   0.3777174
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months         Control              NA                0.4718310    0.3896506   0.5540114
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months         LNS                  NA                0.5290102    0.4718049   0.5862156
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months         Other                NA                0.5000000    0.4139737   0.5860263
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months           Control              NA                0.6538462    0.4702319   0.8374604
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months           LNS                  NA                0.5500000    0.4236042   0.6763958
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months           Other                NA                0.7297297    0.5860485   0.8734110
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months   Control              NA                0.3000000    0.0122613   0.5877387
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months   LNS                  NA                0.5000000    0.2659965   0.7340035
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months   Other                NA                0.4545455    0.1564467   0.7526442


### Parameter: E(Y)


agecat        studyid                     country                        intXmbmi                          intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  --------------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months          NA                   NA                0.1139241   0.0642258   0.1636223
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months            NA                   NA                0.0819672   0.0125573   0.1513771
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_0-6 months    NA                   NA                0.2164948   0.1341081   0.2988816
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_0-6 months          NA                   NA                0.2641129   0.2269106   0.3013152
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_0-6 months            NA                   NA                0.3646409   0.2909908   0.4382910
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_0-6 months    NA                   NA                0.1388889   0.0580087   0.2197690
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_0-6 months          NA                   NA                0.1283951   0.0957745   0.1610156
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_0-6 months            NA                   NA                0.2033898   0.1304537   0.2763260
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_0-6 months    NA                   NA                0.1034483   0.0477876   0.1591090
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months          NA                   NA                0.0800696   0.0643700   0.0957692
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months    NA                   NA                0.0578265   0.0433740   0.0722790
0-6 months    ki1119695-PROBIT            BELARUS                        Normal weight_0-6 months          NA                   NA                0.0606676   0.0475470   0.0737882
0-6 months    ki1119695-PROBIT            BELARUS                        Underweight_0-6 months            NA                   NA                0.1003937   0.0665070   0.1342804
0-6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_0-6 months    NA                   NA                0.0601719   0.0482917   0.0720522
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_0-6 months          NA                   NA                0.1931905   0.1824876   0.2038934
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_0-6 months            NA                   NA                0.2279793   0.1860729   0.2698856
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_0-6 months    NA                   NA                0.1307420   0.1158930   0.1455911
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_0-6 months          NA                   NA                0.2987421   0.2696826   0.3278017
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_0-6 months            NA                   NA                0.4069767   0.3025386   0.5114149
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_0-6 months    NA                   NA                0.1744966   0.1133503   0.2356429
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months          NA                   NA                0.3720930   0.3073319   0.4368542
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months            NA                   NA                0.3404255   0.2034913   0.4773598
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Normal weight_6-24 months         NA                   NA                0.3175429   0.2771382   0.3579477
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Underweight_6-24 months           NA                   NA                0.3944954   0.3203585   0.4686323
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Overweight or Obese_6-24 months   NA                   NA                0.1666667   0.0580614   0.2752719
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months         NA                   NA                0.3603793   0.3427404   0.3780183
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months           NA                   NA                0.4588160   0.4340329   0.4835990
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months   NA                   NA                0.2193732   0.1760194   0.2627271
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6-24 months   NA                   NA                0.1323529   0.0512103   0.2134956
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6-24 months         NA                   NA                0.3914141   0.3146850   0.4681432
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Underweight_6-24 months           NA                   NA                0.5245902   0.4137064   0.6354739
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6-24 months   NA                   NA                0.3055556   0.0993265   0.5117846
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6-24 months         NA                   NA                0.1327014   0.0868175   0.1785853
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Underweight_6-24 months           NA                   NA                0.1224490   0.0297145   0.2151835
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months         NA                   NA                0.1852260   0.1599299   0.2105221
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months           NA                   NA                0.1923077   0.0378180   0.3467973
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months   NA                   NA                0.1832335   0.1569783   0.2094888
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Normal weight_6-24 months         NA                   NA                0.3342520   0.3011949   0.3673090
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Underweight_6-24 months           NA                   NA                0.3813747   0.3239016   0.4388479
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Overweight or Obese_6-24 months   NA                   NA                0.1720430   0.0868520   0.2572340
6-24 months   ki1119695-PROBIT            BELARUS                        Normal weight_6-24 months         NA                   NA                0.0566837   0.0434404   0.0699270
6-24 months   ki1119695-PROBIT            BELARUS                        Underweight_6-24 months           NA                   NA                0.0796253   0.0519864   0.1072642
6-24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_6-24 months   NA                   NA                0.0597813   0.0474487   0.0721139
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6-24 months         NA                   NA                0.2246426   0.2123194   0.2369658
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6-24 months           NA                   NA                0.2899023   0.2390662   0.3407384
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6-24 months   NA                   NA                0.1731721   0.1557781   0.1905660
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6-24 months         NA                   NA                0.4235395   0.3951414   0.4519377
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6-24 months           NA                   NA                0.4646465   0.3659011   0.5633918
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6-24 months   NA                   NA                0.3168317   0.2525143   0.3811490
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months         NA                   NA                0.5079646   0.4667052   0.5492241
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months           NA                   NA                0.6260163   0.5401570   0.7118756
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months   NA                   NA                0.4358974   0.2782353   0.5935596


### Parameter: RR


agecat        studyid                     country                        intXmbmi                          intervention_level   baseline_level           estimate         ci_lower           ci_upper
------------  --------------------------  -----------------------------  --------------------------------  -------------------  ---------------  ----------------  ---------------  -----------------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months          Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months          LNS                  Control                 0.7404255        0.2473718          2.2162183
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months          Other                Control                 0.4951220        0.1698225          1.4435408
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months            Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months            LNS                  Control                 0.6000000        0.0403216          8.9282279
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months            Other                Control                 1.2413793        0.1404955         10.9684834
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_0-6 months    Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_0-6 months    Maternal             Control                 0.7050000        0.3260819          1.5242338
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_0-6 months          Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_0-6 months          Other                Control                 0.9727340        0.7232766          1.3082290
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_0-6 months            Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_0-6 months            Other                Control                 1.1354839        0.7674098          1.6800979
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_0-6 months    Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_0-6 months    Other                Control                 1.3421053        0.4002963          4.4997828
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_0-6 months          Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_0-6 months          Other                Control                 1.1326531        0.6283510          2.0416979
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_0-6 months            Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_0-6 months            Other                Control                 0.6200608        0.2897672          1.3268425
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_0-6 months    Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_0-6 months    Other                Control                 0.7294118        0.2350427          2.2635955
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months          Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months          Other                Control                 0.9760830        0.5558802          1.7139271
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months          Zinc                 Control                 1.0748224        0.6704607          1.7230588
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months    Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months    Other                Control                 0.7170000        0.3463829          1.4841641
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months    Zinc                 Control                 0.8718385        0.4845840          1.5685668
0-6 months    ki1119695-PROBIT            BELARUS                        Normal weight_0-6 months          Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        Normal weight_0-6 months          Maternal             Control                 0.8686107        0.5724030          1.3181002
0-6 months    ki1119695-PROBIT            BELARUS                        Underweight_0-6 months            Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        Underweight_0-6 months            Maternal             Control                 0.9317233        0.4709786          1.8432014
0-6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_0-6 months    Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_0-6 months    Maternal             Control                 0.9972358        0.6720575          1.4797532
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_0-6 months          Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_0-6 months          VitA                 Control                 1.0396335        0.9139595          1.1825884
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_0-6 months            Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_0-6 months            VitA                 Control                 0.6284032        0.4281788          0.9222564
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_0-6 months    Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_0-6 months    VitA                 Control                 1.1296566        0.8591551          1.4853243
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_0-6 months          Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_0-6 months          LNS                  Control                 0.9002364        0.6955721          1.1651209
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_0-6 months            Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_0-6 months            LNS                  Control                 0.6103286        0.3638741          1.0237086
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_0-6 months    Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_0-6 months    LNS                  Control                 1.2727273        0.4747233          3.4121658
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months          Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months          LNS                  Control                 1.0619469        0.6750518          1.6705848
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months          Other                Control                 1.3750000        0.8442030          2.2395383
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months            Control              Control                 1.0000000        1.0000000          1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months            LNS                  Control                 0.3968254        0.1570033          1.0029753
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months            Other                Control                 0.5208333        0.2127781          1.2748839
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Normal weight_6-24 months         Zinc                 Control                 0.9504683        0.7231744          1.2492008
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Underweight_6-24 months           Zinc                 Control                 1.1834003        0.6917243          2.0245585
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Overweight or Obese_6-24 months   Zinc                 Control                 1.5978261        0.4774710          5.3470224
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months         LNS                  Control                 0.8252829        0.7104569          0.9586673
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months         Other                Control                 1.0614129        0.9436247          1.1939040
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months           LNS                  Control                 0.8518105        0.7276817          0.9971133
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months           Other                Control                 0.9842756        0.8651571          1.1197948
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months   LNS                  Control                 0.8621554        0.5028279          1.4782632
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months   Other                Control                 0.8672269        0.5408097          1.3906601
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6-24 months   Maternal             Control                 1.4919355        0.4342421          5.1258764
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6-24 months         Other                Control                 1.0898713        0.7437121          1.5971495
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Underweight_6-24 months           Other                Control                 0.8582375        0.5697162          1.2928748
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6-24 months   Other                Control                 0.3355263        0.0785149          1.4338416
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6-24 months         Other                Control                 0.5858586        0.2917302          1.1765332
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Underweight_6-24 months           Other                Control                 0.9756098        0.1281621          7.4266477
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months         Other                Control                 0.9319319        0.6297272          1.3791641
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months         Zinc                 Control                 1.0517677        0.7591824          1.4571140
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months           Other                Control           3912840.4469476   388097.0308380   39449722.9989363
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months           Zinc                 Control           2762005.0213748   299320.6986045   25486616.1066259
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months   Other                Control                 0.8560223        0.5623703          1.3030100
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months   Zinc                 Control                 0.9910846        0.7005317          1.4021474
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Normal weight_6-24 months         LNS                  Control                 0.8224229        0.6880790          0.9829968
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Underweight_6-24 months           LNS                  Control                 1.1376147        0.8691617          1.4889832
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Overweight or Obese_6-24 months   LNS                  Control                 0.8571429        0.2784862          2.6381698
6-24 months   ki1119695-PROBIT            BELARUS                        Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        Normal weight_6-24 months         Maternal             Control                 0.8089085        0.5256255          1.2448652
6-24 months   ki1119695-PROBIT            BELARUS                        Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        Underweight_6-24 months           Maternal             Control                 0.8208208        0.4114374          1.6375438
6-24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_6-24 months   Maternal             Control                 0.9511116        0.6296968          1.4365854
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6-24 months         VitA                 Control                 1.0591779        0.9312507          1.2046786
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6-24 months           VitA                 Control                 0.7409123        0.5036543          1.0899362
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6-24 months   VitA                 Control                 0.9367690        0.7456981          1.1767982
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6-24 months         LNS                  Control                 1.0444172        0.8674339          1.2575106
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6-24 months           LNS                  Control                 1.0980392        0.5739121          2.1008272
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6-24 months   LNS                  Control                 0.8545136        0.5288178          1.3808036
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months         Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months         LNS                  Control                 1.1211859        0.9133602          1.3763002
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months         Other                Control                 1.0597015        0.8295797          1.3536580
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months           Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months           LNS                  Control                 0.8411765        0.5851877          1.2091469
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months           Other                Control                 1.1160572        0.7920198          1.5726674
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months   Control              Control                 1.0000000        1.0000000          1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months   LNS                  Control                 1.6666667        0.5732723          4.8454774
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months   Other                Control                 1.5151515        0.4740748          4.8424513


### Parameter: PAR


agecat        studyid                     country                        intXmbmi                          intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  --------------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months          Control              NA                -0.0584897   -0.1789420    0.0619625
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months            Control              NA                -0.0013661   -0.1424248    0.1396925
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_0-6 months    Control              NA                -0.0388243   -0.1241073    0.0464587
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_0-6 months          Control              NA                -0.0040689   -0.0482823    0.0401445
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_0-6 months            Control              NA                 0.0237318   -0.0537903    0.1012538
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_0-6 months    Control              NA                 0.0212418   -0.0624933    0.1049769
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_0-6 months          Control              NA                 0.0112779   -0.0405394    0.0630953
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_0-6 months            Control              NA                -0.0882768   -0.2467193    0.0701656
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_0-6 months    Control              NA                -0.0255840   -0.1237543    0.0725863
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months          Control              NA                 0.0023997   -0.0232598    0.0280593
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months    Control              NA                -0.0091191   -0.0362284    0.0179902
0-6 months    ki1119695-PROBIT            BELARUS                        Normal weight_0-6 months          Control              NA                -0.0043964   -0.0175048    0.0087119
0-6 months    ki1119695-PROBIT            BELARUS                        Underweight_0-6 months            Control              NA                -0.0036063   -0.0391521    0.0319395
0-6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_0-6 months    Control              NA                -0.0000840   -0.0120586    0.0118907
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_0-6 months          Control              NA                 0.0055492   -0.0126675    0.0237660
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_0-6 months            Control              NA                -0.0934493   -0.1794965   -0.0074021
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_0-6 months    Control              NA                 0.0116455   -0.0136798    0.0369709
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_0-6 months          Control              NA                -0.0276468   -0.0979552    0.0426617
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_0-6 months            Control              NA                -0.1930233   -0.4197408    0.0336943
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_0-6 months    Control              NA                 0.0316395   -0.0879232    0.1512022
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months          Control              NA                 0.0387597   -0.0712323    0.1487517
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months            Control              NA                -0.2595745   -0.5295105    0.0103616
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Normal weight_6-24 months         Control              NA                -0.0122890   -0.0787636    0.0541857
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Underweight_6-24 months           Control              NA                 0.0483416   -0.1009071    0.1975903
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Overweight or Obese_6-24 months   Control              NA                 0.0523810   -0.0759407    0.1807026
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months         Control              NA                -0.0041740   -0.0352944    0.0269465
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months           Control              NA                -0.0223668   -0.0666251    0.0218914
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months   Control              NA                -0.0248128   -0.1028880    0.0532623
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6-24 months   Control              NA                 0.0242448   -0.0511716    0.0996613
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6-24 months         Control              NA                 0.0185328   -0.0649818    0.1020473
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Underweight_6-24 months           Control              NA                -0.0379098   -0.1443158    0.0684962
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6-24 months   Control              NA                -0.1650327   -0.4017360    0.0716706
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6-24 months         Control              NA                -0.0569538   -0.1388689    0.0249614
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Underweight_6-24 months           Control              NA                -0.0025510   -0.2139917    0.2088896
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months         Control              NA                 0.0015526   -0.0399438    0.0430489
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months           Control              NA                 0.1923076    0.0378180    0.3467973
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months   Control              NA                -0.0077212   -0.0551764    0.0397339
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Normal weight_6-24 months         Control              NA                -0.0518547   -0.1023561   -0.0013532
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Underweight_6-24 months           Control              NA                 0.0346005   -0.0367357    0.1059368
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Overweight or Obese_6-24 months   Control              NA                -0.0224014   -0.1928485    0.1480457
6-24 months   ki1119695-PROBIT            BELARUS                        Normal weight_6-24 months         Control              NA                -0.0063157   -0.0197757    0.0071443
6-24 months   ki1119695-PROBIT            BELARUS                        Underweight_6-24 months           Control              NA                -0.0081796   -0.0373731    0.0210139
6-24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_6-24 months   Control              NA                -0.0015304   -0.0140916    0.0110307
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6-24 months         Control              NA                 0.0095211   -0.0114879    0.0305301
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6-24 months           Control              NA                -0.0751771   -0.1797934    0.0294392
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6-24 months   Control              NA                -0.0086461   -0.0393327    0.0220405
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6-24 months         Control              NA                 0.0151626   -0.0486638    0.0789889
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6-24 months           Control              NA                 0.0360750   -0.2056574    0.2778075
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6-24 months   Control              NA                -0.0421427   -0.1767517    0.0924663
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months         Control              NA                 0.0361336   -0.0350086    0.1072759
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months           Control              NA                -0.0278299   -0.1916373    0.1359775
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months   Control              NA                 0.1358974   -0.1194311    0.3912260


### Parameter: PAF


agecat        studyid                     country                        intXmbmi                          intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  --------------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_0-6 months          Control              NA                -0.5134100   -2.0142381    0.2401364
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_0-6 months            Control              NA                -0.0166667   -4.5244649    0.8129029
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_0-6 months    Control              NA                -0.1793313   -0.6441484    0.1540774
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_0-6 months          Control              NA                -0.0154060   -0.1962217    0.1380784
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_0-6 months            Control              NA                 0.0650826   -0.1719389    0.2541672
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_0-6 months    Control              NA                 0.1529412   -0.7523568    0.5905465
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_0-6 months          Control              NA                 0.0878378   -0.4190791    0.4136762
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_0-6 months            Control              NA                -0.4340278   -1.4615908    0.1645908
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_0-6 months    Control              NA                -0.2473118   -1.6550538    0.4140281
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_0-6 months          Control              NA                 0.0299705   -0.3497130    0.3028463
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_0-6 months    Control              NA                -0.1576973   -0.7335110    0.2268506
0-6 months    ki1119695-PROBIT            BELARUS                        Normal weight_0-6 months          Control              NA                -0.0724674   -0.3078156    0.1205287
0-6 months    ki1119695-PROBIT            BELARUS                        Underweight_0-6 months            Control              NA                -0.0359216   -0.4516954    0.2607723
0-6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_0-6 months    Control              NA                -0.0013954   -0.2214849    0.1790380
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_0-6 months          Control              NA                 0.0287241   -0.0702913    0.1185792
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_0-6 months            Control              NA                -0.4099026   -0.8410370   -0.0797313
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_0-6 months    Control              NA                 0.0890726   -0.1265309    0.2634124
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_0-6 months          Control              NA                -0.0925439   -0.3551487    0.1191726
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_0-6 months            Control              NA                -0.4742857   -1.1709323   -0.0011912
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_0-6 months    Control              NA                 0.1813187   -0.8861209    0.6446468
0-6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_0-6 months          Control              NA                 0.1041667   -0.2460935    0.3559734
0-6 months    ki1148112-LCNI-5            MALAWI                         Underweight_0-6 months            Control              NA                -0.7625000   -1.8388692   -0.0942407
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Normal weight_6-24 months         Control              NA                -0.0387002   -0.2724611    0.1521170
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Underweight_6-24 months           Control              NA                 0.1225403   -0.3426133    0.4265396
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Overweight or Obese_6-24 months   Control              NA                 0.3142857   -0.8829813    0.7502874
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6-24 months         Control              NA                -0.0115821   -0.1017302    0.0711896
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6-24 months           Control              NA                -0.0487490   -0.1498169    0.0434351
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6-24 months   Control              NA                -0.1131078   -0.5321257    0.1913137
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6-24 months   Control              NA                 0.1831832   -0.6241975    0.5892188
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6-24 months         Control              NA                 0.0473483   -0.1892190    0.2368560
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Underweight_6-24 months           Control              NA                -0.0722656   -0.3058575    0.1195413
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6-24 months   Control              NA                -0.5401070   -1.6647223    0.1098775
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6-24 months         Control              NA                -0.4291872   -1.1857120    0.0654871
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Underweight_6-24 months           Control              NA                -0.0208333   -4.5405509    0.8119139
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6-24 months         Control              NA                 0.0083819   -0.2429724    0.2089073
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6-24 months           Control              NA                 0.9999997    0.9999974    1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6-24 months   Control              NA                -0.0421388   -0.3360990    0.1871461
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Normal weight_6-24 months         Control              NA                -0.1551364   -0.3232435   -0.0083860
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Underweight_6-24 months           Control              NA                 0.0907258   -0.1093601    0.2547239
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Overweight or Obese_6-24 months   Control              NA                -0.1302083   -1.7256366    0.5313495
6-24 months   ki1119695-PROBIT            BELARUS                        Normal weight_6-24 months         Control              NA                -0.1114196   -0.3605802    0.0921127
6-24 months   ki1119695-PROBIT            BELARUS                        Underweight_6-24 months           Control              NA                -0.1027260   -0.5350399    0.2078352
6-24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_6-24 months   Control              NA                -0.0256007   -0.2581038    0.1639349
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6-24 months         Control              NA                 0.0423833   -0.0558435    0.1314720
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6-24 months           Control              NA                -0.2593187   -0.6773124    0.0545091
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6-24 months   Control              NA                -0.0499278   -0.2429157    0.1130947
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6-24 months         Control              NA                 0.0357996   -0.1273220    0.1753179
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6-24 months           Control              NA                 0.0776397   -0.6215678    0.4753544
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6-24 months   Control              NA                -0.1330128   -0.6485582    0.2213086
6-24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_6-24 months         Control              NA                 0.0711341   -0.0801565    0.2012344
6-24 months   ki1148112-LCNI-5            MALAWI                         Underweight_6-24 months           Control              NA                -0.0444555   -0.3420448    0.1871453
6-24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6-24 months   Control              NA                 0.3117647   -0.6136097    0.7064545
