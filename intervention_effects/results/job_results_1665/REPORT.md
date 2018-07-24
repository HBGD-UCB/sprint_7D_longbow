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

* single
* agecat
* studyid
* country

## Data Summary

single   agecat        studyid                    country                        tr.x       ever_stunted   n_cell       n
-------  ------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      463    2012
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       34    2012
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      945    2012
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       66    2012
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      458    2012
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       46    2012
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       48     204
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        6     204
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       93     204
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        4     204
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       52     204
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        1     204
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               0       45     211
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               1       12     211
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 0      122     211
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       32     211
1        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               0        2      25
1        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               1        2      25
1        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       12      25
1        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 1        9      25
0        0-6 months    ki1119695-PROBIT           BELARUS                        Control               0     7022   15530
0        0-6 months    ki1119695-PROBIT           BELARUS                        Control               1      505   15530
0        0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0     7517   15530
0        0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1      486   15530
1        0-6 months    ki1119695-PROBIT           BELARUS                        Control               0      252     655
1        0-6 months    ki1119695-PROBIT           BELARUS                        Control               1       28     655
1        0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0      342     655
1        0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1       33     655
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               0     1775    8505
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      360    8505
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     5267    8505
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1     1103    8505
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      114     560
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       27     560
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0      322     560
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1       97     560
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0       81     254
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1       40     254
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0       94     254
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1       39     254
1        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0        9      20
1        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1        5      20
1        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0        4      20
1        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1        2      20
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               0       81     759
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               1       42     759
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      465     759
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      171     759
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               0       44     409
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control               1       16     409
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      240     409
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      109     409
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       16      56
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        4      56
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       13      56
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        3      56
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       16      56
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        4      56
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        2      14
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        1      14
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        2      14
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        2      14
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        5      14
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        2      14
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      358    1662
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       58    1662
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      730    1662
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1      104    1662
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      348    1662
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       64    1662
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       39     171
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        6     171
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       71     171
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       10     171
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       40     171
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        5     171
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0       38     153
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1        6     153
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       84     153
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       25     153
1        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0        1      19
1        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1        1      19
1        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       11      19
1        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1        6      19
0        6-24 months   ki1119695-PROBIT           BELARUS                        Control               0     7228   15644
0        6-24 months   ki1119695-PROBIT           BELARUS                        Control               1      294   15644
0        6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     7824   15644
0        6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      298   15644
1        6-24 months   ki1119695-PROBIT           BELARUS                        Control               0      267     659
1        6-24 months   ki1119695-PROBIT           BELARUS                        Control               1       15     659
1        6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0      364     659
1        6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1       13     659
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0     1912    8735
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      297    8735
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     5635    8735
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      891    8735
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      107     543
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       22     543
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0      361     543
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1       53     543
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       89     548
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1      148     548
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0      147     548
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1      164     548
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0        9      34
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       11      34
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0        5      34
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1        9      34
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0       61     398
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1        9     398
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      253     398
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1       75     398
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0      102     794
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1       28     794
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      523     794
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      141     794
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       43     178
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       12     178
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       46     178
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       19     178
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       42     178
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       16     178
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      195     753
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       62     753
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0      169     753
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       70     753
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0      187     753
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       70     753
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      389    2031
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1      112    2031
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      786    2031
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1      236    2031
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      377    2031
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1      131    2031
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       38     206
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       17     206
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       79     206
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       18     206
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       46     206
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        8     206
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0       38     225
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1       23     225
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       81     225
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       83     225
1        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0        1      28
1        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1        3      28
1        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0        9      28
1        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       15      28
0        0-24 months   ki1119695-PROBIT           BELARUS                        Control               0     6694   16052
0        0-24 months   ki1119695-PROBIT           BELARUS                        Control               1     1057   16052
0        0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     7332   16052
0        0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      969   16052
1        0-24 months   ki1119695-PROBIT           BELARUS                        Control               0      236     683
1        0-24 months   ki1119695-PROBIT           BELARUS                        Control               1       56     683
1        0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0      338     683
1        0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1       53     683
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0     1892   11034
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      889   11034
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     5580   11034
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1     2673   11034
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      111     728
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       62     728
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0      355     728
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      200     728
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       90    1037
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1      404    1037
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0      150    1037
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1      393    1037
1        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       10      96
1        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       46      96
1        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0        4      96
1        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       36      96
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0       56     674
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1       54     674
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      263     674
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      301     674
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               0       99    1203
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control               1      100    1203
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   0      527    1203
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                   1      477    1203
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       42     220
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       27     220
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       43     220
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       34     220
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       39     220
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       35     220
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      186     936
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1      135     936
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0      163     936
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1      141     936
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0      176     936
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1      135     936


The following strata were considered:

* single: 0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 0, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 0, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 0, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 0, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 0, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 0, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 0, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 0, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 0, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 0, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 0, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 0, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 1, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 1, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* single: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8996a54c-dec5-4b8f-9302-ed7c50438623/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 34 rows containing missing values (geom_errorbar).
```

![](/tmp/8996a54c-dec5-4b8f-9302-ed7c50438623/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/8996a54c-dec5-4b8f-9302-ed7c50438623/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8996a54c-dec5-4b8f-9302-ed7c50438623/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


single   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2235529   0.1870622   0.2600436
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2309198   0.2050766   0.2567629
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2578740   0.2198230   0.2959250
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.3770492   0.3440028   0.4100955
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.5060976   0.4502001   0.5619951
0        0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1363695   0.1228341   0.1499049
0        0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.1167329   0.1060534   0.1274124
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.3196692   0.3153005   0.3240378
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.3238822   0.3163305   0.3314339
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.8178138   0.8015909   0.8340366
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.7237569   0.7040544   0.7434594
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.5025126   0.4910164   0.5140088
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.4750996   0.4493090   0.5008902
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.4205607   0.3664716   0.4746499
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.4638158   0.4077474   0.5198842
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.4340836   0.3789105   0.4892567
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0684105   0.0462105   0.0906104
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0652819   0.0500513   0.0805125
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0912698   0.0661208   0.1164189
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.2105263   0.1818676   0.2391850
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.2077922   0.1609118   0.2546727
0        0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0670918   0.0580251   0.0761585
0        0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.0607272   0.0534725   0.0679820
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1686183   0.1646312   0.1726053
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1731554   0.1661956   0.1801153
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.3305785   0.2905701   0.3705869
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.2932331   0.2526410   0.3338252
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.3414634   0.3278738   0.3550530
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2688679   0.2399752   0.2977607
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1394231   0.1061269   0.1727192
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1247002   0.1022713   0.1471291
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1553398   0.1203523   0.1903273
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.1363636   0.1071072   0.1656201
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.2293578   0.1729451   0.2857705
0        6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0390853   0.0307418   0.0474289
0        6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0366905   0.0324612   0.0409197
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1344500   0.1308522   0.1380478
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1365308   0.1303068   0.1427548
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.6244726   0.5977846   0.6511606
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.5273312   0.4958128   0.5588496
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.2153846   0.2038073   0.2269620
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2123494   0.1863192   0.2383796
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2412451   0.1888335   0.2936568
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.2928870   0.2351263   0.3506477
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2723735   0.2178374   0.3269097
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3090909   0.1866640   0.4315178
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1855670   0.1080143   0.2631197
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1481481   0.0531669   0.2431294
1        0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1917808   0.1625126   0.2210491
1        0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.1355499   0.1110042   0.1600955
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.3583815   0.3413893   0.3753737
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.3603604   0.3298886   0.3908321
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.4909091   0.4756508   0.5061674
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.5336879   0.4992107   0.5681652
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3913043   0.2758872   0.5067215
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.4415584   0.3303917   0.5527252
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.4729730   0.3589595   0.5869864
1        0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.1000000   0.0776059   0.1223941
1        0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.0880000   0.0646885   0.1113115
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1914894   0.1751222   0.2078565
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.2315036   0.2012585   0.2617487
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.2666667   0.2502318   0.2831016
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.3123209   0.2707813   0.3538605
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1333333   0.0337215   0.2329451
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1234568   0.0516074   0.1953062
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1111111   0.0190200   0.2032023
1        6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0531915   0.0382140   0.0681689
1        6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0344828   0.0265546   0.0424110
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1705426   0.1551094   0.1859759
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1280193   0.1034587   0.1525800
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.5500000   0.4198170   0.6801830
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6428571   0.5379527   0.7477616
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.1285714   0.1147629   0.1423800
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2286585   0.1911556   0.2661615
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2181818   0.1087226   0.3276410
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.2923077   0.1814267   0.4031887
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2758621   0.1605130   0.3912111


### Parameter: E(Y)


single   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2358444   0.2173771   0.2543117
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4711111   0.4057427   0.5364795
0        0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1262148   0.1078546   0.1445750
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3228204   0.3140960   0.3315447
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7685632   0.7428814   0.7942449
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.4796342   0.4513916   0.5078769
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4391026   0.4072716   0.4709335
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0725646   0.0612264   0.0839029
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2085308   0.1535842   0.2634774
0        0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0638120   0.0519542   0.0756697
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1720165   0.1639954   0.1800375
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3110236   0.2539827   0.3680646
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2806324   0.2486466   0.3126183
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1359807   0.1194967   0.1524648
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2026144   0.1387151   0.2665136
0        6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0378420   0.0283816   0.0473023
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1360046   0.1288155   0.1431937
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5693431   0.5278470   0.6108392
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2128463   0.1843575   0.2413352
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2682603   0.2365597   0.2999609
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2087379   0.1531049   0.2643708
1        0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1595900   0.1202158   0.1989643
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3598901   0.3250007   0.3947795
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.5267062   0.4889846   0.5644278
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4363636   0.3706811   0.5020462
1        0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0931298   0.0608027   0.1254569
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2214286   0.1870088   0.2558484
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.3056235   0.2609233   0.3503236
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1228070   0.0734689   0.1721452
1        6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0424886   0.0254870   0.0594902
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1381215   0.1090745   0.1671686
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5882353   0.4203196   0.7561510
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2110553   0.1709156   0.2511950
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2640449   0.1991029   0.3289870


### Parameter: RR


single   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0329536   0.8474788   1.2590204
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1535257   0.9256899   1.4374377
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           1.3422587   1.1657400   1.5455064
0        0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8560046   0.7487271   0.9786529
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0131794   0.9861638   1.0409350
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8849899   0.8556769   0.9153070
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.9454482   0.8913622   1.0028161
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.1028509   0.9244030   1.3157466
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.0321543   0.8614206   1.2367276
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9542678   0.6398741   1.4231347
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3341503   0.8716041   2.0421623
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           0.9870130   0.7583794   1.2845742
0        0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           0.9051363   0.7562418   1.0833463
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0269078   0.9801191   1.0759302
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8870301   0.7380447   1.0660904
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.7873989   0.7021460   0.8830030
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8944017   0.6632724   1.2060722
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1141614   0.8023836   1.5470848
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           1.6819572   1.2135792   2.3311046
0        6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.9387269   0.7373053   1.1951742
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0154766   0.9631920   1.0705993
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8444425   0.7846202   0.9088259
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.9859079   0.8623953   1.1271100
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.2140640   0.9053434   1.6280578
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.1290323   0.8402232   1.5171133
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6003639   0.3375578   1.0677779
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.4793028   0.2255913   1.0183514
1        0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.7067958   0.5577366   0.8956920
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0055217   0.9126175   1.1078834
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.0871421   1.0119329   1.1679410
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.1284271   0.7656993   1.6629868
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.2087087   0.8258217   1.7691188
1        0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           0.8800000   0.6219263   1.2451636
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.2089631   1.0342133   1.4132402
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.1712034   1.0115091   1.3561099
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9259259   0.3591631   2.3870461
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8333333   0.2730350   2.5434261
1        6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.6482759   0.4501286   0.9336479
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           0.7506588   0.6071817   0.9280394
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           1.1688312   0.8767858   1.5581528
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.7784553   1.4618413   2.1636433
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.3397436   0.7142839   2.5128844
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.2643678   0.6580186   2.4294542


### Parameter: PAR


single   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0122915   -0.0195782    0.0441612
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.0940619    0.0376619    0.1504620
0        0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0101547   -0.0217223    0.0014129
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0031512   -0.0044006    0.0107030
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0492506   -0.0691596   -0.0293416
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0228783   -0.0486753    0.0029187
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0185418   -0.0254145    0.0624982
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0041541   -0.0152859    0.0235942
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0019955   -0.0488762    0.0448852
0        0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0032798   -0.0106885    0.0041289
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0033982   -0.0035618    0.0103582
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0195549   -0.0602120    0.0211022
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0608310   -0.0897864   -0.0318756
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0034423   -0.0321717    0.0252870
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.0662507    0.0094425    0.1230589
0        6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0012434   -0.0055466    0.0030599
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0015546   -0.0046695    0.0077787
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0551295   -0.0869049   -0.0233541
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0025383   -0.0285686    0.0234921
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0270152   -0.0163070    0.0703373
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1003530   -0.2007517    0.0000456
1        0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0321908   -0.0588344   -0.0055471
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0015086   -0.0289632    0.0319805
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0357971    0.0012992    0.0702950
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0450593   -0.0512700    0.1413886
1        0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0068702   -0.0301639    0.0164235
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0299392   -0.0003401    0.0602186
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0389568   -0.0026124    0.0805260
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0105263   -0.0949916    0.0739390
1        6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0107029   -0.0195044   -0.0019014
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0324211   -0.0570290   -0.0078132
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0382353   -0.0678216    0.1442922
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0824838    0.0447941    0.1201736
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0458631   -0.0479164    0.1396427


### Parameter: PAF


single   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0521171   -0.0930903    0.1780349
0        0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.1996598    0.0967257    0.2908638
0        0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0804557   -0.1851731    0.0150093
0        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0097614   -0.0136768    0.0326578
0        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0640814   -0.0920398   -0.0368388
0        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0476995   -0.1056049    0.0071731
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0422266   -0.0633249    0.1373005
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0572476   -0.2524235    0.2903502
0        0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0095694   -0.2640769    0.1936959
0        0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0513983   -0.1812957    0.0642154
0        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0197551   -0.0207227    0.0586276
0        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0628727   -0.2115698    0.0675747
0        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.2167640   -0.3494999   -0.0970839
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0253148   -0.2599142    0.1656015
0        6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.3269795    0.1014387    0.4959091
0        6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0328568   -0.1576529    0.0784862
0        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0114305   -0.0348623    0.0556525
0        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0968300   -0.1599630   -0.0371332
0        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0119254   -0.1435675    0.1045628
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1007050   -0.0760226    0.2484066
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.4807611   -1.0438684   -0.0727958
1        0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.2017092   -0.4236092   -0.0143970
1        0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0041919   -0.0837957    0.0850362
1        0-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0679641    0.0048408    0.1270836
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1032609   -0.1473117    0.2991085
1        0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0737705   -0.3796878    0.1643159
1        0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.1352093    0.0080027    0.2461039
1        0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.1274667    0.0001134    0.2385993
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0857143   -1.0445447    0.4234533
1        6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.2518997   -0.5532547   -0.0090121
1        6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.2347287   -0.4773856   -0.0319276
1        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0650000   -0.1204643    0.2197654
1        6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.3908163    0.2681584    0.4929166
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1736944   -0.2684107    0.4617036
