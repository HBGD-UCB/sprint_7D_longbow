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

* mbmi
* agecat
* studyid
* country

## Data Summary

mbmi        agecat        studyid                     country                        tr          ever_stunted   n_cell      n
----------  ------------  --------------------------  -----------------------------  ---------  -------------  -------  -----
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       24    158
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        5    158
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       41    158
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        6    158
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       75    158
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        7    158
<18.5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       11     61
<18.5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        1     61
<18.5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       19     61
<18.5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        1     61
<18.5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       26     61
<18.5       0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        3     61
>=30        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0        1      2
>=30        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0        1      2
[25-30)     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        2     11
[25-30)     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0        1     11
[25-30)     0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0        8     11
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       35     97
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       12     97
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       41     97
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        9     97
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       58    181
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       30    181
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       57    181
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       36    181
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0      161    496
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       59    496
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0      204    496
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       72    496
>=30        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0        5      5
[25-30)     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       10     31
[25-30)     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1        2     31
[25-30)     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       16     31
[25-30)     0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1        3     31
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       98    405
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1       13    405
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0      255    405
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       39    405
[25-30)     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       24     96
[25-30)     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        3     96
[25-30)     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0       63     96
[25-30)     0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1        6     96
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0       17    118
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        7    118
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0       77    118
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1       17    118
>=30        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                0        3     20
>=30        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control                1        1     20
>=30        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  0       14     20
>=30        0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                  1        2     20
>=30        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       71    308
>=30        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        4    308
>=30        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       79    308
>=30        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        4    308
>=30        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      142    308
>=30        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        8    308
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      285   1149
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       24   1149
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      256   1149
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       21   1149
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      516   1149
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       47   1149
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      152    695
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       12    695
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      159    695
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        8    695
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      342    695
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       22    695
<18.5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        1     35
<18.5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        0     35
<18.5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       11     35
<18.5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        1     35
<18.5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       19     35
<18.5       0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        3     35
[18.5-25)   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       28     31
[18.5-25)   0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        3     31
[25-30)     0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0        2      2
<18.5       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0        3      5
<18.5       0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        2      5
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     3578   7879
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control                1      249   7879
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     3823   7879
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1      229   7879
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Control                0      224    508
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Control                1       26    508
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0      233    508
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1       25    508
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Control                0      684   1483
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Control                1       43   1483
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0      711   1483
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1       45   1483
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     1593   3403
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Control                1      103   3403
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     1604   3403
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1      103   3403
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1078   5228
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      249   5228
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     3140   5228
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      761   5228
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       57    386
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       27    386
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      241    386
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1       61    386
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       95    440
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       11    440
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      291    440
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1       43    440
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      334   1541
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       47   1541
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1002   1541
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      158   1541
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       97    954
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       47    954
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      572    954
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      238    954
[25-30)     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0       21    133
[25-30)     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1        4    133
[25-30)     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0       87    133
[25-30)     0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       21    133
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0        6     86
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1        9     86
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0       45     86
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       26     86
>=30        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0        3     16
>=30        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1        0     16
>=30        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0       12     16
>=30        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1        1     16
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0       36    215
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1       18    215
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       73    215
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1       40    215
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       26    215
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1       22    215
<18.5       0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        4     47
<18.5       0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        6     47
<18.5       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       16     47
<18.5       0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1        5     47
<18.5       0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       11     47
<18.5       0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        5     47
[25-30)     0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        3      9
[25-30)     0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1        1      9
[25-30)     0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0        4      9
[25-30)     0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1        0      9
[25-30)     0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0        1      9
[25-30)     0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1        0      9
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      457   2253
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      101   2253
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      495   2253
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       75   2253
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      912   2253
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      213   2253
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       62    280
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       12    280
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       70    280
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        9    280
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      110    280
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       17    280
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      196   1132
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       68   1132
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      250   1132
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       58   1132
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      420   1132
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      140   1132
>=30        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        4     36
>=30        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        0     36
>=30        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0        6     36
>=30        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        0     36
>=30        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       24     36
>=30        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        2     36
>=30        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       38     67
>=30        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       29     67
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       33    128
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       32    128
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       41    128
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       22    128
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0      134    415
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       45    415
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      173    415
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       63    415
>=30        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0        4      6
>=30        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1        1      6
>=30        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0        1      6
>=30        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1        0      6
[25-30)     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0        7     29
[25-30)     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1        4     29
[25-30)     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       15     29
[25-30)     6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1        3     29
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       68    318
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       19    318
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      168    318
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       63    318
[25-30)     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       22     85
[25-30)     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        1     85
[25-30)     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       49     85
[25-30)     6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       13     85
>=30        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0        2     16
>=30        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        1     16
>=30        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       12     16
>=30        6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1        1     16
<18.5       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0        9     78
<18.5       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        4     78
<18.5       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       48     78
<18.5       6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       17     78
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       50    258
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        8    258
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       63    258
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        6    258
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      112    258
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       19    258
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      219    943
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       38    943
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      199    943
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       29    943
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      389    943
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       69    943
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      123    578
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       18    578
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      126    578
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       14    578
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      259    578
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       38    578
<18.5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        1     29
<18.5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        0     29
<18.5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        7     29
<18.5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        3     29
<18.5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       15     29
<18.5       6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        3     29
[18.5-25)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     3047   3407
[18.5-25)   6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      360   3407
[25-30)     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      287    312
[25-30)     6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1       25    312
<18.5       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      327    366
<18.5       6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1       39    366
>=30        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       38     40
>=30        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        2     40
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      390   2103
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1      112   2103
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0     1391   2103
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      210   2103
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0       81    355
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       15    355
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      212    355
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1       47    355
[25-30)     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0       25    150
[25-30)     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1        1    150
[25-30)     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      115    150
[25-30)     6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1        9    150
>=30        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0        4     23
>=30        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1        1     23
>=30        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0       13     23
>=30        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1        5     23
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     3710   8028
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control                1      168   8028
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     3986   8028
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      164   8028
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Control                0      234    506
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Control                1        8    506
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0      252    506
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       12    506
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Control                0      704   1503
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Control                1       28   1503
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0      739   1503
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       32   1503
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     1644   3479
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Control                1       81   3479
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     1669   3479
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       85   3479
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1083   5036
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      198   5036
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     3198   5036
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      557   5036
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      335   1552
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       48   1552
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1022   1552
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      147   1552
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       60    366
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       19    366
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      235    366
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1       52    366
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      110    463
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       10    463
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      315    463
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1       28    463
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0      128    958
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       32    958
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      615    958
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      183    958
[25-30)     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       23    146
[25-30)     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        2    146
[25-30)     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      105    146
[25-30)     6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       16    146
>=30        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0        4     24
>=30        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        0     24
>=30        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0       16     24
>=30        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1        4     24
<18.5       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       11     78
<18.5       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        3     78
<18.5       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0       51     78
<18.5       6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       13     78
[18.5-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        1      2
[18.5-25)   6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        1      2
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       83    459
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       33    459
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      161    459
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       74    459
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       78    459
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       30    459
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       11     92
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        9     92
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       36     92
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       11     92
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       13     92
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       12     92
[25-30)     6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0        8     35
[25-30)     6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        1     35
[25-30)     6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       11     35
[25-30)     6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1        4     35
[25-30)     6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0        8     35
[25-30)     6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1        3     35
>=30        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1        1      1
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      442   2874
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      258   2874
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      492   2874
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      216   2874
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      896   2874
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      570   2874
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       62    316
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       21    316
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       69    316
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       19    316
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      111    316
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       34    316
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      193   1559
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      180   1559
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      239   1559
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      167   1559
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      409   1559
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      371   1559
>=30        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        4     37
>=30        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        0     37
>=30        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0        6     37
>=30        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        1     37
>=30        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       24     37
>=30        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        2     37
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       73    186
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       23    186
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       70    186
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       20    186
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       28    213
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       77    213
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       36    213
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       72    213
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0      122    596
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1      141    596
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      157    596
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1      176    596
>=30        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0        4      6
>=30        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1        1      6
>=30        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0        1      6
>=30        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1        0      6
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0        6     37
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       10     37
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       15     37
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1        6     37
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       68    406
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       43    406
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0      170    406
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1      125    406
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0       22     96
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        5     96
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       47     96
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       22     96
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0        9    118
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1       15    118
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       49    118
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1       45    118
>=30        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                0        2     20
>=30        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control                1        2     20
>=30        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  0       12     20
>=30        0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                  1        4     20
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0       58    311
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       17    311
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0       70    311
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       15    311
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      116    311
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       35    311
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      238   1161
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       73   1161
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      215   1161
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       64   1161
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      432   1161
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1      139   1161
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0      127    700
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1       39    700
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0      135    700
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1       32    700
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0      280    700
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1       87    700
<18.5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        1     35
<18.5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        0     35
<18.5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        6     35
<18.5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        6     35
<18.5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0       16     35
<18.5       0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        6     35
[18.5-25)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     2992   4578
[18.5-25)   0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1     1586   4578
>=30        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       38     50
>=30        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1       12     50
<18.5       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      320    560
<18.5       0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      240    560
[25-30)     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      281    372
[25-30)     0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1       91    372
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      380   2540
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1      239   2540
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0     1311   2540
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      610   2540
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0       81    451
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       43    451
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      198    451
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      129    451
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0       25    160
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1        6    160
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      112    160
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1       17    160
>=30        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0        4     26
>=30        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1        1     26
>=30        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0       13     26
>=30        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1        8     26
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     3400   8149
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      546   8149
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     3724   8149
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      479   8149
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Control                0      210    523
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Control                1       44    523
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0      224    523
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       45    523
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Control                0      650   1531
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Control                1       96   1531
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0      696   1531
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       89   1531
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     1525   3520
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      223   3520
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     1541   3520
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      231   3520
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1041   6302
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      549   6302
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     3052   6302
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1     1660   6302
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      334   1875
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      128   1875
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     1022   1875
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      391   1875
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0       50    483
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       57    483
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      227    483
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      149    483
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      104    541
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       29    541
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      306    541
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      102    541
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0      125   1541
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1      125   1541
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      638   1541
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      653   1541
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       23    213
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       17    213
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      109    213
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       64    213
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0        8    136
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       15    136
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0       47    136
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       66    136
>=30        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0        4     31
>=30        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        1     31
>=30        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0       18     31
>=30        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1        8     31
[18.5-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        1      3
[18.5-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        0      3
[18.5-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        1      3
[18.5-25)   0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        1      3
<18.5       0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        1      1
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       79    652
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       85    652
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      140    652
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1      195    652
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       66    652
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       87    652
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       10    145
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       23    145
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       30    145
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       38    145
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       12    145
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       32    145
[25-30)     0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0        7     39
[25-30)     0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        4     39
[25-30)     0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0        9     39
[25-30)     0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1        8     39
[25-30)     0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0        6     39
[25-30)     0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1        5     39
>=30        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1        1      1
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      336   1601
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       56   1601
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0     1055   1601
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      154   1601
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0       54    259
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1        9    259
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      158    259
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       38    259
[25-30)     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0       28    124
[25-30)     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1        0    124
[25-30)     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0       87    124
[25-30)     6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1        9    124
>=30        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0        3     18
>=30        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1        2     18
>=30        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0       10     18
>=30        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1        3     18
[18.5-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0        1      2
[18.5-25)   6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0        1      2
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      319   1921
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1      157   1921
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      992   1921
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      453   1921
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0       51    327
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       27    327
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      147    327
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      102    327
[25-30)     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0       28    129
[25-30)     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1        0    129
[25-30)     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0       84    129
[25-30)     0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       17    129
>=30        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0        3     21
>=30        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1        4     21
>=30        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0       10     21
>=30        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1        4     21
[18.5-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0        1      2
[18.5-25)   0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0        1      2
<18.5       0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1        1      1


The following strata were considered:

* mbmi: [18.5-25), agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: [18.5-25), agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [18.5-25), agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: [18.5-25), agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [25-30), agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [25-30), agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: <18.5, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: <18.5, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: <18.5, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: >=30, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mbmi: >=30, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: >=30, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: >=30, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: >=30, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: >=30, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: >=30, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: >=30, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: >=30, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: >=30, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mbmi: >=30, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: >=30, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: >=30, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: >=30, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: >=30, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: >=30, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: >=30, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: >=30, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mbmi: >=30, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: >=30, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: >=30, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: >=30, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: >=30, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: >=30, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: >=30, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: >=30, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: >=30, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* mbmi: <18.5, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: >=30, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: >=30, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [18.5-25), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: >=30, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: <18.5, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [25-30), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: >=30, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: >=30, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: >=30, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: >=30, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: <18.5, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [18.5-25), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: [25-30), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: >=30, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: >=30, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* mbmi: >=30, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [18.5-25), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: <18.5, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: [25-30), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [25-30), agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: >=30, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: [25-30), agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: >=30, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: <18.5, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     320 240
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     327  39
##           ever_stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     38 12
##           ever_stunted
## tr         0
##   Control  5
##   LNS      0
##   Maternal 0
##   Other    0
##   VitA     0
##   Zinc     0
##           ever_stunted
## tr          0
##   Control  38
##   LNS       0
##   Maternal 29
##   Other     0
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     2992 1586
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     3047  360
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     281  91
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     287  25
```




# Results Detail

## Results Plots
![](/tmp/92efd72b-3349-4ea3-86d2-592d318635fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92efd72b-3349-4ea3-86d2-592d318635fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92efd72b-3349-4ea3-86d2-592d318635fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92efd72b-3349-4ea3-86d2-592d318635fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


mbmi        agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.3298319   0.2629352   0.3967287
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.3134948   0.2623228   0.3646668
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3685714   0.3328279   0.4043150
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3050847   0.2711626   0.3390069
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3888131   0.3638548   0.4137713
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5361217   0.5014797   0.5707636
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5285285   0.4785878   0.5784693
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3873874   0.3625798   0.4121950
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4237288   0.3827059   0.4647517
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2347267   0.1876024   0.2818509
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2293907   0.1800349   0.2787465
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2434326   0.2082174   0.2786478
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3861066   0.3738892   0.3983240
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3175429   0.2883170   0.3467689
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1383680   0.1241222   0.1526138
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1139662   0.1032647   0.1246678
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3452830   0.3393862   0.3511798
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3522920   0.3420932   0.3624908
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5000000   0.4899417   0.5100583
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5058095   0.4829540   0.5286649
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5182927   0.4417615   0.5948239
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5820896   0.5292334   0.6349457
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.5686275   0.4900902   0.6471647
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1724138   0.0344960   0.3103316
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1276596   0.0319517   0.2233674
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0853659   0.0246942   0.1460375
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2681818   0.2372268   0.2991369
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2608696   0.2404006   0.2813385
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1171171   0.1007017   0.1335326
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1326531   0.1044719   0.1608342
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0776699   0.0478142   0.1075256
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0758123   0.0446272   0.1069974
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0834813   0.0606228   0.1063399
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0650640   0.0550128   0.0751153
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0565153   0.0486347   0.0643959
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1876413   0.1823088   0.1929738
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1950782   0.1857987   0.2043577
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3263889   0.3148229   0.3379548
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2938272   0.2671787   0.3204756
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3333333   0.2073082   0.4593585
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3539823   0.2656063   0.4423583
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4583333   0.3170482   0.5996185
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.1428571   0.0829278   0.2027865
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.1273780   0.0950526   0.1597034
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1810036   0.1490506   0.2129566
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1315789   0.1038224   0.1593355
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1893333   0.1664350   0.2122316
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2513966   0.2159826   0.2868107
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2669492   0.2300232   0.3038751
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2183908   0.1946018   0.2421798
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2727273   0.2309419   0.3145126
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1478599   0.1044396   0.1912802
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1271930   0.0839215   0.1704645
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1506550   0.1178772   0.1834328
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2231076   0.2095086   0.2367065
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1311680   0.1110327   0.1513034
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0433213   0.0334732   0.0531694
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0395181   0.0355072   0.0435289
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1545667   0.1495308   0.1596027
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1483356   0.1398581   0.1568130
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2000000   0.1896431   0.2103569
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2293233   0.2050141   0.2536325
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2844828   0.2022905   0.3666750
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3148936   0.2554440   0.3743432
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2777778   0.1932121   0.3623434
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.3461538   0.1970802   0.4952275
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.4096386   0.3122921   0.5069850
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4825737   0.4318467   0.5333007
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4113300   0.3634499   0.4592102
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4756410   0.4405825   0.5106996
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.7333333   0.6699551   0.7967115
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.6666667   0.6404367   0.6928966
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.6250000   0.5854383   0.6645617
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4787234   0.3979340   0.5595128
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3467742   0.3284664   0.3650819
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3944954   0.3408796   0.4481112
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1732283   0.1428387   0.2036180
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1672862   0.1383328   0.1962397
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.5327103   0.5117459   0.5536746
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3962766   0.3577498   0.4348034
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6521739   0.6191340   0.6852138
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5840708   0.5082840   0.6598576
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.6969697   0.5396280   0.8543114
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5588235   0.4403995   0.6772476
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.7272727   0.5952230   0.8593224
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3409091   0.2924994   0.3893188
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3870968   0.3357579   0.4384357
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2916667   0.2545232   0.3288101
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1808511   0.1186038   0.2430983
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1040000   0.0755510   0.1324490
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0968992   0.0780515   0.1157470
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3214286   0.2996663   0.3431908
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2019868   0.1665141   0.2374594
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6000000   0.5565049   0.6434951
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3661972   0.2731393   0.4592551
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.1428571   0.0226138   0.2631005
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.1938776   0.1299037   0.2578514
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2575758   0.2048022   0.3103493
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1883117   0.1446301   0.2319932
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2500000   0.2141205   0.2858795
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4923077   0.4379765   0.5466389
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3492063   0.3084626   0.3899501
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1562500   0.1360178   0.1764822
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1814672   0.1433947   0.2195397
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0330579   0.0226374   0.0434783
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0454545   0.0346806   0.0562285
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2405063   0.2201359   0.2608767
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1811847   0.1461937   0.2161756
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4500000   0.2307731   0.6692269
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2340426   0.1123337   0.3557514
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.4800000   0.2830874   0.6769126
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2530120   0.1593368   0.3466873
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2159091   0.1298070   0.3020112
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2344828   0.1654134   0.3035521
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.6250000   0.4193724   0.8306276
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2857143   0.1777114   0.3937172
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1851852   0.1437599   0.2266104
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.3188406   0.2393920   0.3982892
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2349398   0.1703995   0.2994800
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1916168   0.1318822   0.2513513
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2370572   0.1935163   0.2805982
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.1935484   0.1578383   0.2292585
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1317829   0.0562115   0.2073544
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1275744   0.1124902   0.1426585
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1303612   0.1177798   0.1429425
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2770563   0.2669981   0.2871145
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2767162   0.2591327   0.2942997
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4250000   0.3961631   0.4538369
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3699422   0.3113728   0.4285116
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0731707   0.0332859   0.1130555
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0479042   0.0154904   0.0803180
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0604396   0.0359414   0.0849377
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0607311   0.0504052   0.0710571
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0603398   0.0528651   0.0678144
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1233596   0.1151929   0.1315263
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1362069   0.1213434   0.1510704
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1621622   0.0780296   0.2462947
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1139241   0.0437374   0.1841107
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1338583   0.0745329   0.1931836
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1276596   0.0725301   0.1827891
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1000000   0.0502628   0.1497372
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1279461   0.0899245   0.1659678
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0469565   0.0362446   0.0576684
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0484607   0.0400175   0.0569039
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1253264   0.1171410   0.1335118
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1257485   0.1114275   0.1400695
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2395833   0.1953962   0.2837704
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2222222   0.1805498   0.2638946
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2266667   0.1317606   0.3215727
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1764706   0.0952972   0.2576440
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2317881   0.1643749   0.2992013
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1286863   0.1077366   0.1496360
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1133758   0.1009726   0.1257790
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2180451   0.2007771   0.2353131
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2500000   0.2182836   0.2817164
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2553191   0.1946033   0.3160350
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.1800000   0.1248234   0.2351766
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0591472   0.0495924   0.0687020
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0595238   0.0481490   0.0708986
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1037736   0.0897714   0.1177757
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1287425   0.1014466   0.1560384
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1379310   0.0490151   0.2268469
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0869565   0.0203428   0.1535702
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1450382   0.0846196   0.2054567
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0382514   0.0246102   0.0518926
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0415045   0.0346366   0.0483725
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0833333   0.0705029   0.0961638
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0816327   0.0601433   0.1031220


### Parameter: E(Y)


mbmi        agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.3175429   0.2771382   0.3579477
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3632568   0.3456707   0.3808429
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5318792   0.4710417   0.5927167
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4137931   0.3658266   0.4617596
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2377261   0.2132291   0.2622231
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3342520   0.3011949   0.3673090
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1257823   0.1062969   0.1452677
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3505236   0.3387426   0.3623047
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5048670   0.4798959   0.5298380
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5628834   0.5247799   0.6009870
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1139241   0.0642258   0.1636223
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2641129   0.2269106   0.3013152
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1283951   0.0957745   0.1610156
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0800696   0.0643700   0.0957692
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0606676   0.0475470   0.0737882
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1931905   0.1824876   0.2038934
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2987421   0.2696826   0.3278017
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3720930   0.3073319   0.4368542
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.1311680   0.1034178   0.1589182
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1726587   0.1570488   0.1882686
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2602410   0.2091772   0.3113047
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2578616   0.2097052   0.3060181
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1442206   0.1217860   0.1666551
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1531146   0.1256501   0.1805791
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0413553   0.0305777   0.0521328
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1499206   0.1400598   0.1597813
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2244259   0.1979933   0.2508585
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2984749   0.2565675   0.3403824
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.3944954   0.3203585   0.4686323
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4605516   0.4358014   0.4853018
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.6995305   0.6268573   0.7722037
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.5084746   0.4178882   0.5990609
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3813747   0.3239016   0.4388479
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1701721   0.1284448   0.2118994
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.4265010   0.3823490   0.4706531
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5955882   0.5128005   0.6783760
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.6413793   0.5630468   0.7197118
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3646409   0.2909908   0.4382910
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2033898   0.1304537   0.2763260
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.1003937   0.0665070   0.1342804
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2279793   0.1860729   0.2698856
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4069767   0.3025386   0.5114149
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.1814672   0.1294409   0.2334935
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2349823   0.2102725   0.2596922
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4218750   0.3275185   0.5162315
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1746479   0.1321525   0.2171432
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0395257   0.0248905   0.0541609
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1939891   0.1534232   0.2345549
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3478261   0.2499695   0.4456827
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2341772   0.1874113   0.2809431
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4324324   0.1759077   0.6889571
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2812500   0.1908390   0.3716610
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2257143   0.1947230   0.2567056
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1437500   0.0599634   0.2275366
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1289773   0.1093309   0.1486237
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2768000   0.2565430   0.2970570
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3802817   0.3149340   0.4456293
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0604317   0.0427034   0.0781599
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0605348   0.0477730   0.0732966
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1330305   0.1160690   0.1499920
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1357143   0.0955271   0.1759015
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1211073   0.0944869   0.1477276
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0477149   0.0340768   0.0613529
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1256443   0.1091491   0.1421395
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2311828   0.1704321   0.2919335
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2154341   0.1696685   0.2611997
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1208361   0.0958761   0.1457960
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2421442   0.2060130   0.2782753
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2164948   0.1341081   0.2988816
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0593392   0.0444778   0.0742006
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1227273   0.0920333   0.1534213
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1279070   0.0870741   0.1687399
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0399202   0.0246526   0.0551878
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0820734   0.0570451   0.1071018


### Parameter: RR


mbmi        agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           0.9504683   0.7231744   1.2492008
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8277493   0.7142056   0.9593441
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0549193   0.9390992   1.1850235
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9858369   0.8792041   1.1054025
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.0938116   0.9739373   1.2284403
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9772671   0.7281319   1.3116458
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0370895   0.8097470   1.3282600
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8224229   0.7460529   0.9066106
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8236459   0.7176646   0.9452781
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0202993   0.9865751   1.0551763
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0116189   0.9627999   1.0629133
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1230904   0.9443465   1.3356666
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0971165   0.8962799   1.3429561
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7404255   0.2473718   2.2162183
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.4951220   0.1698225   1.4435408
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9727340   0.8458682   1.1186275
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1326531   0.8781382   1.4609352
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9760830   0.5558802   1.7139271
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0748224   0.6704607   1.7230588
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8686107   0.7057290   1.0690853
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0396335   0.9835939   1.0988660
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9002364   0.8167117   0.9923031
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0619469   0.6750518   1.6705848
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.3750000   0.8442030   2.2395383
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           0.8916460   0.5375899   1.4788830
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7269411   0.5521255   0.9571073
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0460198   0.8445130   1.2956075
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0618644   0.8712252   1.2942188
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2488038   1.0347892   1.5070808
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8602262   0.5488256   1.3483137
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0189037   0.7069844   1.4684409
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.5879138   0.4979344   0.6941530
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9122088   0.7118817   1.1689090
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9596861   0.8985846   1.0249423
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1466165   1.0190173   1.2901935
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1068988   0.7838245   1.5631367
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.9764310   0.6417480   1.4856572
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           1.1834003   0.6917243   2.0245585
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8523673   0.7286368   0.9971085
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9856339   0.8668799   1.1206560
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9090909   0.8266944   0.9996999
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.7659574   0.6396274   0.9172383
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.1376147   0.9829764   1.3165801
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9656979   0.7531072   1.2382996
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7438876   0.6698173   0.8261489
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8955752   0.7791245   1.0294311
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8017903   0.5882868   1.0927793
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0434783   0.7810249   1.3941257
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1354839   0.9340255   1.3803945
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.6200608   0.4295865   0.8949895
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9317233   0.6636546   1.3080726
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.6284032   0.5205908   0.7585432
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.6103286   0.4685957   0.7949305
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control           1.3571429   0.5303861   3.4726341
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7310924   0.5364899   0.9962838
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9705882   0.7557807   1.2464483
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7093254   0.6048119   0.8318992
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           1.1613900   0.9033899   1.4930725
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.3750000   0.9183406   2.0587406
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7533468   0.6101140   0.9302055
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.5200946   0.2550435   1.0605970
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0666667   0.5641976   2.0166301
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8533550   0.4952267   1.4704675
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9267652   0.5774253   1.4874542
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.4571429   0.2761015   0.7568941
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.7217391   1.2317991   2.4065496
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8155996   0.5382996   1.2357480
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0090128   0.7250726   1.4041447
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6808786   0.3728583   1.2433560
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.0218445   0.8775777   1.1898276
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9987726   0.9282900   1.0746067
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8704522   0.7327214   1.0340726
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6546906   0.2745892   1.5609492
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8260073   0.4187711   1.6292627
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9935559   0.8052001   1.2259727
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1041453   0.9718401   1.2544623
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7025316   0.3139560   1.5720377
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8254593   0.4172126   1.6331794
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7833333   0.4053979   1.5136021
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0022447   0.5933483   1.6929253
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.0320326   0.7748865   1.3745126
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0033683   0.8799216   1.1441336
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.9275362   0.7130190   1.2065926
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7785467   0.4179739   1.4501742
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0225945   0.6141837   1.7025840
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8810244   0.7247624   1.0709772
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1465517   0.9872857   1.3315101
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.7050000   0.4782984   1.0391526
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           1.0063677   0.7837049   1.2922924
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.2406097   0.9649202   1.5950671
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6304348   0.2316454   1.7157605
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0515267   0.4880781   2.2654335
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.0850472   0.7333581   1.6053925
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9795918   0.7221058   1.3288914


### Parameter: PAR


mbmi        agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0122890   -0.0787636    0.0541857
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0053146   -0.0363713    0.0257421
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0042425   -0.0542766    0.0457916
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0264057   -0.0146475    0.0674589
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0029994   -0.0373871    0.0433859
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0518547   -0.0832357   -0.0204737
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0125857   -0.0245835   -0.0005879
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0052406   -0.0049584    0.0154397
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0048670   -0.0179888    0.0277227
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0445908   -0.0214579    0.1106394
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0584897   -0.1789420    0.0619625
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0040689   -0.0249273    0.0167894
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0112779   -0.0169113    0.0394672
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0023997   -0.0232598    0.0280593
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0043964   -0.0124604    0.0036675
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0055492   -0.0037307    0.0148291
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0276468   -0.0543054   -0.0009881
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0387597   -0.0712323    0.1487517
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0116891   -0.0644584    0.0410802
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0083449   -0.0358935    0.0192037
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0088443   -0.0287497    0.0464384
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0394708   -0.0023995    0.0813412
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0036393   -0.0405311    0.0332524
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0699930   -0.0955855   -0.0444004
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0019660   -0.0061429    0.0022108
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0046462   -0.0131240    0.0038316
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0244259    0.0001068    0.0487450
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0139922   -0.0574026    0.0853870
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0483416   -0.1009071    0.1975903
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0220221   -0.0662316    0.0221874
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0338028   -0.0706891    0.0030835
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.1165254   -0.1980163   -0.0350346
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0346005   -0.0193462    0.0885472
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0030563   -0.0322818    0.0261693
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1062092   -0.1450667   -0.0673518
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0565857   -0.1324947    0.0193233
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0555904   -0.1956759    0.0844951
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0237318   -0.0331212    0.0805848
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0882768   -0.1510466   -0.0255071
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0036063   -0.0228352    0.0156226
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0934493   -0.1292620   -0.0576366
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1930233   -0.2879733   -0.0980732
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0386100   -0.0698469    0.1470670
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0225934   -0.0683820    0.0231951
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0704327   -0.1448388    0.0039734
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0183979   -0.0192699    0.0560656
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0064678   -0.0039332    0.0168689
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0465173   -0.0815977   -0.0114368
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1021739   -0.2938521    0.0895043
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0188348   -0.0985369    0.0608672
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1925676   -0.3665904   -0.0185447
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0960648    0.0157025    0.1764272
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0092255   -0.0653529    0.0469020
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0497984   -0.1259883    0.0263915
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0014029   -0.0111610    0.0139668
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0002563   -0.0178398    0.0173272
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0447183   -0.1033592    0.0139225
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0127391   -0.0467144    0.0212362
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0001963   -0.0076756    0.0072829
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0096709   -0.0051951    0.0245370
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0264479   -0.0968177    0.0439220
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0065523   -0.0541452    0.0410406
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0007583   -0.0076798    0.0091965
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0003180   -0.0140030    0.0146390
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0084005   -0.0500917    0.0332906
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0112326   -0.0934358    0.0709706
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0078503   -0.0208577    0.0051571
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0240991   -0.0076385    0.0558366
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0388243   -0.0945123    0.0168637
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0001920   -0.0111813    0.0115653
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0189537   -0.0083605    0.0462678
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0100241   -0.0876044    0.0675563
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0016688   -0.0051236    0.0084612
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0012599   -0.0227494    0.0202296


### Parameter: PAF


mbmi        agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[18.5-25)   0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0387002   -0.2724611    0.1521170
[18.5-25)   0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0146305   -0.1038316    0.0673621
[18.5-25)   0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0079764   -0.1074015    0.0825221
[18.5-25)   0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0638138   -0.0339176    0.1523071
[18.5-25)   0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0126171   -0.1727582    0.1686905
[18.5-25)   0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1551364   -0.2686671   -0.0517654
[18.5-25)   0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1000591   -0.2120116    0.0015524
[18.5-25)   0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0149508   -0.0141329    0.0432005
[18.5-25)   0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0096401   -0.0362250    0.0534752
[18.5-25)   0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0792184   -0.0461168    0.1895373
[18.5-25)   0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.5134100   -2.0142381    0.2401364
[18.5-25)   0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0154060   -0.0988574    0.0617078
[18.5-25)   0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0878378   -0.1365056    0.2678964
[18.5-25)   0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0299705   -0.3497130    0.3028463
[18.5-25)   0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0724674   -0.2260184    0.0618524
[18.5-25)   0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0287241   -0.0190768    0.0742828
[18.5-25)   0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0925439   -0.1945929    0.0007876
[18.5-25)   0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1041667   -0.2460935    0.3559734
[18.5-25)   6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                -0.0891156   -0.5760771    0.2473890
[18.5-25)   6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0483318   -0.2206302    0.0996457
[18.5-25)   6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0339851   -0.1163558    0.1640794
[18.5-25)   6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1530698    0.0029038    0.2806203
[18.5-25)   6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0252346   -0.3157500    0.2011355
[18.5-25)   6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.4571280   -0.7203114   -0.2342080
[18.5-25)   6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0475403   -0.1597980    0.0538518
[18.5-25)   6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0309909   -0.0909819    0.0257013
[18.5-25)   6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1088372    0.0066978    0.2004738
[18.5-25)   6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0468789   -0.2249895    0.2584101
<18.5       0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.1225403   -0.3426133    0.4265396
<18.5       0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0478168   -0.1483734    0.0439347
<18.5       0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0483221   -0.1051716    0.0056030
<18.5       0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.2291667   -0.4437687   -0.0464631
<18.5       0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.0907258   -0.0473737    0.2106164
<18.5       0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0179598   -0.2086521    0.1426464
<18.5       0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2490246   -0.3688842   -0.1396599
<18.5       0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0950081   -0.2439661    0.0361131
<18.5       0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0866732   -0.3294875    0.1117941
<18.5       0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0650826   -0.0932394    0.2004766
<18.5       0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.4340278   -0.9621008   -0.0480785
<18.5       0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0359216   -0.2545813    0.1446282
<18.5       0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.4099026   -0.6537421   -0.2020165
<18.5       0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.4742857   -0.8663771   -0.1645655
<18.5       6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.2127660   -0.6884932    0.6329642
<18.5       6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0961495   -0.3093002    0.0823009
<18.5       6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1669516   -0.3946770    0.0235904
<18.5       6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                 0.1053427   -0.1107040    0.2793655
<18.5       6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.1636364   -0.0942453    0.3607429
<18.5       6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2397932   -0.4872349   -0.0335201
<18.5       6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.2937500   -0.9843923    0.1565231
[25-30)     0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0804298   -0.4803120    0.2114307
[25-30)     0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.4453125   -1.1888634    0.0456562
[25-30)     0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.3415638    0.1149538    0.5101518
[25-30)     0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0408724   -0.3217238    0.1803013
[25-30)     0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3464236   -1.2947165    0.2099868
[25-30)     0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0108771   -0.0903313    0.1026911
[25-30)     0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0009259   -0.0665719    0.0606797
[25-30)     0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1175926   -0.3041962    0.0423119
[25-30)     0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2108014   -0.9217460    0.2371312
[25-30)     0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0032429   -0.1351819    0.1133611
[25-30)     0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0726970   -0.0370475    0.1708279
[25-30)     6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1948791   -0.8410021    0.2244789
[25-30)     6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0541033   -0.5301720    0.2738504
[25-30)     6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0158931   -0.1745218    0.1754378
[25-30)     6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0025306   -0.1178942    0.1099827
>=30        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0363372   -0.2412954    0.1347790
>=30        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0521393   -0.5119831    0.2678509
>=30        0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0649663   -0.1869587    0.0444881
>=30        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0995236   -0.0268279    0.2103276
>=30        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1793313   -0.5306374    0.0913443
>=30        0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0032356   -0.2073467    0.1770887
>=30        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1544375   -0.0573650    0.3238134
>=30        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0783699   -0.8918984    0.3853361
>=30        6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0418033   -0.1365861    0.1921941
>=30        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0153509   -0.3192684    0.2185537
