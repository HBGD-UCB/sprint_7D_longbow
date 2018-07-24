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

* vagbrth
* agecat
* studyid
* country

## Data Summary

vagbrth   agecat        studyid                    country                        tr.x       ever_stunted   n_cell       n
--------  ------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0       31     147
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1        7     147
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0       96     147
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       13     147
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0      111     493
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1       17     493
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      313     493
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       52     493
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      473    2004
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       38    2004
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      929    2004
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       62    2004
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      458    2004
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       44    2004
0         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       42     203
0         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        2     203
0         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       98     203
0         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        9     203
0         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       49     203
0         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3     203
1         0-6 months    ki1119695-PROBIT           BELARUS                        Control               0     6522   14312
1         0-6 months    ki1119695-PROBIT           BELARUS                        Control               1      470   14312
1         0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0     6864   14312
1         0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1      456   14312
0         0-6 months    ki1119695-PROBIT           BELARUS                        Control               0      752    1873
0         0-6 months    ki1119695-PROBIT           BELARUS                        Control               1       63    1873
0         0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0      995    1873
0         0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1       63    1873
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               0     1722    8273
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      358    8273
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     5084    8273
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1     1109    8273
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      163     762
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       28     762
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0      481     762
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1       90     762
1         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       16      58
1         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        5      58
1         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       13      58
1         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        4      58
1         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       16      58
1         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        4      58
0         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        1      10
0         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        0      10
0         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        2      10
0         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        1      10
0         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        5      10
0         0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        1      10
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0     6471   18208
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1     2546   18208
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     7003   18208
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1     2188   18208
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0      453    1093
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1       97    1093
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      447    1093
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       96    1093
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               0      734    3619
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               1      217    3619
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      846    3619
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      305    3619
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      395    3619
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1      148    3619
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      725    3619
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      249    3619
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               0       54     328
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               1       18     328
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0       87     328
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       18     328
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0       37     328
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       16     328
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 0       80     328
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       18     328
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       22     125
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1        8     125
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       76     125
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       19     125
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       79     372
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       17     372
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      201     372
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       75     372
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      364    1648
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       60    1648
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      716    1648
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1      100    1648
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      344    1648
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       64    1648
0         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       37     178
0         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        3     178
0         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       82     178
0         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       10     178
0         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       41     178
0         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        5     178
1         6-24 months   ki1119695-PROBIT           BELARUS                        Control               0     6703   14420
1         6-24 months   ki1119695-PROBIT           BELARUS                        Control               1      280   14420
1         6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     7169   14420
1         6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      268   14420
0         6-24 months   ki1119695-PROBIT           BELARUS                        Control               0      792    1883
0         6-24 months   ki1119695-PROBIT           BELARUS                        Control               1       29    1883
0         6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     1019    1883
0         6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1       43    1883
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0     1846    8443
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      285    8443
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     5457    8443
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      855    8443
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      173     796
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       29     796
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0      510     796
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1       84     796
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      226     864
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       72     864
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0      190     864
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       86     864
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0      209     864
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       81     864
0         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        5      53
0         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        2      53
0         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       24      53
0         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        3      53
0         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       17      53
0         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        2      53
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     4820   12275
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1     1168   12275
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     4973   12275
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1     1314   12275
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      414     961
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1       60     961
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      422     961
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       65     961
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      608    3258
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1      281    3258
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      696    3258
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      308    3258
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      331    3258
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1      151    3258
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      620    3258
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      263    3258
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0       56     324
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1       17     324
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0       86     324
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       19     324
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0       35     324
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       12     324
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0       82     324
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       17     324
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       22     148
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       16     148
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       75     148
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       35     148
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       79     493
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       49     493
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      203     493
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1      162     493
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      397    2023
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1      119    2023
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      776    2023
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1      225    2023
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      375    2023
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1      131    2023
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       35     205
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        9     205
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       82     205
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       26     205
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       45     205
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        8     205
1         0-24 months   ki1119695-PROBIT           BELARUS                        Control               0     6203   14796
1         0-24 months   ki1119695-PROBIT           BELARUS                        Control               1      997   14796
1         0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     6697   14796
1         0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      899   14796
0         0-24 months   ki1119695-PROBIT           BELARUS                        Control               0      727    1939
0         0-24 months   ki1119695-PROBIT           BELARUS                        Control               1      116    1939
0         0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0      973    1939
0         0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      123    1939
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0     1832   10721
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      862   10721
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     5398   10721
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1     2629   10721
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      171     989
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       82     989
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0      500     989
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      236     989
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      216    1059
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1      150    1059
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0      182    1059
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1      160    1059
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0      196    1059
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1      155    1059
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        5      74
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        9      74
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       23      74
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       12      74
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       17      74
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        8      74
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     6157   21491
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1     4483   21491
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     6593   21491
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1     4258   21491
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      468    1330
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      186    1330
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      480    1330
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      196    1330
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      557    4148
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1      549    4148
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      623    4148
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      657    4148
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      303    4148
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1      336    4148
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      557    4148
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      566    4148
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0       49     370
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1       34     370
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0       79     370
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       39     370
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0       32     370
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       30     370
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0       74     370
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       33     370


The following strata were considered:

* vagbrth: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 0, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 0, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 0, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 0, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 0, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 0, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 1, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* vagbrth: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e8f1ce1c-89c8-4f26-9c0f-fc48d622de3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 37 rows containing missing values (geom_errorbar).
```

![](/tmp/e8f1ce1c-89c8-4f26-9c0f-fc48d622de3a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/e8f1ce1c-89c8-4f26-9c0f-fc48d622de3a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8f1ce1c-89c8-4f26-9c0f-fc48d622de3a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


vagbrth   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.4210526   0.3806101   0.4614951
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.3181818   0.2532695   0.3830941
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2045455   0.0850679   0.3240230
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2407407   0.1599116   0.3215699
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1509434   0.0543278   0.2475590
0         0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1376038   0.1211960   0.1540116
0         0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.1122263   0.0941334   0.1303191
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.3241107   0.3093497   0.3388717
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.3206522   0.2955464   0.3457579
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.6428571   0.3901505   0.8955638
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.3428571   0.1845301   0.5011841
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.3200000   0.1358965   0.5041035
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2844037   0.2626340   0.3061733
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2899408   0.2688197   0.3110620
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.4096386   0.2961127   0.5231644
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.3305085   0.2395437   0.4214732
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.4838710   0.3641337   0.6036083
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.3084112   0.2161487   0.4006737
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1842105   0.1522399   0.2161811
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1192661   0.0739964   0.1645357
0         0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0773006   0.0658493   0.0887519
0         0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.0595463   0.0507778   0.0683149
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1465969   0.1340153   0.1591784
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1576182   0.1352076   0.1800288
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1763636   0.1566983   0.1960290
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1767956   0.1574266   0.1961646
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2500000   0.1429485   0.3570515
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.1714286   0.0927656   0.2500916
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.3018868   0.1681946   0.4355790
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.1836735   0.1081441   0.2592028
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.2666667   0.2285357   0.3047976
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2000000   0.1386232   0.2613768
0         6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0353228   0.0268821   0.0437635
0         6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0404896   0.0316384   0.0493409
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1435644   0.1312856   0.1558431
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1414141   0.1204904   0.1623379
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1265823   0.1088129   0.1443516
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1334702   0.1169047   0.1500358
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2328767   0.1322596   0.3334939
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.1809524   0.0990776   0.2628271
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.2553191   0.1411300   0.3695083
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.1717172   0.0955390   0.2478953
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.3828125   0.3609274   0.4046976
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.4438356   0.4060609   0.4816103
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2306202   0.1942664   0.2669739
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2247752   0.1989094   0.2506411
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2588933   0.2207181   0.2970684
1         0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1384722   0.1247741   0.1521704
1         0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.1183518   0.1075757   0.1291279
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.3199703   0.3155439   0.3243967
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.3275196   0.3198324   0.3352068
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.4098361   0.3593799   0.4602923
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.4678363   0.4149478   0.5207247
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.4415954   0.3895723   0.4936186
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4213346   0.4152922   0.4273769
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3924062   0.3865960   0.3982164
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.4963834   0.4587767   0.5339900
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.5132812   0.4802027   0.5463598
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.5258216   0.4753014   0.5763418
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.5040071   0.4708566   0.5371576
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1328125   0.1175325   0.1480925
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1424658   0.1158910   0.1690405
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0743640   0.0516105   0.0971175
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0625631   0.0474814   0.0776447
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0876494   0.0629060   0.1123928
1         0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0672197   0.0578407   0.0765986
1         0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.0622951   0.0545819   0.0700082
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1721154   0.1680365   0.1761942
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1790731   0.1719244   0.1862219
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2823556   0.2768710   0.2878401
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2380590   0.2332427   0.2428752
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2281809   0.1967616   0.2596002
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2649870   0.2349562   0.2950177
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.2725599   0.2255355   0.3195842
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2556468   0.2268146   0.2844790
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1770833   0.1573504   0.1968163
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2717391   0.2327482   0.3107301
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1415094   0.1083232   0.1746956
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1225490   0.1000429   0.1450552
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1568627   0.1215640   0.1921615
1         6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0400974   0.0314058   0.0487890
1         6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0360360   0.0315030   0.0405691
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1337400   0.1300923   0.1373878
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1354563   0.1291445   0.1417681
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2416107   0.1929253   0.2902962
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.3115942   0.2569041   0.3662843
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2793103   0.2275828   0.3310378
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1950568   0.1894074   0.2007062
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2090027   0.2028233   0.2151821
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3160855   0.2765146   0.3556564
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.3067729   0.2730313   0.3405145
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.3132780   0.2588035   0.3677525
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2978482   0.2640788   0.3316176


### Parameter: E(Y)


vagbrth   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3445946   0.2677703   0.4214189
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2097561   0.1538871   0.2656251
0         0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1232594   0.0980729   0.1484460
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3215369   0.2924131   0.3506607
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3918919   0.2799068   0.5038770
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2872180   0.2568875   0.3175486
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3675676   0.3160145   0.4191206
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1360544   0.0804421   0.1916668
0         0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0672718   0.0522083   0.0823352
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1548556   0.1291526   0.1805587
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1765782   0.1489762   0.2041803
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2134146   0.1663281   0.2605011
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2160000   0.1435694   0.2884306
0         6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0382369   0.0260951   0.0503786
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1419598   0.1176992   0.1662204
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1300728   0.1057819   0.1543638
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2006173   0.1553511   0.2458835
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4279919   0.3842715   0.4717123
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2347998   0.2163244   0.2532752
1         0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1281427   0.1096604   0.1466251
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3256226   0.3167519   0.3344933
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4390935   0.4091723   0.4690147
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4067284   0.3982469   0.4152099
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5081967   0.4896095   0.5267840
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1399594   0.1093027   0.1706162
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0718563   0.0605467   0.0831659
1         0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0647010   0.0523985   0.0770034
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1773238   0.1690930   0.1855546
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2599956   0.2524939   0.2674973
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2539376   0.2374486   0.2704265
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2473118   0.2034091   0.2912145
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1359223   0.1193714   0.1524733
1         6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0380028   0.0280563   0.0479492
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1350231   0.1277330   0.1423132
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2766204   0.2467476   0.3064931
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2021996   0.1938335   0.2105657
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3078576   0.2885174   0.3271977


### Parameter: RR


vagbrth   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.7556818   0.6031284   0.9468216
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1769547   0.6000137   2.3086515
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7379455   0.3102357   1.7553223
0         0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8155754   0.6672705   0.9968421
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           0.9893293   0.9036561   1.0831249
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           0.5333333   0.2908194   0.9780792
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           0.4977778   0.2479825   0.9991943
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0194694   0.9172411   1.1330912
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.8068295   0.5459378   1.1923956
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.1812144   0.8145786   1.7128704
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.7528862   0.5006617   1.1321769
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.6474443   0.4265236   0.9827922
0         0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           0.7703214   0.6253331   0.9489262
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0751814   0.9106576   1.2694288
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0024492   0.8573801   1.1720639
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.6857143   0.3660600   1.2845001
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.2075472   0.6523515   2.2352522
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.7346939   0.4056829   1.3305344
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.7500000   0.5345960   1.0521965
0         6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           1.1462757   0.8309264   1.5813049
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           0.9850226   0.8302799   1.1686055
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0544148   0.8742689   1.2716803
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.7770308   0.4156690   1.4525426
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.0963705   0.5886846   2.0418885
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.7373737   0.3969473   1.3697537
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.1594073   1.0464265   1.2845865
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9746556   0.8018451   1.1847095
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1225961   0.9046497   1.3930496
1         0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8546968   0.7478022   0.9768715
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0235938   0.9960830   1.0518644
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.1415205   0.9658156   1.3491902
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.0774929   0.9086813   1.2776657
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9313411   0.9123182   0.9507607
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0340420   0.9361400   1.1421826
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.0593054   0.9373050   1.1971855
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.0153586   0.9184274   1.1225200
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.0726833   0.8615713   1.3355244
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8413086   0.5698828   1.2420100
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1786538   0.7772941   1.7872576
1         0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           0.9267388   0.7693103   1.1163828
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0404250   0.9932273   1.0898655
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8431177   0.8197901   0.8671092
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.1613023   0.9716245   1.3880085
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.1944904   0.9579036   1.4895104
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.1203692   0.9376587   1.3386823
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.5345269   1.2795996   1.8402419
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8660131   0.6429279   1.1665051
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1084967   0.8009059   1.5342190
1         6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8987130   0.7001143   1.1536475
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0128327   0.9595977   1.0690210
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.2896538   0.9872298   1.6847211
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.1560345   0.8792499   1.5199498
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0714967   1.0280364   1.1167944
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.9705378   0.8216023   1.1464714
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           0.9911180   0.7999796   1.2279249
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9423028   0.7958525   1.1157024


### Parameter: PAR


vagbrth   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0764580   -0.1417756   -0.0111405
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0052106   -0.1009424    0.1113637
0         0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0143444   -0.0329388    0.0042500
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0025738   -0.0276797    0.0225322
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.2509653   -0.4795212   -0.0224093
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0028144   -0.0183079    0.0239366
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0420710   -0.1410996    0.0569577
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0481561   -0.0936601   -0.0026521
0         0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0100289   -0.0194819   -0.0005758
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0082588   -0.0141544    0.0306720
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0002146   -0.0191544    0.0195836
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0365854   -0.1297160    0.0565453
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0506667   -0.1122477    0.0109144
0         6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0029141   -0.0057467    0.0115748
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0016046   -0.0225284    0.0193193
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0034906   -0.0130706    0.0200517
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0322594   -0.1195317    0.0550129
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0451794    0.0073308    0.0830280
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0041796   -0.0272647    0.0356240
1         0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0103295   -0.0219726    0.0013136
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0056523   -0.0020351    0.0133398
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0292574   -0.0117473    0.0702621
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0146062   -0.0206105   -0.0086019
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0118134   -0.0198969    0.0435236
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0071469   -0.0194305    0.0337243
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0025077   -0.0220423    0.0170269
1         0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0025187   -0.0103087    0.0052713
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0052084   -0.0019406    0.0123575
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0223599   -0.0275406   -0.0171793
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0257567   -0.0014341    0.0529475
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0702285    0.0310104    0.1094466
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0055871   -0.0340222    0.0228480
1         6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0020946   -0.0067679    0.0025786
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0012831   -0.0050288    0.0075949
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0350096   -0.0053339    0.0753532
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0071428    0.0009742    0.0133114
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0082279   -0.0411502    0.0246944


### Parameter: PAF


vagbrth   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.2218782   -0.4786542   -0.0096927
0         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0248414   -0.6385208    0.4196386
0         0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.1163756   -0.2995508    0.0409806
0         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0080046   -0.0898659    0.0677080
0         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.6403941   -1.3856280   -0.1279599
0         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0097987   -0.0657701    0.0800093
0         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1144578   -0.4189906    0.1247185
0         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.3539474   -0.9023179    0.0363475
0         0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.1490798   -0.3255818    0.0039209
0         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0533322   -0.0941759    0.1809543
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0012153   -0.1145770    0.1049780
0         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1714286   -0.6990144    0.1923288
0         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.2345679   -0.6450727    0.0735012
0         6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0762113   -0.1593009    0.2638791
0         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0113029   -0.1719107    0.1272939
0         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0268354   -0.1053651    0.1432250
0         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1608008   -0.6876850    0.2015935
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.1055613    0.0226595    0.1814310
1         0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0178009   -0.1256748    0.1429896
1         0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0806092   -0.1843468    0.0140420
1         0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0173585   -0.0061174    0.0402866
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0666314   -0.0316438    0.1555448
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0359114   -0.0513222   -0.0207265
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0232456   -0.0412429    0.0837401
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0510643   -0.1474823    0.2152568
1         0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0348989   -0.3457448    0.2041465
1         0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0389288   -0.1721184    0.0791263
1         0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0293725   -0.0105652    0.0677318
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0860012   -0.1079143   -0.0645216
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.1014292   -0.0123177    0.2023953
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.2839674    0.1582951    0.3908759
1         6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0411051   -0.2727574    0.1483846
1         6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0551172   -0.1941427    0.0677226
1         6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0095026   -0.0378995    0.0547398
1         6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1265620   -0.0319193    0.2607039
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0353256    0.0054255    0.0643267
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0267263   -0.1392906    0.0747163
