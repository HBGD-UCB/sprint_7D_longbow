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

* birthwt
* agecat
* studyid
* country

## Data Summary

birthwt   agecat        studyid                    country                        tr.x       ever_stunted   n_cell       n
--------  ------------  -------------------------  -----------------------------  --------  -------------  -------  ------
[-2--1)   0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control               0        5      23
[-2--1)   0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control               1        0      23
[-2--1)   0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0       15      23
[-2--1)   0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                 1        3      23
[-1-0)    0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control               0        3       7
[-1-0)    0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0        4       7
<-3       0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control               1        1       1
>=0       0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control               0        1       3
>=0       0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0        2       3
[-2--1)   0-6 months    ki1000304-ZnMort           INDIA                          Other                 0        8      19
[-2--1)   0-6 months    ki1000304-ZnMort           INDIA                          Other                 1        3      19
[-2--1)   0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  0        5      19
[-2--1)   0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  1        3      19
<-3       0-6 months    ki1000304-ZnMort           INDIA                          Other                 0        2       7
<-3       0-6 months    ki1000304-ZnMort           INDIA                          Other                 1        0       7
<-3       0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  0        0       7
<-3       0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  1        5       7
[-1-0)    0-6 months    ki1000304-ZnMort           INDIA                          Other                 0        2       9
[-1-0)    0-6 months    ki1000304-ZnMort           INDIA                          Other                 1        0       9
[-1-0)    0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  0        6       9
[-1-0)    0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  1        1       9
[-3--2)   0-6 months    ki1000304-ZnMort           INDIA                          Other                 0        2       8
[-3--2)   0-6 months    ki1000304-ZnMort           INDIA                          Other                 1        4       8
[-3--2)   0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  0        1       8
[-3--2)   0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  1        1       8
>=0       0-6 months    ki1000304-ZnMort           INDIA                          Other                 0        1       2
>=0       0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  0        1       2
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0       97     265
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1       46     265
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0       85     265
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1       37     265
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0      117     298
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1       19     298
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0      140     298
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1       22     298
<-3       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0        4      50
<-3       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1       17      50
<-3       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0        3      50
<-3       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1       26      50
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0       16     104
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1       19     104
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0       35     104
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1       34     104
>=0       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0       30      75
>=0       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1        2      75
>=0       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0       42      75
>=0       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1        1      75
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0       62     268
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1       11     268
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      171     268
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       24     268
[-1-0)    0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0       56     206
[-1-0)    0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1        2     206
[-1-0)    0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      141     206
[-1-0)    0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1        7     206
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0       12     103
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1       11     103
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0       48     103
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       32     103
>=0       0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0       11      59
>=0       0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0       48      59
<-3       0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0        1       4
<-3       0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1        0       4
<-3       0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0        1       4
<-3       0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1        2       4
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      208     901
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       18     901
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      413     901
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       27     901
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      217     901
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       18     901
>=0       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      242     959
>=0       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        4     959
>=0       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      465     959
>=0       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       10     959
>=0       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      228     959
>=0       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       10     959
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       55     284
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       10     284
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      126     284
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       24     284
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       55     284
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       14     284
<-3       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        1      21
<-3       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        4      21
<-3       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0        5      21
<-3       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        4      21
<-3       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0        3      21
<-3       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        4      21
[-3--2)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        5      44
[-3--2)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        4      44
[-3--2)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       21      44
[-3--2)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        5      44
[-3--2)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0        8      44
[-3--2)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        1      44
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Control               0     4737   10100
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Control               1      112   10100
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0     5150   10100
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1      101   10100
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Control               0     2150    4948
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Control               1      255    4948
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0     2285    4948
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1      258    4948
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Control               0      387    1137
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Control               1      166    1137
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0      424    1137
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1      160    1137
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      846    3801
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      103    3801
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     2543    3801
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      309    3801
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      536    2131
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       21    2131
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     1505    2131
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1       69    2131
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      394    2195
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      128    2195
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     1227    2195
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      446    2195
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      104     716
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      101     716
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0      269     716
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      242     716
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               0       12     225
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       33     225
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0       43     225
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      137     225
>=0       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0       32      75
>=0       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1        5      75
>=0       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0       36      75
>=0       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1        2      75
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0       18      71
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1       14      71
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0       19      71
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1       20      71
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0       30      97
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1       14      97
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0       43      97
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1       10      97
[-3--2)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0        4      19
[-3--2)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1        8      19
[-3--2)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0        1      19
[-3--2)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1        6      19
<-3       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1        2       3
<-3       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1        1       3
>=0       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        4      15
>=0       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        1      15
>=0       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        3      15
>=0       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        0      15
>=0       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        5      15
>=0       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        2      15
[-1-0)    0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        8      29
[-1-0)    0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        2      29
[-1-0)    0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        7      29
[-1-0)    0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        1      29
[-1-0)    0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       11      29
[-1-0)    0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        0      29
<-3       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        1       4
<-3       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        3       4
[-2--1)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        3      15
[-2--1)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        1      15
[-2--1)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        4      15
[-2--1)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        3      15
[-2--1)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        3      15
[-2--1)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        1      15
[-3--2)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        0       2
[-3--2)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        1       2
[-3--2)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        1       2
[-3--2)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        0       2
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1215    4232
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      991    4232
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1217    4232
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      809    4232
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0     2860    7004
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      641    7004
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     2957    7004
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      546    7004
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0      195    1756
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      759    1756
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      171    1756
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      631    1756
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1692    4015
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      137    4015
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     2025    4015
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      161    4015
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0      963    2296
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      123    2296
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1077    2296
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      133    2296
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               0      250    1216
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               1       54    1216
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      279    1216
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       91    1216
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      141    1216
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       48    1216
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      278    1216
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       75    1216
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               0      218     928
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               1       31     928
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      271     928
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       44     928
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      111     928
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       28     928
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      190     928
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       35     928
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               0       15     234
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               1       46     234
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0       18     234
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       54     234
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0        5     234
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       37     234
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 0       16     234
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       43     234
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               0      227     959
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               1       34     959
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      254     959
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       47     959
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      119     959
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       17     959
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      225     959
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       36     959
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               0       77     598
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               1       68     598
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      109     598
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       86     598
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0       55     598
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       33     598
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 0       95     598
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       75     598
[-2--1)   6-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0        2      13
[-2--1)   6-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0       11      13
[-1-0)    6-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0        3       3
>=0       6-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0        2       2
<-3       6-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0        1       1
[-1-0)    6-24 months   ki1000304-ZnMort           INDIA                          Other                 0       46      83
[-1-0)    6-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0       37      83
<-3       6-24 months   ki1000304-ZnMort           INDIA                          Other                 0       18      25
<-3       6-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0        7      25
[-2--1)   6-24 months   ki1000304-ZnMort           INDIA                          Other                 0       36      87
[-2--1)   6-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0       51      87
>=0       6-24 months   ki1000304-ZnMort           INDIA                          Other                 0       21      43
>=0       6-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0       22      43
[-3--2)   6-24 months   ki1000304-ZnMort           INDIA                          Other                 0       11      23
[-3--2)   6-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0       12      23
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       68     210
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       36     210
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       73     210
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       33     210
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       95     286
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       37     286
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0      107     286
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       47     286
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0        9      59
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       12      59
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       23      59
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       15      59
>=0       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       25      82
>=0       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       11      82
>=0       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       42      82
>=0       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1        4      82
<-3       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0        0       6
<-3       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1        2       6
<-3       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0        3       6
<-3       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1        1       6
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       41     203
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       11     203
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      109     203
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       42     203
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       42     179
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       12     179
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      100     179
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       25     179
>=0       6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       10      53
>=0       6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1        1      53
>=0       6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       35      53
>=0       6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1        7      53
[-3--2)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0        8      62
[-3--2)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1        1      62
[-3--2)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       33      62
[-3--2)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       20      62
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      194     826
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       19     826
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      371     826
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       39     826
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      178     826
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       25     826
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      157     752
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       39     752
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      312     752
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       48     752
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      168     752
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       28     752
[-2--1)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       41     210
[-2--1)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        4     210
[-2--1)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       94     210
[-2--1)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       19     210
[-2--1)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       39     210
[-2--1)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       13     210
<-3       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        2      13
<-3       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        1      13
<-3       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0        5      13
<-3       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        2      13
<-3       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0        2      13
<-3       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        1      13
[-3--2)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        4      29
[-3--2)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        1      29
[-3--2)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       15      29
[-3--2)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        4      29
[-3--2)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0        3      29
[-3--2)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2      29
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Control               0     4779   10278
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Control               1      140   10278
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     5222   10278
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      137   10278
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Control               0     2239    4953
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Control               1      133    4953
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     2445    4953
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      136    4953
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Control               0      477    1072
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Control               1       36    1072
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0      521    1072
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1       38    1072
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      904    4120
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      116    4120
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     2708    4120
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      392    4120
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      566    2346
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       48    2346
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     1584    2346
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      148    2346
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      412    2080
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      106    2080
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     1269    2080
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      293    2080
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      119     600
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       46     600
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0      346     600
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1       89     600
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0       26     142
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1        5     142
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0       87     142
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1       24     142
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       37     167
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       38     167
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       47     167
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       45     167
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       12     113
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       47     113
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       20     113
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       34     113
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       26     176
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       46     176
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       48     176
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       56     176
[-3--2)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0        1      15
[-3--2)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1        7      15
[-3--2)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0        3      15
[-3--2)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1        4      15
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      118     405
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       28     405
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       96     405
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       38     405
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       93     405
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       32     405
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       55     258
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       13     258
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       82     258
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       15     258
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       78     258
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       15     258
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       46     201
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       29     201
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       29     201
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       28     201
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       40     201
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       29     201
[-3--2)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       11      42
[-3--2)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        3      42
[-3--2)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        5      42
[-3--2)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        6      42
[-3--2)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       12      42
[-3--2)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        5      42
<-3       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        4      13
<-3       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        1      13
<-3       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        3      13
<-3       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        2      13
<-3       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        2      13
<-3       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        1      13
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     2047    5146
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      490    5146
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     2010    5146
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      599    5146
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      752    1829
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      100    1829
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      879    1829
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       98    1829
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      223     546
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1       67     546
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      178     546
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       78     546
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      851    2323
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      362    2323
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      764    2323
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      346    2323
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1357    3395
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      212    3395
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1564    3395
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      262    3395
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      193    1108
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1       99    1108
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      231    1108
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       98    1108
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      109    1108
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       60    1108
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      222    1108
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       96    1108
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      203     952
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1       68     952
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      234     952
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       75     952
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      114     952
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       25     952
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      185     952
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       48     952
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0       16     105
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1       13     105
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0       16     105
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       13     105
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0        8     105
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1        6     105
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0       25     105
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1        8     105
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      196     968
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1       68     968
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      210     968
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       88     968
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      101     968
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       42     968
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      190     968
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       73     968
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0       55     438
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1       50     438
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0       88     438
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       52     438
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0       33     438
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       30     438
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0       77     438
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       53     438
[-2--1)   0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0        7      40
[-2--1)   0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               1        1      40
[-2--1)   0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0       26      40
[-2--1)   0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 1        6      40
[-1-0)    0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0        6      11
[-1-0)    0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               1        0      11
[-1-0)    0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0        4      11
[-1-0)    0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 1        1      11
<-3       0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0        0       2
<-3       0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               1        1       2
<-3       0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0        1       2
<-3       0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 1        0       2
>=0       0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0        1       5
>=0       0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0        4       5
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Other                 0       48     116
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Other                 1       13     116
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0       43     116
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  1       12     116
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Other                 0       44     171
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Other                 1       34     171
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0       56     171
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  1       37     171
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Other                 0       13      65
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Other                 1       18      65
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0       13      65
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  1       21      65
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Other                 0       20      77
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Other                 1       25      77
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0        7      77
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  1       25      77
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Other                 0       22      59
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Other                 1        8      59
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0       23      59
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  1        6      59
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       58     320
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1      107     320
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       63     320
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       92     320
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       87     347
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       74     347
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       96     347
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       90     347
<-3       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0        0      59
<-3       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       25      59
<-3       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0        1      59
<-3       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       33      59
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0        5     125
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       40     125
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       23     125
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       57     125
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       25      93
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       17      93
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       41      93
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       10      93
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       41     269
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       32     269
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      111     269
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       85     269
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       43     206
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       15     206
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      104     206
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       44     206
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0        7     103
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       16     103
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       24     103
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       56     103
>=0       0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       10      59
>=0       0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1        1      59
>=0       0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       39      59
>=0       0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1        9      59
<-3       0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1        1       4
<-3       0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1        3       4
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      167     913
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       62     913
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      337     913
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1      109     913
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      182     913
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       56     913
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      215     967
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       33     967
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      411     967
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       69     967
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      197     967
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       42     967
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       42     285
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       23     285
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       94     285
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       56     285
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       36     285
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       34     285
<-3       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        1      21
<-3       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        4      21
<-3       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0        4      21
<-3       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        5      21
<-3       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0        2      21
<-3       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        5      21
[-3--2)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        4      44
[-3--2)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        5      44
[-3--2)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       14      44
[-3--2)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       12      44
[-3--2)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0        7      44
[-3--2)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2      44
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Control               0     4639   10437
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Control               1      364   10437
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     5123   10437
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      311   10437
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Control               0     1960    5122
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Control               1      507    5122
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     2171    5122
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      484    5122
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Control               0      331    1176
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Control               1      242    1176
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0      376    1176
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      227    1176
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      911    4948
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      321    4948
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     2737    4948
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      979    4948
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      616    2742
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      105    2742
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     1702    2742
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      319    2742
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0      372    2835
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      319    2835
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0     1180    2835
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      964    2835
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0       97     942
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1      154     942
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0      269     942
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      422     942
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               0       13     301
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control               1       54     301
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 0       39     301
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                 1      195     301
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       39     240
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       73     240
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       52     240
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       76     240
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       29     287
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       99     287
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       51     287
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1      108     287
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       11     248
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1      113     248
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       19     248
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1      105     248
[-3--2)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0        1      62
[-3--2)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       39      62
[-3--2)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0        3      62
[-3--2)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       19      62
<-3       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1        6      11
<-3       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1        5      11
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      114     477
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       57     477
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       93     477
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       63     477
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       90     477
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       60     477
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       53     279
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       23     279
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       81     279
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       24     279
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       72     279
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       26     279
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       43     275
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       58     275
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       26     275
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       57     275
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       36     275
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       55     275
<-3       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        3      28
<-3       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        7      28
<-3       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        2      28
<-3       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        8      28
<-3       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        2      28
<-3       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        6      28
[-3--2)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       10      75
[-3--2)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       14      75
[-3--2)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        4      75
[-3--2)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       21      75
[-3--2)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       11      75
[-3--2)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       15      75
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     2672    8233
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1     1411    8233
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     2711    8233
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1     1439    8233
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1013    5024
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1     1590    5024
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1021    5024
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1     1400    5024
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      999    2705
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      273    2705
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1154    2705
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      279    2705
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      191    2076
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      941    2076
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      143    2076
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      801    2076
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1745    4778
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      459    4778
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     2041    4778
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      533    4778
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      178    1384
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1      171    1384
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      207    1384
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      205    1384
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0       97    1384
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1      122    1384
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      200    1384
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      204    1384
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      191    1083
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1      103    1083
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      222    1083
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      131    1083
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      107    1083
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       61    1083
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      177    1083
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       91    1083
<-3       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0        7     270
<-3       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1       69     270
<-3       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0        6     270
<-3       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       69     270
<-3       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0        3     270
<-3       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       46     270
<-3       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0       14     270
<-3       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       56     270
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      187    1090
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1      114    1090
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      198    1090
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      140    1090
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0       96    1090
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       63    1090
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      182    1090
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      110    1090
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0       41     676
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1      124     676
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0       66     676
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      150     676
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0       31     676
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       73     676
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0       56     676
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      135     676


The following strata were considered:

* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-1-0), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-1-0), agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-1-0), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-1-0), agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-1-0), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-1-0), agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-2--1), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-2--1), agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-2--1), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-2--1), agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-2--1), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-2--1), agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-3--2), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-3--2), agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-3--2), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-3--2), agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-3--2), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-3--2), agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: <-3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: <-3, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: <-3, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: <-3, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: <-3, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: <-3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: <-3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: <-3, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: <-3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: <-3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: <-3, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: <-3, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: <-3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: <-3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: <-3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: <-3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: <-3, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: <-3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: <-3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: >=0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: >=0, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: >=0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: >=0, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: >=0, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: >=0, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: >=0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: >=0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: >=0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: >=0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: >=0, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: >=0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: >=0, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: >=0, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: >=0, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: >=0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: >=0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: >=0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: >=0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: >=0, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: >=0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: >=0, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: >=0, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: >=0, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: >=0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: >=0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: >=0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: >=0, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: <-3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: >=0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: <-3, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: >=0, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: <-3, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: >=0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-1-0), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-2--1), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-3--2), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: <-3, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-2--1), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: <-3, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-3--2), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-2--1), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: <-3, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: <-3, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: <-3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-3--2), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr.x      1
##   Control 6
##   LNS     0
##   MMN     0
##   Other   5
##   Zinc    0
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   18
##   Zinc     7
##          ever_stunted
## tr.x       0
##   Control 11
##   LNS      0
##   MMN      0
##   Other   48
##   Zinc     0
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   21
##   Zinc    22
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   46
##   Zinc    37
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   36
##   Zinc    51
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   11
##   Zinc    12
```




# Results Detail

## Results Plots
![](/tmp/1f5a6ffa-6b44-42c5-bd53-038b42d3acbb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 96 rows containing missing values (geom_errorbar).
```

![](/tmp/1f5a6ffa-6b44-42c5-bd53-038b42d3acbb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/1f5a6ffa-6b44-42c5-bd53-038b42d3acbb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1f5a6ffa-6b44-42c5-bd53-038b42d3acbb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


birthwt   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                0.2666667   0.1070661   0.4262673
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 NA                0.2068966   0.0581994   0.3555937
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.4047619   0.3671084   0.4424154
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.1960784   0.1426062   0.2495506
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1330645   0.0907712   0.1753578
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1437500   0.1123481   0.1751519
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1757322   0.1274560   0.2240085
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0727563   0.0620324   0.0834803
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0572322   0.0511559   0.0633086
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1456311   0.1388597   0.1524024
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1578427   0.1461247   0.1695606
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.6517857   0.6105258   0.6930456
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.5937500   0.5482777   0.6392223
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3026316   0.1987900   0.4064732
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.2285714   0.1479337   0.3092092
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2653061   0.1774233   0.3531889
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2146226   0.2001762   0.2290690
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1946964   0.1822991   0.2070937
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3503401   0.2894284   0.4112519
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.3711048   0.3142118   0.4279978
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.3630952   0.2826914   0.4434991
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.3395522   0.2695252   0.4095793
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0230975   0.0169432   0.0292519
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.0192344   0.0153459   0.0231230
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.0377020   0.0335664   0.0418375
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.0438374   0.0363650   0.0513097
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1132597   0.1027560   0.1237633
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1099174   0.0992652   0.1205695
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.1244980   0.0828066   0.1661894
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.1396825   0.0965666   0.1827985
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.2014388   0.1271083   0.2757694
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.1555556   0.0960253   0.2150858
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0892019   0.0509001   0.1275037
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0951220   0.0667065   0.1235374
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1231527   0.0779206   0.1683848
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0284611   0.0217083   0.0352138
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0255645   0.0219753   0.0291536
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.0781759   0.0726174   0.0837344
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.0854503   0.0757285   0.0951722
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.5066667   0.4556986   0.5576347
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.4891304   0.4326891   0.5455717
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.1911765   0.0971672   0.2851858
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.1546392   0.0823348   0.2269436
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.1612903   0.0861021   0.2364785
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1173709   0.1041242   0.1306176
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1003071   0.0889138   0.1117003
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2509225   0.1946151   0.3072299
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2427184   0.1924185   0.2930184
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.1798561   0.1105539   0.2491583
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2060086   0.1445562   0.2674610
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                0.5555556   0.4094210   0.7016901
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 NA                0.7812500   0.6370781   0.9254219
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.8059701   0.7848579   0.8270824
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.8333333   0.7961502   0.8705165
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.8312721   0.8186933   0.8438509
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.8485169   0.8346628   0.8623711
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.7333333   0.7074349   0.7592318
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.7611111   0.7111662   0.8110560
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.7955975   0.7793152   0.8118798
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.7867830   0.7699892   0.8035769
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.7540984   0.6388851   0.8693116
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.7500000   0.6441814   0.8558186
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.8809524   0.7955429   0.9663618
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.7288136   0.6046157   0.8530114
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1612903   0.1329252   0.1896555
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.2162162   0.1561406   0.2762918
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2310345   0.2024445   0.2596244
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3046875   0.2725528   0.3368222
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.4482759   0.2675269   0.6290248
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.4482759   0.2646962   0.6318555
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.4285714   0.1570616   0.7000812
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2424242   0.0933015   0.3915470
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                0.5806452   0.4055879   0.7557024
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 NA                0.6176471   0.4530289   0.7822652
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.8888889   0.8460579   0.9317199
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.7125000   0.6816886   0.7433114
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.6956522   0.6534559   0.7378485
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.7000000   0.6216238   0.7783762
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.6135458   0.5974861   0.6296055
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.6107091   0.5840269   0.6373913
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.6108337   0.6004295   0.6212378
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.5782734   0.5657464   0.5908005
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.7515152   0.6662812   0.8367491
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.6944444   0.6292352   0.7596537
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.7019231   0.5996334   0.8042128
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.7068063   0.6346519   0.7789606
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.5428571   0.4639355   0.6217788
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.4927536   0.4479363   0.5375710
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.4782609   0.4324517   0.5240700
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.4000000   0.3162124   0.4837876
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.4926829   0.4730747   0.5122912
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.4735812   0.4426632   0.5044993
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4492294   0.4366345   0.4618243
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3993090   0.3863983   0.4122197
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.4689655   0.3752600   0.5626710
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.4410256   0.3663151   0.5157362
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.3750000   0.2646939   0.4853061
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.4411765   0.3586319   0.5237210
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.5714286   0.5159185   0.6269386
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3947368   0.3583402   0.4311335
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.2787879   0.2599570   0.2976187
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.2045977   0.1770904   0.2321050
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2984336   0.2832739   0.3135934
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3117117   0.2952134   0.3282100
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.4761905   0.3667906   0.5855904
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.3714286   0.2900999   0.4527573
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.4761905   0.3414861   0.6108948
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.4076923   0.3147529   0.5006317
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                0.4358974   0.3255288   0.5462660
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 NA                0.3978495   0.2980813   0.4976177
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.6484848   0.5728405   0.7241292
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.5935484   0.5183330   0.6687638
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.4383562   0.4074098   0.4693026
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.4336735   0.3830272   0.4843197
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3538462   0.2373987   0.4702936
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.3733333   0.2957922   0.4508745
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.4857143   0.3684259   0.6030027
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.4223386   0.3889286   0.4557486
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.3764511   0.3434863   0.4094158
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.4616498   0.4525883   0.4707113
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.4496269   0.4336997   0.4655540
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.9112903   0.8862178   0.9363629
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.8467742   0.8150103   0.8785381
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.5742574   0.4776512   0.6708637
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.6867470   0.5867824   0.7867116
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.6043956   0.5037466   0.7050447
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3455792   0.3364560   0.3547024
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3467470   0.3387384   0.3547556
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.4899713   0.4218542   0.5580885
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.4975728   0.4385620   0.5565836
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.5570776   0.4860812   0.6280740
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.5049505   0.4485671   0.5613339
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.3216783   0.2816008   0.3617558
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3032787   0.2647481   0.3418093
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1506849   0.1282897   0.1730802
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1230769   0.0894636   0.1566902
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1538462   0.0659792   0.2417131
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1600000   0.1012283   0.2187717
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2028986   0.1078412   0.2979559
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.3001808   0.2693496   0.3310121
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.2739726   0.2432912   0.3046540
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.2452107   0.2364320   0.2539894
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.2665870   0.2504339   0.2827400
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.4375000   0.3594819   0.5155181
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.5128205   0.4260386   0.5996025
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1830905   0.1759357   0.1902454
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1558664   0.1492666   0.1624662
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.1776316   0.1317598   0.2235033
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2459459   0.1892941   0.3025978
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.2539683   0.1932637   0.3146728
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2124646   0.1659174   0.2590118
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.3461538   0.2679563   0.4243514
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3113208   0.2675071   0.3551344
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.2115385   0.1830341   0.2400428
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2781457   0.2248522   0.3314391
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0701754   0.0529863   0.0873646
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0679785   0.0538376   0.0821195
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.2046332   0.1959790   0.2132874
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1875800   0.1730384   0.2021217
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7966102   0.7427443   0.8504760
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6296296   0.5678056   0.6914537
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3866667   0.2761782   0.4971552
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.4912281   0.3611222   0.6213339
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.4202899   0.3035319   0.5370478
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1931415   0.1847091   0.2015739
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2295899   0.2201508   0.2390290
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3390411   0.2708084   0.4072738
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2978723   0.2402325   0.3555122
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.3550296   0.2756565   0.4344027
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.3018868   0.2418774   0.3618961
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                0.2131148   0.1099038   0.3163257
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 NA                0.2181818   0.1085570   0.3278067
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.4596273   0.4264252   0.4928295
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.4838710   0.4356278   0.5321142
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.2586207   0.2268151   0.2904263
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2972973   0.2442639   0.3503307
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2707424   0.2131603   0.3283244
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2443946   0.2044910   0.2842982
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2352941   0.1813741   0.2892142
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.2055128   0.1852950   0.2257305
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.1822976   0.1680399   0.1965552
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.2605519   0.2544486   0.2666553
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.2634553   0.2528175   0.2740932
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7734375   0.7410382   0.8058368
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6792453   0.6389808   0.7195098
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3333333   0.2626040   0.4040627
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.4038462   0.3267685   0.4809238
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.4000000   0.3215191   0.4784809
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2082577   0.1985493   0.2179661
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2070707   0.1986445   0.2154970
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3787375   0.3131103   0.4443647
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.4142012   0.3534416   0.4749608
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.3962264   0.2995263   0.4929266
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.3767123   0.3132419   0.4401828
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.1397059   0.1151972   0.1642145
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.1358025   0.1224364   0.1491685
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0796460   0.0443281   0.1149639
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0613636   0.0389265   0.0838008
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0765957   0.0425742   0.1106173
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.1060291   0.0886855   0.1233727
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.1014550   0.0912838   0.1116261
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1085353   0.1035936   0.1134770
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1083450   0.0997848   0.1169052
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.3181818   0.2554302   0.3809334
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.1886792   0.1308266   0.2465318
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.0749043   0.0689583   0.0808503
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.0736505   0.0679082   0.0793928
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.1302682   0.0837256   0.1768108
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.1561462   0.1138979   0.1983944
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.1250000   0.0620085   0.1879915
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.1379310   0.0896289   0.1862331
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2803030   0.2538067   0.3067994
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3051948   0.2602532   0.3501364
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.2222222   0.1886771   0.2557674
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2000000   0.1508949   0.2491051
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1989796   0.1430508   0.2549083
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1333333   0.0981950   0.1684717
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1428571   0.0938356   0.1918786
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0560708   0.0429661   0.0691755
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0526928   0.0463301   0.0590554
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1137255   0.1089014   0.1185496
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                NA                0.1264516   0.1176474   0.1352558
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.6388889   0.5933721   0.6844057
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.5384615   0.4816848   0.5952383
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.1917808   0.1278404   0.2557213
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.2835821   0.2071712   0.3599930
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2560000   0.1793987   0.3326013
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1351179   0.1257242   0.1445116
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1434830   0.1344478   0.1525183
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2575758   0.1950052   0.3201463
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2953020   0.2351210   0.3554831
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.2937063   0.2029416   0.3844710
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2775665   0.2147847   0.3403484


### Parameter: E(Y)


birthwt   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=0       0-24 months   ki1000304-ZnMort           INDIA                          NA                   NA                0.2372881   0.1278037   0.3467726
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2903226   0.1803743   0.4002708
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1489142   0.1264643   0.1713641
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0646738   0.0515943   0.0777532
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1546317   0.1410964   0.1681669
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6208333   0.5593225   0.6823442
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2616487   0.2098282   0.3134693
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2040665   0.1849897   0.2231433
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3564174   0.3236901   0.3891446
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0210891   0.0137486   0.0284296
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0422337   0.0336925   0.0507749
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1114983   0.0965406   0.1264560
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1487069   0.1227007   0.1747131
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1004843   0.0799691   0.1209994
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0269508   0.0191957   0.0347059
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0835465   0.0723470   0.0947459
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4970060   0.4209460   0.5730660
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.1666667   0.1209435   0.2123898
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1082559   0.0907575   0.1257543
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2268908   0.1976492   0.2561323
<-3       0-24 months   ki1000304-ZnMort           INDIA                          NA                   NA                0.6493506   0.5420710   0.7566303
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8272425   0.7844643   0.8700207
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8391137   0.8204000   0.8578273
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7555556   0.6992764   0.8118347
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7915718   0.7681820   0.8149615
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7692308   0.7121801   0.8262815
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2042254   0.1376845   0.2707662
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2655678   0.2222832   0.3088523
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3809524   0.2865979   0.4753068
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          NA                   NA                0.6000000   0.4799772   0.7200228
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7760000   0.6930477   0.8589523
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.6990291   0.6100152   0.7880430
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6114650   0.5803224   0.6426075
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5951433   0.5787919   0.6114947
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7130178   0.6738909   0.7521446
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5096154   0.4203023   0.5989285
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4174757   0.3217738   0.5131776
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4790503   0.4424332   0.5156673
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4253308   0.4071975   0.4434642
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4381271   0.3942249   0.4820293
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4576271   0.3594932   0.5557610
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2250000   0.1915592   0.2584408
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3047783   0.2823619   0.3271947
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4223744   0.3722386   0.4725103
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          NA                   NA                0.4152047   0.3411322   0.4892771
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6218750   0.5103318   0.7334182
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4349442   0.3755912   0.4942973
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3964912   0.3395997   0.4533827
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.3988095   0.3501597   0.4474593
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4525573   0.4342319   0.4708828
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8790323   0.8383658   0.9196988
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.6181818   0.5606565   0.6757072
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3461679   0.3340415   0.3582943
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5072254   0.4755999   0.5388510
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3132075   0.2572884   0.3691267
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1305970   0.0901795   0.1710145
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1690141   0.1253511   0.2126770
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2867194   0.2426304   0.3308084
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2615034   0.2431151   0.2798918
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4788732   0.3618476   0.5958989
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1694746   0.1596969   0.1792523
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2203947   0.1937259   0.2470635
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3285714   0.2360253   0.4211176
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2610837   0.2005134   0.3216541
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0690299   0.0468637   0.0911960
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1918269   0.1749020   0.2087519
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7168142   0.6333734   0.8002549
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4278607   0.3592905   0.4964309
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2116207   0.1989020   0.2243394
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3185921   0.2860134   0.3511707
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          NA                   NA                0.2155172   0.1403667   0.2906677
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4726225   0.4140516   0.5311933
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2864078   0.2245223   0.3482932
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2486309   0.2205795   0.2766823
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1934791   0.1673650   0.2195933
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2627324   0.2504680   0.2749968
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7212544   0.6692891   0.7732196
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3773585   0.3338132   0.4209037
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2076183   0.1947645   0.2204720
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3917431   0.3574671   0.4260192
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1375839   0.1092052   0.1659626
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0699223   0.0532616   0.0865831
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.1036783   0.0833666   0.1239899
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1083925   0.0985083   0.1182768
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2474227   0.1611034   0.3337420
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0742217   0.0659580   0.0824853
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1397289   0.1154586   0.1639992
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2937063   0.2407029   0.3467097
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2067039   0.1472158   0.2661920
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1529255   0.1271843   0.1786667
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0543105   0.0396585   0.0689626
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1233010   0.1132603   0.1333416
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5795455   0.5064093   0.6526816
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2419753   0.2002130   0.2837376
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1396171   0.1265822   0.1526520
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2799587   0.2466820   0.3132353


### Parameter: RR


birthwt   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 Other             0.7758621   0.3045088   1.9768294
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.4844291   0.3635100   0.6455710
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0803030   0.7345997   1.5886946
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3206542   0.8676378   2.0102024
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.7866289   0.6563901   0.9427092
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0838529   0.9929500   1.1830778
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.9109589   0.8247970   1.0061217
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           0.7552795   0.4617167   1.2354917
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           0.8766637   0.5441317   1.4124141
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9071570   0.8268913   0.9952141
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0592701   0.8400272   1.3357342
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.0364078   0.7819064   1.3737464
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9692074   0.7400483   1.2693265
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           0.8327479   0.5957617   1.1640040
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.1627337   0.9493993   1.4240054
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9704898   0.8486541   1.1098167
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.1219662   0.7115899   1.7690080
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.6180088   0.9829008   2.6634962
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.2494624   0.7513498   2.0778020
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0663671   0.6320305   1.7991836
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3806067   0.7846516   2.4291988
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8982259   0.6824519   1.1822222
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0930523   0.9558177   1.2499910
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.9653890   0.8283602   1.1250854
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           0.8088818   0.4103881   1.5943197
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           0.8436725   0.4284524   1.6612887
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8546162   0.7281672   1.0030235
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.9673044   0.7125717   1.3130999
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           0.7167795   0.4588461   1.1197062
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.8210048   0.5652415   1.1924971
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 Other             1.4062500   1.0198006   1.9391429
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0339506   0.9818138   1.0888561
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0207451   0.9982754   1.0437206
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0378788   0.9633468   1.1181771
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9889210   0.9601070   1.0185997
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.9945652   0.8078362   1.2244561
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.1682195   0.9748948   1.3998810
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9664702   0.7687290   1.2150766
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.3405405   0.9648755   1.8624671
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.3187966   1.1208367   1.5517199
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0000000   0.5628537   1.7766607
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           0.9560440   0.4511890   2.0258031
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.5407925   0.2591824   1.1283812
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 Other             1.0637255   0.7113234   1.5907137
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.8015625   0.7511049   0.8554097
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.0062500   0.8859363   1.1429028
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           0.9953765   0.9459501   1.0473856
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9466955   0.9209642   0.9731457
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.9240591   0.7975536   1.0706306
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           0.9340105   0.7763950   1.1236236
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9405084   0.8074078   1.0955505
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9077040   0.7658921   1.0757738
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.8363636   0.6643001   1.0529941
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           0.9612292   0.8904729   1.0376078
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8888755   0.8516336   0.9277460
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.9404223   0.7236794   1.2220800
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           0.7996324   0.5603700   1.1410531
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9407439   0.7154817   1.2369277
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.6907895   0.6033005   0.7909658
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           0.7338831   0.6313689   0.8530422
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0444926   0.9705914   1.1240205
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.7800000   0.5678884   1.0713373
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.0000000   0.6946102   1.4396564
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.8561538   0.6194284   1.1833480
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 Other             0.9127135   0.6390989   1.3034695
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9152849   0.7710114   1.0865551
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.9893176   0.8631179   1.1339694
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0550725   0.7149497   1.5570017
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3726708   0.9126324   2.0646047
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8913490   0.7923919   1.0026644
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           0.9739566   0.9353015   1.0142093
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.9292035   0.8869671   0.9734513
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.1958870   0.9573623   1.4938396
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.0524820   0.8306386   1.3335744
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0033791   0.9687584   1.0392371
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0155141   0.8459010   1.2191366
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.1369596   0.9414509   1.3730690
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.0305715   0.8622000   1.2318228
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9428011   0.7882219   1.1276951
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.8167832   0.5985108   1.1146579
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0400000   0.5273777   2.0509022
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3188406   0.6300528   2.7606265
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           0.9126919   0.7838535   1.0627068
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0871750   1.0132920   1.1664450
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           1.1721612   0.9166851   1.4988373
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8513077   0.8036359   0.9018074
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.3845846   0.9797403   1.9567170
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.4297472   1.0054292   2.0331388
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.1960969   0.8524306   1.6783159
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.8993711   0.6896569   1.1728562
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.3148706   1.0402883   1.6619283
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.9686941   0.7014051   1.3378406
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           0.9166647   0.8391874   1.0012950
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.7903861   0.7015555   0.8904645
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.2704174   0.8604750   1.8756622
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.0869565   0.7296811   1.6191655
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.1887133   1.1195151   1.2621887
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.8785730   0.6645306   1.1615575
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.0471580   0.7752289   1.4144723
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.8904136   0.6710176   1.1815433
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 Other             1.0237762   0.5094855   2.0572082
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.0527463   0.9310222   1.1903848
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.1495495   0.9256126   1.4276644
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9026834   0.6903814   1.1802711
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8690702   0.6357320   1.1880526
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8870376   0.7829702   1.0049369
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.0111432   0.9650268   1.0594634
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8782161   0.8167287   0.9443326
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.2115385   0.9107334   1.6116960
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.2000000   0.8988177   1.6021046
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9943003   0.9346316   1.0577784
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0936365   0.8715346   1.3723388
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.0461768   0.7755202   1.4112925
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9946527   0.7811190   1.2665599
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9720598   0.7960407   1.1869999
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7704545   0.4336501   1.3688459
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9617021   0.5134091   1.8014310
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           0.9568597   0.7900550   1.1588818
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           0.9982468   0.9112446   1.0935558
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.5929919   0.4118305   0.8538451
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9832611   0.8797061   1.0990061
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.1986516   0.7657279   1.8763395
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           0.9595588   0.5173721   1.7796728
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.0588235   0.6420118   1.7462410
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.0888031   0.9139087   1.2971670
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.9000000   0.6746383   1.2006434
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6700855   0.4558229   0.9850635
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7179487   0.4607360   1.1187543
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.9397535   0.7226749   1.2220386
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Other                Control           1.1119021   1.0248466   1.2063525
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8428094   0.7421014   0.9571840
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.4786780   0.9631706   2.2700951
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.3348571   0.8528569   2.0892644
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0619097   0.9668071   1.1663673
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.1464666   0.8349287   1.5742491
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.1402715   0.7696655   1.6893301
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.0776113   0.7732289   1.5018141


### Parameter: PAR


birthwt   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                -0.0293785   -0.1368732    0.0781161
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.1144393   -0.2156887   -0.0131900
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0158497   -0.0212345    0.0529338
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0080826   -0.0148918   -0.0012733
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0090006   -0.0027191    0.0207203
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0309524   -0.0765726    0.0146678
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0409828   -0.1281252    0.0461595
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0105561   -0.0229981    0.0018859
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0060772   -0.0465507    0.0587051
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0020084   -0.0059361    0.0019192
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0045317   -0.0029415    0.0120049
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0017614   -0.0124158    0.0088929
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0242089   -0.0142033    0.0626211
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0112824   -0.0223524    0.0449171
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0015103   -0.0051760    0.0021554
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0053706   -0.0043521    0.0150932
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0096607   -0.0661176    0.0467962
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0245098   -0.1036912    0.0546716
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0091150   -0.0205312    0.0023012
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0240318   -0.0712439    0.0231804
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                 0.0937951    0.0048935    0.1826967
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0212724   -0.0159331    0.0584778
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0078416   -0.0060212    0.0217043
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0222222   -0.0277439    0.0721883
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0040257   -0.0208215    0.0127700
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0151324   -0.0828460    0.1131108
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0429350   -0.0172572    0.1031273
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0345333    0.0019732    0.0670934
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0673235   -0.2207759    0.0861290
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                 0.0193548   -0.1064222    0.1451319
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.1128889   -0.1814405   -0.0443372
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0033770   -0.0750000    0.0817539
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0020808   -0.0287631    0.0246014
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0156903   -0.0282968   -0.0030839
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0384974   -0.1111301    0.0341353
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0332418   -0.0799003    0.0134167
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0607851   -0.1448112    0.0232409
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0136326   -0.0445572    0.0172919
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0238986   -0.0369238   -0.0108733
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0308384   -0.1112124    0.0495355
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.1138015   -0.1877370   -0.0398659
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0537879   -0.0814228   -0.0261530
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0063447   -0.0101555    0.0228449
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0538160   -0.1473143    0.0396822
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                -0.0206928   -0.1016573    0.0602718
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0266098   -0.1063263    0.0531066
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0034119   -0.0540588    0.0472350
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0426451   -0.0603665    0.1456566
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0235290   -0.0582711    0.0112130
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0090925   -0.0250208    0.0068358
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0322581   -0.0642757   -0.0002404
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0439244   -0.0321453    0.1199940
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0005886   -0.0074173    0.0085945
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0172541   -0.0401825    0.0746906
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0084708   -0.0485700    0.0316285
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0200879   -0.0537336    0.0135577
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0151679   -0.0628896    0.0932254
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0134614   -0.0451583    0.0182355
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0162927    0.0001352    0.0324502
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0413732   -0.0458517    0.1285981
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0136160   -0.0203161   -0.0069158
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0427632    0.0009332    0.0845931
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0175824   -0.0637380    0.0285731
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0495453   -0.0038988    0.1029893
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0011456   -0.0152559    0.0129647
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0128063   -0.0273514    0.0017388
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0797960   -0.1435206   -0.0160714
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0411940   -0.0471199    0.1295079
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0184792    0.0089655    0.0279929
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0204490   -0.0775209    0.0366228
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                 0.0024025   -0.0689880    0.0737930
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0129951   -0.0355807    0.0615710
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0277871   -0.0252998    0.0808739
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0221115   -0.0715005    0.0272776
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0120337   -0.0271450    0.0030777
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0021805   -0.0084574    0.0128184
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0521831   -0.0928117   -0.0115546
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0440252   -0.0135251    0.1015754
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0006395   -0.0090667    0.0077878
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0130056   -0.0426802    0.0686913
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0021220   -0.0157819    0.0115379
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0097237   -0.0397100    0.0202626
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0023509   -0.0125679    0.0078662
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0001428   -0.0087030    0.0084175
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0707591   -0.1300318   -0.0114864
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0006827   -0.0064256    0.0050603
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0094607   -0.0302439    0.0491652
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0134033   -0.0327770    0.0595835
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0155183   -0.0646463    0.0336096
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0460541   -0.0925306    0.0004225
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0017603   -0.0082297    0.0047091
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0095755    0.0007697    0.0183813
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0593434   -0.1165896   -0.0020973
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0501945   -0.0035158    0.1039048
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0044992   -0.0045347    0.0135331
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0223829   -0.0313540    0.0761198


### Parameter: PAF


birthwt   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=0       0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                -0.1238095   -0.6801184    0.2482983
>=0       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.3941799   -0.9837258    0.0201582
>=0       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1064348   -0.1802890    0.3235058
>=0       0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.1249748   -0.2533810   -0.0097235
>=0       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0582066   -0.0159965    0.1269903
>=0       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0498562   -0.1299837    0.0245894
>=0       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.1566330   -0.5422069    0.1325419
>=0       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0517287   -0.1179635    0.0105820
>=0       0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0170509   -0.1422152    0.1541095
>=0       0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0952357   -0.3221170    0.0927116
>=0       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.1073010   -0.0659160    0.2523693
>=0       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0157977   -0.1176642    0.0767845
>=0       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.1627961   -0.1338724    0.3818437
>=0       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1122801   -0.2933746    0.3907051
>=0       6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0560392   -0.2110449    0.0791267
>=0       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0642824   -0.0512949    0.1671533
>=0       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0194378   -0.1420925    0.0900445
>=0       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.1470588   -0.7342140    0.2413024
>=0       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0841988   -0.2053093    0.0247424
>=0       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1059177   -0.3348890    0.0837785
<-3       0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                 0.1444444   -0.0092490    0.2747327
<-3       0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0257148   -0.0191094    0.0685674
<-3       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0093451   -0.0071579    0.0255776
<-3       0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0294118   -0.0369532    0.0915294
<-3       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0050857   -0.0266399    0.0160159
<-3       0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0196721   -0.1164165    0.1391719
<-3       6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.2102336   -0.0629268    0.4131948
<-3       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.1300357    0.0154905    0.2312538
<-3       6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1767241   -0.6599471    0.1658290
[-3--2)   0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                 0.0322581   -0.2020415    0.2208884
[-3--2)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.1454754   -0.2521341   -0.0479020
[-3--2)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0048309   -0.1132463    0.1103842
[-3--2)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0034031   -0.0481577    0.0394406
[-3--2)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0263640   -0.0483418   -0.0048469
[-3--2)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0539922   -0.1607280    0.0429286
[-3--2)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0652291   -0.1672904    0.0279085
[-3--2)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.1456016   -0.4016978    0.0637047
[-3--2)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0284577   -0.0970492    0.0358453
[-3--2)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0561882   -0.0890800   -0.0242898
[-3--2)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0703869   -0.2701883    0.0979855
[-3--2)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.2486772   -0.4748620   -0.0571802
[-3--2)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.2390572   -0.4024623   -0.0946910
[-3--2)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0208173   -0.0336650    0.0724280
[-3--2)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1274131   -0.3712318    0.0730522
[-2--1)   0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                -0.0498375   -0.2642414    0.1282055
[-2--1)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0427897   -0.1857017    0.0828972
[-2--1)   0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0078445   -0.1323100    0.1029395
[-2--1)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1075562   -0.1941285    0.3330232
[-2--1)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0589982   -0.1556352    0.0295578
[-2--1)   0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0200913   -0.0566363    0.0151898
[-2--1)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0366972   -0.0751688    0.0003978
[-2--1)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0710542   -0.0609287    0.1866180
[-2--1)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0017004   -0.0216567    0.0245235
[-2--1)   0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0340166   -0.0863701    0.1410626
[-2--1)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0270452   -0.1672688    0.0963333
[-2--1)   0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.1538160   -0.4943876    0.1091391
[-2--1)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0897436   -0.5112574    0.4517369
[-2--1)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0469497   -0.1694202    0.0626947
[-2--1)   0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0623039    0.0024990    0.1185233
[-2--1)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0863971   -0.0968444    0.2390258
[-2--1)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0803422   -0.1240312   -0.0383513
[-2--1)   0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.1940299   -0.0170486    0.3613010
[-2--1)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0535117   -0.2136762    0.0855164
[-2--1)   6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.1897678    0.0041340    0.3407986
[-2--1)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0165955   -0.2471750    0.1713541
[-2--1)   6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0667596   -0.1508516    0.0111879
[-2--1)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1113204   -0.2150275   -0.0164650
[-2--1)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0962791   -0.1358573    0.2809735
[-2--1)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0873221    0.0452045    0.1275819
[-2--1)   6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0641856   -0.2587212    0.1002844
[-1-0)    0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                 0.0111475   -0.3823233    0.2926190
[-1-0)    0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0274958   -0.0778163    0.1225180
[-1-0)    0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0970193   -0.0872849    0.2500823
[-1-0)    0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0889329   -0.3067644    0.0925870
[-1-0)    0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0621962   -0.1492705    0.0182810
[-1-0)    0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0082992   -0.0326787    0.0476510
[-1-0)    0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0723505   -0.1345826   -0.0135319
[-1-0)    0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1166667   -0.0498482    0.2567709
[-1-0)    0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0030800   -0.0446331    0.0368202
[-1-0)    0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0331992   -0.1199928    0.1654378
[-1-0)    0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0154232   -0.1215367    0.0806504
[-1-0)    0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1390645   -0.6582614    0.2175734
[-1-0)    0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0226745   -0.1287535    0.0734354
[-1-0)    0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0013172   -0.0836019    0.0747192
[-1-0)    0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.2859848   -0.6448272   -0.0054290
[-1-0)    0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0091975   -0.0903888    0.0659483
[-1-0)    0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0677074   -0.2648428    0.3128241
[-1-0)    6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0456349   -0.1169788    0.1845747
[-1-0)    6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0750751   -0.3638800    0.1525747
[-1-0)    6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.3011535   -0.6406566   -0.0319042
[-1-0)    6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0324119   -0.1633528    0.0837910
[-1-0)    6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0776594    0.0093041    0.1412984
[-1-0)    6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1023965   -0.2171756    0.0015590
[-1-0)    6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.2074364   -0.0468369    0.3999475
[-1-0)    6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0322251   -0.0325041    0.0928963
[-1-0)    6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0799508   -0.1335138    0.2532155
