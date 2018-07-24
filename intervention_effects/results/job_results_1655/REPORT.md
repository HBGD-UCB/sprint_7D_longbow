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

* gagebrth
* agecat
* studyid
* country

## Data Summary

gagebrth    agecat        studyid                    country                        tr.x       ever_stunted   n_cell       n
----------  ------------  -------------------------  -----------------------------  --------  -------------  -------  ------
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0      205     635
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1       86     635
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0      241     635
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1      103     635
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0       47     130
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1       16     130
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0       54     130
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1       13     130
[273-287)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0        9      21
[273-287)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1        1      21
[273-287)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0        9      21
[273-287)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1        2      21
>=287       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0        2       2
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      126     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        4     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      264     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       18     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      123     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        7     542
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      193     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       15     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      369     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       15     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      206     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       18     816
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      104     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        8     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      207     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       17     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       97     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        9     442
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       62     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       10     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      130     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       16     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       69     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       13     300
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control               0     5225   11829
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control               1      364   11829
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0     5898   11829
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1      342   11829
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control               0      592    1359
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control               1       27    1359
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0      712    1359
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1       28    1359
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control               0     1457    2996
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control               1      142    2996
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0     1248    2996
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                 1      149    2996
<259        0-6 months    ki1119695-PROBIT           BELARUS                        Other                 0        1       1
[259-273)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0        8      25
[259-273)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1        4      25
[259-273)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0        9      25
[259-273)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1        4      25
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0       26      75
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1       12      75
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0       25      75
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1       12      75
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0       20      69
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1        6      69
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0       32      69
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1       11      69
<259        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               0        7      20
<259        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control               1        6      20
<259        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 0        3      20
<259        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                 1        4      20
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       12      40
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        3      40
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        6      40
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        2      40
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       14      40
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        3      40
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        4      14
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        0      14
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        5      14
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        3      14
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        2      14
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        0      14
<259        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        1       4
<259        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        3       4
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        2      12
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        1      12
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        4      12
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        0      12
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        5      12
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        0      12
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1984    5039
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      537    5039
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     2054    5039
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      464    5039
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1324    3763
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      582    3763
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1392    3763
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      465    3763
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0      819    2695
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      614    2695
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      802    2695
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      460    2695
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1018    2803
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1      257    2803
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1259    2803
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      269    2803
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0      151     506
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       75     506
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0      200     506
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       80     506
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       40     118
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       16     118
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       42     118
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       20     118
[273-287)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0        5      20
[273-287)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1        7      20
[273-287)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0        6      20
[273-287)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1        2      20
>=287       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0        1       1
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       97     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       15     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      222     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       25     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       90     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       11     460
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      144     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       23     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      279     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       41     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      144     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       30     661
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       81     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       14     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      147     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       24     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       80     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       15     361
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       54     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       10     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      100     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       20     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       60     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       11     255
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control               0     5374   11908
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control               1      214   11908
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     6079   11908
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      241   11908
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control               0      603    1372
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control               1       16    1372
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0      730    1372
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1       23    1372
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control               0     1518    3023
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control               1       79    3023
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     1379    3023
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                 1       47    3023
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       23     179
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       58     179
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       37     179
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       61     179
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0        8      56
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       20      56
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       19      56
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1        9      56
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       26     152
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       36     152
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       43     152
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       47     152
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0        5      42
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       21      42
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0        6      42
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       10      42
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       44     200
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       14     200
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       57     200
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       19     200
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       49     200
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       17     200
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      124     458
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       30     458
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0      102     458
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       39     458
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0      124     458
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       39     458
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       55     222
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       23     222
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       51     222
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       25     222
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       42     222
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       26     222
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       15      51
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        7      51
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        5      51
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        6      51
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       14      51
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        4      51
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      818    2149
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      173    2149
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      920    2149
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      238    2149
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      972    2496
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      253    2496
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      991    2496
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      280    2496
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      648    1562
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      180    1562
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      568    1562
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      166    1562
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1405    3592
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      354    3592
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1447    3592
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      386    3592
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0      136     750
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1      205     750
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0      176     750
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1      233     750
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       36     167
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       47     167
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       41     167
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       43     167
[273-287)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0        3      25
[273-287)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1        9      25
[273-287)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0        6      25
[273-287)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1        7      25
>=287       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1        2       2
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      106     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       24     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      228     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       56     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      106     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       24     544
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      163     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       47     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      310     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       80     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      166     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       59     825
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       87     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       27     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      167     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       58     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       79     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       29     447
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       51     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       22     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      102     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       46     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       59     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       25     305
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control               0     5008   12225
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control               1      751   12225
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     5740   12225
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      726   12225
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control               0      566    1398
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control               1       67    1398
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0      700    1398
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1       65    1398
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control               0     1356    3111
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control               1      295    3111
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0     1229    3111
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                 1      231    3111
<259        0-24 months   ki1119695-PROBIT           BELARUS                        Other                 0        1       1
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       25     318
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1      123     318
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       37     318
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1      133     318
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0        7     119
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       55     119
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       19     119
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       38     119
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0       27     252
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       86     252
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0       44     252
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       95     252
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               0        5      93
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control               1       53      93
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 0        7      93
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                 1       28      93
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       43     234
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       24     234
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       55     234
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       34     234
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       43     234
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       35     234
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      118     560
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       70     560
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0      100     560
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       79     560
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0      120     560
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       73     560
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       53     285
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       52     285
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       46     285
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       47     285
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       39     285
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       48     285
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       14      77
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       16      77
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        5      77
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       15      77
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       13      77
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       14      77
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      999    3352
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      543    3352
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1210    3352
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      600    3352
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1852    5962
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1     1090    5962
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1934    5962
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1     1086    5962
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0     1252    4458
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      999    4458
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0     1284    4458
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      923    4458
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0      766    3186
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1      940    3186
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0      734    3186
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1      746    3186


The following strata were considered:

* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: <259, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: <259, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: <259, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: <259, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: <259, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: >=287, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: >=287, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: >=287, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: <259, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/dfeabcf2-4520-4155-896f-516319a8ae15/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 55 rows containing missing values (geom_errorbar).
```

![](/tmp/dfeabcf2-4520-4155-896f-516319a8ae15/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/dfeabcf2-4520-4155-896f-516319a8ae15/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dfeabcf2-4520-4155-896f-516319a8ae15/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2238095   0.1674035   0.2802155
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2051282   0.1650286   0.2452278
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2622222   0.2047156   0.3197288
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1304046   0.1162430   0.1445662
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.1122796   0.1019780   0.1225813
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.8310811   0.8029429   0.8592193
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.7823529   0.7491400   0.8155659
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3723404   0.3031749   0.4415059
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.4413408   0.3685343   0.5141473
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.3782383   0.3097601   0.4467165
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3704963   0.3603624   0.3806301
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3596026   0.3492005   0.3700048
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0721154   0.0369396   0.1072912
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0390625   0.0196726   0.0584524
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0803571   0.0447356   0.1159786
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0651279   0.0554823   0.0747735
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.0548077   0.0483263   0.0612891
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.3157895   0.2404041   0.3911748
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.3243243   0.2494106   0.3992380
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2130107   0.2034047   0.2226167
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1842732   0.1739881   0.1945583
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1377246   0.0854191   0.1900300
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1281250   0.0914774   0.1647726
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1724138   0.1162450   0.2285826
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0382963   0.0306977   0.0458950
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0381329   0.0337875   0.0424784
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7160494   0.6714892   0.7606096
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6224490   0.5697546   0.6751434
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.1948052   0.1321852   0.2574252
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.2765957   0.2026818   0.3505097
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2392638   0.1736969   0.3048307
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2012507   0.1907345   0.2117669
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2105837   0.1995902   0.2215773
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.6011730   0.5771410   0.6252050
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.5696822   0.5304702   0.6088941
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3013699   0.1959376   0.4068021
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.3108108   0.2361234   0.3854983
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2976190   0.1996840   0.3955541
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.9137931   0.8685011   0.9590851
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.8000000   0.7498574   0.8501426
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.5333333   0.3536413   0.7130254
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.7500000   0.5589829   0.9410171
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.5185185   0.3288144   0.7082226
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.5509965   0.5354191   0.5665739
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.5040541   0.4877472   0.5203610
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2955326   0.2758645   0.3152008
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.2994186   0.2741188   0.3247184
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1388889   0.0588741   0.2189037
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1095890   0.0588344   0.1603437
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1585366   0.0793506   0.2377226
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4284717   0.4116588   0.4452847
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3645008   0.3474736   0.3815280
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.3318584   0.2928548   0.3708620
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.2857143   0.2591831   0.3122454
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1562500   0.0671191   0.2453809
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1666667   0.0998562   0.2334771
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1549296   0.0705989   0.2392603
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.8076923   0.7127763   0.9026083
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6250000   0.5335366   0.7164634
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2173913   0.2003936   0.2343890
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2261580   0.2074361   0.2448800
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.5662651   0.4789168   0.6536133
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.5119048   0.4531968   0.5706127
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2368421   0.1587120   0.3149723
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2577778   0.2005598   0.3149958
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2685185   0.1848405   0.3521965
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1786796   0.1553663   0.2019929
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.1582192   0.1362909   0.1801475
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.8870968   0.8458806   0.9283130
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6666667   0.6078006   0.7255327
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.4952381   0.3994378   0.5910384
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.5053763   0.4035841   0.6071686
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.5517241   0.4470389   0.6564094
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4438028   0.4318582   0.4557473
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.4182148   0.4063422   0.4300873
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2539683   0.2123757   0.2955608
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.1940299   0.1376707   0.2503890
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0714286   0.0236784   0.1191787
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0758929   0.0411730   0.1106127
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0849057   0.0317820   0.1380294
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0888055   0.0694569   0.1081541
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.1066571   0.0875424   0.1257718
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3053515   0.2931696   0.3175334
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2504039   0.2388343   0.2619734
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2857143   0.1995849   0.3718436
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3225806   0.2855000   0.3596613
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1473684   0.0759892   0.2187476
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1403509   0.0882169   0.1924848
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1578947   0.0844678   0.2313217
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0494678   0.0333467   0.0655888
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0329593   0.0275253   0.0383934
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7142857   0.6298641   0.7987073
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.3214286   0.2341532   0.4087040
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2948718   0.1934499   0.3962937
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.3289474   0.2230797   0.4348150
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.3823529   0.2665882   0.4981177
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2065306   0.1945435   0.2185177
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2202990   0.2068264   0.2337716
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1846154   0.1178593   0.2513715
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1971831   0.1508670   0.2434992
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1846154   0.1178593   0.2513715
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1058452   0.0823823   0.1293081
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0849673   0.0731589   0.0967758
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7610619   0.7257353   0.7963886
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6834532   0.6407175   0.7261890
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3582090   0.2426590   0.4737589
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.3820225   0.2807812   0.4832638
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.4487179   0.3376296   0.5598063
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3521401   0.3387993   0.3654809
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.3314917   0.3181732   0.3448102
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0436187   0.0212203   0.0660172
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Other                NA                0.0378378   0.0285773   0.0470984
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.2307692   0.1692978   0.2922406
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.2558140   0.1739475   0.3376804
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2015686   0.1894154   0.2137219
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.1760471   0.1646386   0.1874557
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1339286   0.0707856   0.1970716
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1012146   0.0635597   0.1388695
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1089109   0.0480895   0.1697323
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0258481   0.0189191   0.0327772
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Other                NA                0.0305445   0.0229984   0.0380905
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.5806452   0.5303785   0.6309118
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.5222222   0.4609167   0.5835278
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2413793   0.1304191   0.3523395
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.2500000   0.1521291   0.3478709
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2575758   0.1512776   0.3638739
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1745711   0.1619288   0.1872135
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2055268   0.1920908   0.2189628


### Parameter: E(Y)


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2254545   0.1969222   0.2539869
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1208180   0.1022941   0.1393419
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8050314   0.7614193   0.8486436
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3964286   0.3558787   0.4369784
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3649782   0.3504499   0.3795065
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0588235   0.0426695   0.0749775
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0596838   0.0476825   0.0716852
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3200000   0.2137175   0.4262825
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1986505   0.1845442   0.2127569
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1422088   0.1155629   0.1688547
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0382096   0.0293908   0.0470284
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6648045   0.5954564   0.7341525
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2358079   0.1968881   0.2747276
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2060134   0.1907919   0.2212348
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5840000   0.5373197   0.6306803
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3049180   0.2531668   0.3566693
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8709677   0.8024656   0.9394699
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.5844156   0.4736176   0.6952136
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5291902   0.5065632   0.5518172
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2976378   0.2651420   0.3301336
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1300000   0.0918808   0.1681192
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3985158   0.3744763   0.4225552
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3063241   0.2579282   0.3547200
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1607843   0.1156102   0.2059585
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7380952   0.6035141   0.8726763
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2215109   0.1962141   0.2468077
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5389222   0.4318208   0.6460235
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2550336   0.2145808   0.2954863
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1690775   0.1366482   0.2015068
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7815126   0.7069556   0.8560696
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.5157895   0.4576672   0.5739117
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4311350   0.4142649   0.4480051
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2230769   0.1518712   0.2942826
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0769231   0.0520531   0.1017931
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0971295   0.0701415   0.1241175
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2782355   0.2612737   0.2951972
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3050847   0.2127965   0.3973730
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1468144   0.1102547   0.1833741
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0416804   0.0242408   0.0591201
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5178571   0.3858007   0.6499136
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3333333   0.2711827   0.3954840
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2135417   0.1955005   0.2315828
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1911765   0.1581020   0.2242509
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0944206   0.0671135   0.1217277
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7182540   0.6626022   0.7739058
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3974359   0.3344195   0.4604523
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3409905   0.3221517   0.3598292
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0404709   0.0159768   0.0649651
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2463768   0.1439601   0.3487935
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1876561   0.1709740   0.2043382
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1108696   0.0821465   0.1395926
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0284257   0.0182143   0.0386370
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5460526   0.4666418   0.6254634
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2500000   0.1895856   0.3104144
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1912517   0.1727481   0.2097554


### Parameter: RR


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9165303   0.6662336   1.2608607
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1716312   0.8388805   1.6363710
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8610097   0.7477774   0.9913883
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.9413678   0.8916141   0.9938978
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.1853152   0.9245696   1.5195960
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.0158401   0.7837424   1.3166714
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9705972   0.9327134   1.0100198
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.5416667   0.2700813   1.0863500
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1142857   0.5764328   2.1539937
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           0.8415390   0.6965546   1.0167012
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           1.0270270   0.7367491   1.4316740
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8650890   0.8051837   0.9294514
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9302989   0.5782811   1.4966009
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2518741   0.7590213   2.0647493
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.9957323   0.7933465   1.2497474
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8692822   0.7825825   0.9655870
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.4198582   0.9347629   2.1566936
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.2282209   0.8050607   1.8738047
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0463751   0.9718664   1.1265961
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9476176   0.8751964   1.0260316
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0313268   0.6746403   1.5765956
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9875541   0.6109090   1.5964131
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8754717   0.8082369   0.9482996
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.4062500   0.9217989   2.1453041
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           0.9722222   0.5912403   1.5987003
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9148045   0.8763333   0.9549646
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.0131490   0.9104305   1.1274566
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7890411   0.3767697   1.6524308
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1414634   0.5325004   2.4468315
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8506997   0.8003170   0.9042543
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.8609524   0.7415904   0.9995261
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0666667   0.5311753   2.1420004
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9915493   0.4507001   2.1814285
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.7738095   0.6413921   0.9335650
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0403270   0.9283654   1.1657912
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9040020   0.7457576   1.0958248
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0883951   0.7313205   1.6198148
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1337449   0.7201654   1.7848364
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8854911   0.7315602   1.0718112
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.7515152   0.6801507   0.8303674
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.0204715   0.7718218   1.3492260
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.1140584   0.8496288   1.4607863
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9423438   0.9061651   0.9799669
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.7639925   0.5451124   1.0707601
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0625000   0.4726363   2.3885305
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1886792   0.4757884   2.9697201
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           1.2010193   0.9051498   1.5936007
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8200512   0.7714871   0.8716723
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.1290323   0.8181079   1.5581244
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9523810   0.5172728   1.7534838
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0714286   0.5474574   2.0968923
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.6662790   0.4625240   0.9597941
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.4500000   0.3346603   0.6050912
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.1155606   0.6965002   1.7867556
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.2966752   0.8200218   2.0503924
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0666650   0.9803499   1.1605798
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0680751   0.6939669   1.6438602
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0000000   0.5996713   1.6675801
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           0.8027510   0.6190359   1.0409883
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8980258   0.8307458   0.9707545
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.0664794   0.7024961   1.6190530
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.2526709   0.8341439   1.8811917
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9413632   0.8907332   0.9948711
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Other                Control           0.8674675   0.4917829   1.5301463
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           1.1085271   0.7309966   1.6810372
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.8733855   0.7993675   0.9542573
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7557355   0.4145187   1.3778298
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8132013   0.3915541   1.6889016
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Other                Control           1.1816899   0.8189328   1.7051351
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8993827   0.7773159   1.0406185
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.0357143   0.5662553   1.8943825
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.0670996   0.5753276   1.9792229
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.1773239   1.0678576   1.2980116


### Parameter: PAR


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0016450   -0.0470991    0.0503891
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0095866   -0.0207242    0.0015510
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0260496   -0.0593702    0.0072709
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0240881   -0.0326228    0.0807991
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0055181   -0.0159348    0.0048986
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0132919   -0.0427450    0.0161613
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0054441   -0.0122578    0.0013696
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0042105   -0.0707095    0.0791306
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0143602   -0.0246839   -0.0040364
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0044842   -0.0409410    0.0499094
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0000867   -0.0044369    0.0042635
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0512449   -0.1043819    0.0018921
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0410027   -0.0119030    0.0939083
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0047627   -0.0062352    0.0157605
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0171730   -0.0577249    0.0233789
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0035482   -0.0885011    0.0955974
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0428254   -0.0942178    0.0085671
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0510823   -0.0882195    0.1903840
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0218063   -0.0382159   -0.0053966
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0021051   -0.0233585    0.0275688
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0088889   -0.0780431    0.0602653
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0299560   -0.0470737   -0.0128383
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0255343   -0.0556624    0.0045938
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0045343   -0.0729078    0.0819764
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0695971   -0.1650068    0.0258127
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0041196   -0.0146091    0.0228483
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0273429   -0.0883248    0.0336390
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0181915   -0.0498316    0.0862145
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0096021   -0.0316857    0.0124815
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1055842   -0.1677128   -0.0434555
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0205514   -0.0555629    0.0966656
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0126677   -0.0246328   -0.0007027
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0308913   -0.0874082    0.0256256
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0054945   -0.0362557    0.0472447
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                 0.0083240   -0.0111488    0.0277968
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0271161   -0.0389326   -0.0152995
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0193705   -0.0198422    0.0585831
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0005540   -0.0617915    0.0606835
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0077873   -0.0143516   -0.0012230
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1964286   -0.2979761   -0.0948811
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0384615   -0.0447300    0.1216530
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0070111   -0.0064591    0.0204812
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0065611   -0.0519232    0.0650454
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0114246   -0.0242388    0.0013896
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0428080   -0.0858097    0.0001937
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0392269   -0.0591446    0.1375985
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0111496   -0.0245276    0.0022283
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0031478   -0.0125024    0.0062067
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0156076   -0.0663097    0.0975249
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0139125   -0.0253935   -0.0024316
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0230590   -0.0766364    0.0305184
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0025775   -0.0049218    0.0100768
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0345925   -0.0960689    0.0268838
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0086207   -0.0852996    0.1025409
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0166806    0.0032051    0.0301561


### Parameter: PAF


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0072965   -0.2342565    0.2015758
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0793474   -0.1846486    0.0165939
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0323585   -0.0760004    0.0095133
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0607629   -0.0937976    0.1934830
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0151189   -0.0445113    0.0134464
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2259615   -0.8394712    0.1829273
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0912157   -0.2247267    0.0277409
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0131579   -0.2471999    0.2191650
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0722887   -0.1296062   -0.0178795
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0315327   -0.3468218    0.3035984
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0022702   -0.1231384    0.1055907
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0770827   -0.1668744    0.0057995
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1738817   -0.0827171    0.3696678
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0231182   -0.0304622    0.0739125
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0294059   -0.1034085    0.0396336
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0116365   -0.3414225    0.2717712
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0491699   -0.1129962    0.0109963
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0874074   -0.1861492    0.2978748
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0412069   -0.0740231   -0.0093934
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0070729   -0.0816048    0.0884801
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0683761   -0.7573540    0.3504852
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0751688   -0.1224837   -0.0298484
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0833571   -0.1954758    0.0182464
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0282012   -0.5951711    0.4079677
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0942928   -0.2458864    0.0388556
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0185976   -0.0680014    0.0981748
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0507363   -0.1770441    0.0620176
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0713296   -0.2375241    0.3031015
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0567913   -0.2046709    0.0729354
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1351023   -0.2293286   -0.0480984
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0398445   -0.1197512    0.1766934
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0293822   -0.0583585   -0.0011993
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.1384784   -0.4692595    0.1178325
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0714286   -0.6652038    0.4821986
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                 0.0857000   -0.1189318    0.2529085
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0974573   -0.1452680   -0.0516425
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0634921   -0.0677720    0.1786194
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0037736   -0.5209054    0.3375253
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.1868334   -0.4055831   -0.0021276
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.3793103   -0.6866338   -0.1279846
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1153846   -0.1728121    0.3327624
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0328323   -0.0301693    0.0919809
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0343195   -0.3255601    0.2964946
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.1209967   -0.2890502    0.0251477
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0596001   -0.1250474    0.0020401
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0987000   -0.1862978    0.3152296
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0326978   -0.0740318    0.0070456
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0777794   -0.3640794    0.1484305
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0633484   -0.3066569    0.3285795
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0741385   -0.1420709   -0.0102469
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2079832   -0.7990439    0.1888895
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0906756   -0.1851622    0.3023142
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0633502   -0.1902236    0.0499990
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0344828   -0.4247293    0.3456837
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0872181    0.0203247    0.1495438
