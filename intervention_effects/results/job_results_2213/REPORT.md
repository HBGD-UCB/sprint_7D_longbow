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

* mbmi
* agecat
* studyid
* country

## Data Summary

mbmi        agecat      studyid                     country                        tr          stunted   n_cell      n
----------  ----------  --------------------------  -----------------------------  ---------  --------  -------  -----
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       18     95
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        5     95
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       22     95
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        6     95
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       31     95
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       13     95
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0      101    699
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       64    699
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0      110    699
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       67    699
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      209    699
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1      148    699
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       36    384
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       46    384
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       57    384
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       43    384
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      111    384
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       91    384
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       83    432
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       17    432
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0      104    432
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       16    432
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      191    432
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       21    432
>=30        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        1      7
>=30        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        6      7
[25-30)     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        5     34
[25-30)     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        0     34
[25-30)     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        7     34
[25-30)     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        0     34
[25-30)     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       20     34
[25-30)     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        2     34
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       44    209
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       12    209
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       47    209
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       13    209
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       74    209
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       19    209
>=30        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        2      8
>=30        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        6      8
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       73    184
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       23    184
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       68    184
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       20    184
>=30        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        2      4
>=30        Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        2      4
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       44    129
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       22    129
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       37    129
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       26    129
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0      130    396
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       51    396
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0      156    396
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       59    396
<18.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        8     27
<18.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        3     27
<18.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        8     27
<18.5       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        8     27
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       21     60
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1       10     60
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       22     60
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        7     60
>=30        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0        3      3
[25-30)     6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       10     29
[25-30)     6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        1     29
[25-30)     6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       16     29
[25-30)     6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        2     29
>=30        Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        1      1
[25-30)     Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        1      1
[18.5-25)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        6     32
[18.5-25)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        2     32
[18.5-25)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       21     32
[18.5-25)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3     32
<18.5       6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        1      6
<18.5       6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0      6
<18.5       6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        2      6
<18.5       6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3      6
[25-30)     6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        1      4
[25-30)     6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        3      4
[18.5-25)   24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        2      2
>=30        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        2      3
>=30        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        1      3
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       49    245
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        8    245
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       55    245
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        7    245
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      114    245
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       12    245
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      206    853
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       23    853
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      192    853
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       18    853
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      373    853
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       41    853
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      115    540
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       16    540
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      113    540
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       15    540
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      246    540
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       35    540
<18.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1     27
<18.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        0     27
<18.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        9     27
<18.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        2     27
<18.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       14     27
<18.5       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1     27
[18.5-25)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1      2
[18.5-25)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1      2
>=30        24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1      2
>=30        24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0      2
>=30        24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        0      2
>=30        24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      2
[18.5-25)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      389    442
[18.5-25)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       53    442
[25-30)     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       48     62
[25-30)     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       14     62
[18.5-25)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      514    769
[18.5-25)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      255    769
<18.5       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       57     98
<18.5       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       41     98
[25-30)     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       35     36
[25-30)     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        1     36
>=30        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        7     11
>=30        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        4     11
<18.5       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       43     50
<18.5       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        7     50
>=30        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        4      5
>=30        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        1      5
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Control           0     3930   8149
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Control           1       15   8149
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     4199   8149
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        5   8149
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Control           0     3267   7110
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Control           1      237   7110
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     3418   7110
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      188   7110
<18.5       Birth       ki1119695-PROBIT            BELARUS                        Control           0      254    523
<18.5       Birth       ki1119695-PROBIT            BELARUS                        Control           1        0    523
<18.5       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      268    523
<18.5       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1    523
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Control           0      197    462
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Control           1       26    462
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      221    462
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       18    462
>=30        Birth       ki1119695-PROBIT            BELARUS                        Control           0      745   1532
>=30        Birth       ki1119695-PROBIT            BELARUS                        Control           1        1   1532
>=30        Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      785   1532
>=30        Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1   1532
>=30        6 months    ki1119695-PROBIT            BELARUS                        Control           0      624   1338
>=30        6 months    ki1119695-PROBIT            BELARUS                        Control           1       47   1338
>=30        6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      627   1338
>=30        6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       40   1338
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Control           0     1742   3519
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Control           1        5   3519
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     1767   3519
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        5   3519
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Control           0     1478   3086
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Control           1       88   3086
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     1429   3086
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       91   3086
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Control           0      204    497
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Control           1       24    497
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      239    497
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       30    497
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Control           0       79    221
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Control           1       16    221
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      112    221
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       14    221
>=30        24 months   ki1119695-PROBIT            BELARUS                        Control           0       32     87
>=30        24 months   ki1119695-PROBIT            BELARUS                        Control           1        4     87
>=30        24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       46     87
>=30        24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        5     87
<18.5       24 months   ki1119695-PROBIT            BELARUS                        Control           0        9     28
<18.5       24 months   ki1119695-PROBIT            BELARUS                        Control           1        2     28
<18.5       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       13     28
<18.5       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        4     28
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1473   6598
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      173   6598
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     4439   6598
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      513   6598
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      946   4524
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      189   4524
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2782   4524
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      607   4524
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      447   1952
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       35   1952
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1361   1952
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      109   1952
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       98    510
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       16    510
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      334    510
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       62    510
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       53    338
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       20    338
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      213    338
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       52    338
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      130    574
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       11    574
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      396    574
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       37    574
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       85    403
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       15    403
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      264    403
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       39    403
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      290   1376
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       44   1376
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      910   1376
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      132   1376
[18.5-25)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3     16
[18.5-25)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        4     16
[18.5-25)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2     16
[18.5-25)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        7     16
[25-30)     24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1      3
[25-30)     24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        0      3
[25-30)     24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        0      3
[25-30)     24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2      3
<18.5       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1      2
<18.5       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      2
>=30        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1      1
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0      168   1540
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       82   1540
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      896   1540
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      394   1540
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       47    620
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       56    620
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      249    620
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      268    620
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       30    213
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       10    213
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      140    213
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       33    213
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       11    136
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       12    136
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       68    136
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       45    136
<18.5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3     60
<18.5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        3     60
<18.5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       21     60
<18.5       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       33     60
>=30        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0        5     31
>=30        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        0     31
>=30        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       23     31
>=30        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1        3     31
>=30        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        2     12
>=30        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        1     12
>=30        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0        7     12
>=30        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1        2     12
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       10     78
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        6     78
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       43     78
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       19     78
[18.5-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1      3
[18.5-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        0      3
[18.5-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1      3
[18.5-25)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      3
<18.5       Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      1
<18.5       6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      1
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control           0      110    651
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control           1       54    651
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      211    651
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               1      124    651
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Other             0       93    651
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Other             1       59    651
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control           0       56    303
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control           1       34    303
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       88    303
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       57    303
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Other             0       49    303
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Other             1       19    303
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       19    145
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Control           1       14    145
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       41    145
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       27    145
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       23    145
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Other             1       21    145
[25-30)     6 months    ki1148112-LCNI-5            MALAWI                         Control           0        8     39
[25-30)     6 months    ki1148112-LCNI-5            MALAWI                         Control           1        3     39
[25-30)     6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       14     39
[25-30)     6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        3     39
[25-30)     6 months    ki1148112-LCNI-5            MALAWI                         Other             0        9     39
[25-30)     6 months    ki1148112-LCNI-5            MALAWI                         Other             1        2     39
[25-30)     24 months   ki1148112-LCNI-5            MALAWI                         Control           0        4     18
[25-30)     24 months   ki1148112-LCNI-5            MALAWI                         Control           1        1     18
[25-30)     24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        5     18
[25-30)     24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        3     18
[25-30)     24 months   ki1148112-LCNI-5            MALAWI                         Other             0        4     18
[25-30)     24 months   ki1148112-LCNI-5            MALAWI                         Other             1        1     18
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Control           0        9     62
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        7     62
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       15     62
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       10     62
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Other             0       10     62
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Other             1       11     62
>=30        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0        1      1
>=30        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        1      1
[18.5-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0        1      2
[18.5-25)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0        1      2
<18.5       Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      1
<18.5       6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      1


The following strata were considered:

* mbmi: [18.5-25), agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [18.5-25), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [18.5-25), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [18.5-25), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [18.5-25), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [25-30), agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [25-30), agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [25-30), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [25-30), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [25-30), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [25-30), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [25-30), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [25-30), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [25-30), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [25-30), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: [25-30), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [25-30), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [25-30), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [25-30), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [25-30), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [25-30), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: <18.5, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: <18.5, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: <18.5, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: <18.5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: <18.5, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: <18.5, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: <18.5, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: <18.5, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: <18.5, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: <18.5, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: <18.5, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: <18.5, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: <18.5, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: <18.5, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: <18.5, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: <18.5, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: <18.5, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: <18.5, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: <18.5, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: <18.5, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: <18.5, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: <18.5, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: >=30, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: >=30, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: >=30, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: >=30, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: >=30, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: >=30, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mbmi: >=30, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: >=30, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: >=30, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: >=30, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: >=30, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: >=30, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: >=30, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: >=30, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mbmi: >=30, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: >=30, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: >=30, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* mbmi: >=30, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: [25-30), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mbmi: >=30, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mbmi: <18.5, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: >=30, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: >=30, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [25-30), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: <18.5, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [25-30), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: >=30, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mbmi: <18.5, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: >=30, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mbmi: [25-30), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: >=30, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: >=30, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mbmi: <18.5, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: >=30, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: >=30, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: <18.5, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mbmi: [18.5-25), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: [25-30), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: <18.5, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: >=30, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mbmi: <18.5, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: >=30, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: >=30, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mbmi: [18.5-25), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: <18.5, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: <18.5, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mbmi: [25-30), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [25-30), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: >=30, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mbmi: [18.5-25), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: <18.5, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mbmi: <18.5, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     57 41
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     43  7
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     514 255
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     389  53
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     48 14
```




# Results Detail

## Results Plots
![](/tmp/dfc8c552-5692-423e-ad79-578dc4dc25c2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dfc8c552-5692-423e-ad79-578dc4dc25c2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dfc8c552-5692-423e-ad79-578dc4dc25c2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dfc8c552-5692-423e-ad79-578dc4dc25c2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


mbmi        agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3225806   0.2120744   0.4330869
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2413793   0.1585213   0.3242373
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0038023   0.0027607   0.0048439
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0011893   0.0003036   0.0020751
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1051033   0.1014069   0.1087997
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1035945   0.0972239   0.1099651
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1700000   0.0962920   0.2437080
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1333333   0.0724419   0.1942248
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0990566   0.0587966   0.1393166
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2817680   0.2486066   0.3149294
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2744186   0.2590736   0.2897636
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1004367   0.0614831   0.1393902
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0857143   0.0478299   0.1235987
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0990338   0.0702434   0.1278243
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0676370   0.0567200   0.0785540
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0521353   0.0441989   0.0600718
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1665198   0.1610817   0.1719580
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1791089   0.1694370   0.1887808
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3280000   0.3185494   0.3374506
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3054264   0.2843655   0.3264872
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3292683   0.2572887   0.4012479
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3701493   0.3184044   0.4218941
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3881579   0.3106254   0.4656904
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3878788   0.3134769   0.4622806
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3785311   0.3070267   0.4500355
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4145658   0.3634258   0.4657058
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1052632   0.0713077   0.1392186
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1115242   0.0852168   0.1378315
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5436893   0.5276963   0.5596824
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5183752   0.4824311   0.5543194
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3777778   0.2774467   0.4781089
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3931034   0.3134705   0.4727364
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.2794118   0.1725857   0.3862379
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1403509   0.1260841   0.1546176
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1565657   0.1287477   0.1843836
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2142857   0.1065587   0.3220127
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2166667   0.1121746   0.3211587
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2043011   0.1221605   0.2864417
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3333333   0.2845000   0.3821666
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4126984   0.3355201   0.4898767
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1165919   0.0959659   0.1372180
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0753138   0.0528297   0.0977979
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2739726   0.2518434   0.2961018
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1962264   0.1586822   0.2337707
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5217391   0.4870866   0.5563916
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3982301   0.3229581   0.4735021
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4242424   0.2550345   0.5934504
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3970588   0.2803614   0.5137563
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4772727   0.3291760   0.6253694
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.5609756   0.4534223   0.6685289
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.4300000   0.3328403   0.5271597
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4504950   0.3817930   0.5191971
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4375000   0.1924418   0.6825582
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4000000   0.2063959   0.5936041
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.5238095   0.3084588   0.7391603
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0028620   0.0009662   0.0047579
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0028217   0.0005535   0.0050898
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0726141   0.0668922   0.0783361
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0741497   0.0640603   0.0842390
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1221374   0.0660129   0.1782619
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1171875   0.0614150   0.1729600
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1245552   0.0859102   0.1632001
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0561941   0.0450356   0.0673527
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0598684   0.0503006   0.0694363
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1317365   0.1229293   0.1405438
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1266795   0.1113805   0.1419784
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2500000   0.2247407   0.2752593
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1907514   0.1430877   0.2384152
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2173913   0.0479281   0.3868545
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2142857   0.0614954   0.3670761
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2954545   0.1599295   0.4309796
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1684211   0.0944753   0.2423668
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1111111   0.0649061   0.1573161
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3750000   0.3260254   0.4239746
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3064516   0.2146457   0.3982575
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0780142   0.0671306   0.0888978
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0854503   0.0655702   0.1053305
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2395833   0.1949146   0.2842520
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2272727   0.1852831   0.2692623
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1403509   0.0499928   0.2307090
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1129032   0.0339665   0.1918399
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0952381   0.0438783   0.1465979
>=30        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0700447   0.0574108   0.0826786
>=30        6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0599700   0.0484138   0.0715262
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1500000   0.1326125   0.1673875
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1287129   0.1003274   0.1570983


### Parameter: E(Y)


mbmi        agecat      studyid                     country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2833333    0.1434542   0.4232125
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0024543    0.0009988   0.0039098
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1039709    0.0966056   0.1113362
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1250000    0.0937774   0.1562226
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2777778    0.2413281   0.3142275
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0961313    0.0763382   0.1159244
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0597750    0.0453286   0.0742213
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1759505    0.1648535   0.1870475
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3090909    0.2860031   0.3321787
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3640553    0.3270653   0.4010453
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3991416    0.3628113   0.4354720
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1086519    0.0656960   0.1516078
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5225806    0.4832320   0.5619293
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3630363    0.3088016   0.4172710
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1529412    0.1216726   0.1842098
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2105263    0.1551227   0.2659300
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3720930    0.2781350   0.4660511
<18.5       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0952381    0.0635513   0.1269249
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2130178    0.1693035   0.2567320
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4191176    0.3358851   0.5023502
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4275862    0.3467820   0.5083904
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4687500    0.4187732   0.5187268
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4516129    0.3267280   0.5764978
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0028417   -0.0001145   0.0057980
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0737705    0.0621715   0.0853695
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1222222    0.0945706   0.1498739
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0580039    0.0433407   0.0726671
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1279070    0.1102537   0.1455603
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2018779    0.1478449   0.2559110
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2526316    0.1647910   0.3404722
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1357466    0.0470800   0.2244132
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3205128    0.2162772   0.4247484
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0836237    0.0609578   0.1062896
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2336957    0.1723832   0.2950081
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1102041    0.0709127   0.1494955
>=30        6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0650224    0.0475829   0.0824619
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1339950    0.1006954   0.1672947


### Parameter: RR


mbmi        agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7482759   0.4607143   1.2153231
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.3127973   0.1412922   0.6924812
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9856449   0.9182359   1.0580024
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7843137   0.4178350   1.4722273
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.5826859   0.3216168   1.0556752
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9739170   0.8550628   1.1092920
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8534161   0.4740076   1.5365135
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9860323   0.6072785   1.6010113
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7708110   0.6186787   0.9603524
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0756010   1.0098202   1.1456667
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9311779   0.8641248   1.0034341
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.1241570   0.8672328   1.4571968
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1788499   0.8767101   1.5851159
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9759004   0.7455671   1.2773923
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0688025   0.8508492   1.3425868
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.0594795   0.7104358   1.5800119
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9534402   0.8842635   1.0280286
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0405680   0.7450863   1.4532298
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.7396194   0.4643406   1.1780939
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1155303   0.9090374   1.3689291
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0111111   0.5037887   2.0293145
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9534050   0.5008537   1.8148635
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2380952   0.9760039   1.5705673
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6459607   0.4564837   0.9140857
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.7162264   0.5819093   0.8815468
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7632743   0.6247002   0.9325877
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9359244   0.5702623   1.5360554
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1250000   0.6787160   1.8647342
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7665217   0.5699394   1.0309089
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8030564   0.6285675   1.0259829
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9142857   0.4360961   1.9168214
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.1972789   0.5976400   2.3985623
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9858916   0.3479582   2.7933886
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0211467   0.8725709   1.1950212
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9594727   0.4951311   1.8592810
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0197954   0.5857547   1.7754576
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           1.0653858   0.8258156   1.3744556
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9616123   0.8376267   1.1039502
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7630058   0.5827380   0.9990388
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9857143   0.3427239   2.8350299
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.3590909   0.5500982   3.3578151
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6597222   0.3590470   1.2121908
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8172043   0.5893867   1.1330810
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0953181   0.8350794   1.4366558
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.9486166   0.7296213   1.2333431
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8044355   0.3109779   2.0809081
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.6785715   0.2929986   1.5715407
>=30        6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=30        6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8561677   0.6579324   1.1141313
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.8580858   0.6688519   1.1008585


### Parameter: PAR


mbmi        agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0392473   -0.1274547    0.0489601
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0013480   -0.0023264   -0.0003696
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0011324   -0.0075030    0.0052382
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0450000   -0.1073899    0.0173899
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0039902   -0.0194713    0.0114909
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0043054   -0.0373874    0.0287767
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0078620   -0.0165132    0.0007892
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0094307   -0.0002425    0.0191038
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0189091   -0.0399740    0.0021559
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0347870   -0.0279736    0.0975476
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0112628   -0.0538689    0.0763946
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0033888   -0.0229169    0.0296944
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0211087   -0.0570605    0.0148432
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0147415   -0.0985730    0.0690901
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0125903   -0.0152339    0.0404145
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0037594   -0.0957141    0.0881953
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0387597   -0.0411443    0.1186637
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0213538   -0.0455248    0.0028171
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0609549   -0.0986541   -0.0232556
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1026215   -0.1782975   -0.0269454
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0033438   -0.1454126    0.1521001
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0922256   -0.1877506    0.0032994
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0141129   -0.1972030    0.2254288
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0000203   -0.0022881    0.0022474
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0011564   -0.0089330    0.0112458
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0000848   -0.0487645    0.0489342
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0018098   -0.0076959    0.0113154
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0038296   -0.0191289    0.0114698
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0481221   -0.0958875   -0.0003566
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0352403   -0.1148540    0.1853346
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0326744   -0.0794227    0.0140738
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0544872   -0.1465010    0.0375267
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0056095   -0.0142724    0.0254914
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0058877   -0.0478867    0.0361114
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0301468   -0.1070192    0.0467256
>=30        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0050223   -0.0167945    0.0067500
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0160050   -0.0444046    0.0123947


### Parameter: PAF


mbmi        agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[18.5-25)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1385199   -0.5583354    0.1681973
[18.5-25)   Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.5492395   -1.3847918   -0.0064372
[18.5-25)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0108913   -0.0747699    0.0491907
[18.5-25)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.3600000   -0.9558491    0.0543238
[18.5-25)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0143646   -0.0725106    0.0406289
[18.5-25)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0447865   -0.4522333    0.2483448
[18.5-25)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1315270   -0.3118894    0.0240387
[18.5-25)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0535984    0.0000837    0.1042490
[18.5-25)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0611765   -0.1360442    0.0087573
[18.5-25)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0955542   -0.0943759    0.2525217
[18.5-25)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0282177   -0.1494693    0.1784375
[18.5-25)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0311891   -0.2344564    0.2396697
[18.5-25)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0403931   -0.1144998    0.0287859
[18.5-25)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0406061   -0.2991688    0.1664971
<18.5       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0823212   -0.1009922    0.2351132
<18.5       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0178571   -0.5633174    0.3372855
<18.5       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.1041667   -0.1108971    0.2775952
<18.5       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2242152   -0.5824195    0.0529042
<18.5       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.2861492   -0.5374616   -0.0759161
<18.5       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2448513   -0.4922832   -0.0384454
<18.5       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0078201   -0.4088737    0.3012710
<18.5       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1967480   -0.4203334   -0.0083588
<18.5       24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0312500   -0.5703651    0.4023832
[25-30)     Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0071551   -1.2370702    0.5465670
[25-30)     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0156754   -0.1285948    0.1415033
[25-30)     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0006940   -0.4907211    0.3301144
[25-30)     6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0312007   -0.1414448    0.1777333
[25-30)     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0299401   -0.1608246    0.0861870
[25-30)     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2383721   -0.5708640    0.0237440
[25-30)     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.1394928   -0.7146992    0.5681617
[25-30)     24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.2407018   -0.7841441    0.1372105
[25-30)     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1700000   -0.5604030    0.1227267
>=30        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0670804   -0.1835304    0.2646247
>=30        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0251938   -0.2271077    0.1434963
>=30        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2735542   -1.1942716    0.2608297
>=30        6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0772393   -0.2920923    0.1018873
>=30        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.1194444   -0.3843488    0.0947687
