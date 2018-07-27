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

* gagebrth
* agecat
* studyid
* country

## Data Summary

gagebrth    agecat        studyid                    country                        tr          ever_stunted   n_cell       n
----------  ------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control                0      205     635
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control                1       86     635
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                  0      241     635
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                  1      103     635
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control                0       47     130
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control                1       16     130
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                  0       54     130
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                  1       13     130
[273-287)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control                0        9      21
[273-287)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control                1        1      21
[273-287)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                  0        9      21
[273-287)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                  1        2      21
>=287       0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control                0        2       2
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0      126     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1        4     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0      132     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1       10     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      255     542
>=287       0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       15     542
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0      193     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       15     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0      186     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1        6     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      389     816
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       27     816
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0      104     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1        8     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0       92     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1       11     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      212     442
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       15     442
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0       62     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       10     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0       67     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1        6     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      132     300
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       23     300
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control                0     5225   11829
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control                1      364   11829
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Maternal               0     5898   11829
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Maternal               1      342   11829
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control                0      592    1359
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control                1       27    1359
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Maternal               0      712    1359
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Maternal               1       28    1359
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control                0     1457    2996
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control                1      142    2996
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Maternal               0     1248    2996
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Maternal               1      149    2996
<259        0-6 months    ki1119695-PROBIT           BELARUS                        Maternal               0        1       1
[259-273)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control                0        8      25
[259-273)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control                1        4      25
[259-273)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                  0        9      25
[259-273)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                  1        4      25
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control                0       26      75
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control                1       12      75
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                  0       25      75
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                  1       12      75
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control                0       20      69
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control                1        6      69
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                  0       32      69
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                  1       11      69
<259        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control                0        7      20
<259        0-6 months    ki1135781-COHORTS          GUATEMALA                      Control                1        6      20
<259        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                  0        3      20
<259        0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                  1        4      20
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0       12      40
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1        3      40
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0       20      40
[273-287)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1        5      40
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0        4      14
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1        0      14
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0        7      14
[259-273)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1        3      14
<259        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1        1       4
<259        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1        3       4
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0        2      12
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1        1      12
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0        9      12
>=287       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1        0      12
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control                0     1984    5039
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control                1      537    5039
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0     2054    5039
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      464    5039
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control                0     1324    3763
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control                1      582    3763
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0     1392    3763
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      465    3763
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control                0      819    2695
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control                1      614    2695
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0      802    2695
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      460    2695
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control                0     1018    2803
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control                1      257    2803
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0     1259    2803
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      269    2803
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                0      151     506
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                1       75     506
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  0      200     506
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  1       80     506
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                0       40     118
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                1       16     118
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  0       42     118
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  1       20     118
[273-287)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                0        5      20
[273-287)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                1        7      20
[273-287)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  0        6      20
[273-287)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  1        2      20
>=287       6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                0        1       1
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0       97     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       15     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0      113     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1       12     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      199     460
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       24     460
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0      144     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       23     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0      138     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1       18     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      285     661
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       53     661
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0       81     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       14     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0       68     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1        9     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      159     361
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       30     361
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0       54     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       10     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0       53     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1       11     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      107     255
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       20     255
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control                0     5374   11908
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control                1      214   11908
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Maternal               0     6079   11908
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Maternal               1      241   11908
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control                0      603    1372
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control                1       16    1372
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Maternal               0      730    1372
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Maternal               1       23    1372
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control                0     1518    3023
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control                1       79    3023
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Maternal               0     1379    3023
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Maternal               1       47    3023
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control                0       23     179
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control                1       58     179
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  0       37     179
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  1       61     179
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control                0        8      56
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control                1       20      56
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  0       19      56
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  1        9      56
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control                0       26     152
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control                1       36     152
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  0       43     152
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  1       47     152
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control                0        5      42
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control                1       21      42
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  0        6      42
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  1       10      42
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0       44     200
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1       14     200
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0      106     200
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1       36     200
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0      124     458
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1       30     458
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0      226     458
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1       78     458
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0       55     222
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1       23     222
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0       93     222
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1       51     222
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0       15      51
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1        7      51
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0       19      51
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1       10      51
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                0      818    2149
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                1      173    2149
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0      920    2149
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      238    2149
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                0      972    2496
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                1      253    2496
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0      991    2496
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      280    2496
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                0      648    1562
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                1      180    1562
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0      568    1562
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      166    1562
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                0     1405    3592
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                1      354    3592
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0     1447    3592
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      386    3592
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                0      136     750
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                1      205     750
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  0      176     750
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  1      233     750
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                0       36     167
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                1       47     167
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  0       41     167
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  1       43     167
[273-287)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                0        3      25
[273-287)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                1        9      25
[273-287)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  0        6      25
[273-287)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                  1        7      25
>=287       0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control                1        2       2
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0      106     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       24     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0      114     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1       29     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      220     544
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       51     544
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0      163     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       47     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0      158     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1       36     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      318     825
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1      103     825
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0       87     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       27     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0       73     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1       30     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      173     447
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       57     447
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                0       51     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control                1       22     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  0       54     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                  1       20     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   0      107     305
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                   1       51     305
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control                0     5008   12225
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control                1      751   12225
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Maternal               0     5740   12225
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Maternal               1      726   12225
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control                0      566    1398
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control                1       67    1398
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Maternal               0      700    1398
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Maternal               1       65    1398
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control                0     1356    3111
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control                1      295    3111
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Maternal               0     1229    3111
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Maternal               1      231    3111
<259        0-24 months   ki1119695-PROBIT           BELARUS                        Maternal               0        1       1
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control                0       25     318
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control                1      123     318
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  0       37     318
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  1      133     318
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control                0        7     119
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control                1       55     119
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  0       19     119
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  1       38     119
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control                0       27     252
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control                1       86     252
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  0       44     252
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  1       95     252
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control                0        5      93
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control                1       53      93
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  0        7      93
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                  1       28      93
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0       43     234
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1       24     234
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0       98     234
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1       69     234
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0      118     560
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1       70     560
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0      220     560
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1      152     560
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0       53     285
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1       52     285
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0       85     285
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1       95     285
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                0       14      77
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control                1       16      77
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               0       18      77
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal               1       29      77
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                0      999    3352
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                1      543    3352
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0     1210    3352
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      600    3352
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                0     1852    5962
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                1     1090    5962
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0     1934    5962
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1     1086    5962
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                0     1252    4458
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                1      999    4458
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0     1284    4458
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      923    4458
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                0      766    3186
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control                1      940    3186
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               0      734    3186
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal               1      746    3186
[273-287)   0-6 months    iLiNS_DYADM_LNS            MALAWI                         Control                0       12      23
[273-287)   0-6 months    iLiNS_DYADM_LNS            MALAWI                         Control                1        3      23
[273-287)   0-6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                    0        6      23
[273-287)   0-6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                    1        2      23
[259-273)   0-6 months    iLiNS_DYADM_LNS            MALAWI                         Control                0        4      12
[259-273)   0-6 months    iLiNS_DYADM_LNS            MALAWI                         Control                1        0      12
[259-273)   0-6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                    0        5      12
[259-273)   0-6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                    1        3      12
<259        0-6 months    iLiNS_DYADM_LNS            MALAWI                         Control                1        1       1
>=287       0-6 months    iLiNS_DYADM_LNS            MALAWI                         Control                0        2       7
>=287       0-6 months    iLiNS_DYADM_LNS            MALAWI                         Control                1        1       7
>=287       0-6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                    0        4       7
>=287       0-6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                    1        0       7
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                0      124     295
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                1       30     295
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    0      102     295
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    1       39     295
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                0       55     154
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                1       23     154
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    0       51     154
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    1       25     154
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                0       15      33
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                1        7      33
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    0        5      33
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    1        6      33
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                0       44     134
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                1       14     134
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    0       57     134
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    1       19     134
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                0      118     367
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                1       70     367
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    0      100     367
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    1       79     367
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                0       53     198
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                1       52     198
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    0       46     198
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    1       47     198
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                0       14      50
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                1       16      50
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    0        5      50
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    1       15      50
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                0       43     156
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control                1       24     156
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    0       55     156
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                    1       34     156


The following strata were considered:

* gagebrth: [259-273), agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [259-273), agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [259-273), agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: <259, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: <259, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: <259, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: <259, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: <259, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: <259, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: <259, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: <259, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: >=287, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: >=287, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: >=287, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
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
* gagebrth: [273-287), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [259-273), agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: <259, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: >=287, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/91f7a097-4270-4d09-ad39-c1cf4d8fa8ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91f7a097-4270-4d09-ad39-c1cf4d8fa8ab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91f7a097-4270-4d09-ad39-c1cf4d8fa8ab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91f7a097-4270-4d09-ad39-c1cf4d8fa8ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.3723404   0.3368929   0.4077879
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.4413408   0.4058135   0.4768680
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2238095   0.1674035   0.2802155
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1855670   0.1308290   0.2403050
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2446556   0.2035671   0.2857441
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1304046   0.1162430   0.1445662
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.1122796   0.1019780   0.1225813
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.8310811   0.8029429   0.8592193
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.7823529   0.7491400   0.8155659
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3723404   0.3491206   0.3955603
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.4086022   0.3753890   0.4418153
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3704963   0.3603624   0.3806301
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.3596026   0.3492005   0.3700048
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0721154   0.0369396   0.1072912
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0312500   0.0066240   0.0558760
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0649038   0.0412157   0.0885920
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0651279   0.0554823   0.0747735
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0548077   0.0483263   0.0612891
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.3157895   0.2404041   0.3911748
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.3243243   0.2494106   0.3992380
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2130107   0.2034047   0.2226167
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.1842732   0.1739881   0.1945583
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.1948052   0.1620956   0.2275147
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2765957   0.2412460   0.3119455
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1377246   0.0854191   0.1900300
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1153846   0.0652121   0.1655571
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1568047   0.1180109   0.1955985
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0382963   0.0306977   0.0458950
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0381329   0.0337875   0.0424784
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7160494   0.6714892   0.7606096
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6224490   0.5697546   0.6751434
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.1948052   0.1737496   0.2158608
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.2565789   0.2239561   0.2892018
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2012507   0.1907345   0.2117669
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2105837   0.1995902   0.2215773
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.5333333   0.4251330   0.6415336
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.7500000   0.6733203   0.8266797
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.6011730   0.5771410   0.6252050
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.5696822   0.5304702   0.6088941
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.3013699   0.1959376   0.4068021
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2702703   0.1689199   0.3716207
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.3227848   0.2497630   0.3958066
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.9137931   0.8685011   0.9590851
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.8000000   0.7498574   0.8501426
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.5333333   0.4633235   0.6033432
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.6170213   0.5316361   0.7024064
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.5509965   0.5354191   0.5665739
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.5040541   0.4877472   0.5203610
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2955326   0.2758645   0.3152008
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.2994186   0.2741188   0.3247184
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1388889   0.0588741   0.2189037
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0821918   0.0190812   0.1453023
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1483871   0.0923305   0.2044437
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4284717   0.4116588   0.4452847
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.3645008   0.3474736   0.3815280
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.3181818   0.1864170   0.4499466
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.5454545   0.4458497   0.6450594
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.3318584   0.2928548   0.3708620
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.2857143   0.2591831   0.3122454
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1562500   0.0671191   0.2453809
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1718750   0.0792633   0.2644867
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1574803   0.0940053   0.2209553
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.8076923   0.7127763   0.9026083
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6250000   0.5335366   0.7164634
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3181818   0.2333886   0.4029751
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.3448276   0.2454803   0.4441748
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2173913   0.2003936   0.2343890
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2261580   0.2074361   0.2448800
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.4952381   0.4443955   0.5460806
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.5053763   0.4575278   0.5532249
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.5662651   0.4789168   0.6536133
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.5119048   0.4531968   0.5706127
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2368421   0.1587120   0.3149723
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2912621   0.2034205   0.3791038
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2478261   0.1919658   0.3036864
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1786796   0.1553663   0.2019929
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.1582192   0.1362909   0.1801475
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.8870968   0.8458806   0.9283130
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6666667   0.6078006   0.7255327
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.4952381   0.4599432   0.5305330
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.5277778   0.4816352   0.5739203
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4438028   0.4318582   0.4557473
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.4182148   0.4063422   0.4300873
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2539683   0.2123757   0.2955608
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.1940299   0.1376707   0.2503890
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0714286   0.0236784   0.1191787
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1067961   0.0470824   0.1665099
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0660793   0.0337263   0.0984323
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0888055   0.0694569   0.1081541
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.1066571   0.0875424   0.1257718
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3053515   0.2931696   0.3175334
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2504039   0.2388343   0.2619734
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.2948718   0.2434509   0.3462927
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.3289474   0.2766487   0.3812460
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2857143   0.1995849   0.3718436
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3225806   0.2855000   0.3596613
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1473684   0.0759892   0.2187476
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1168831   0.0450226   0.1887436
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1587302   0.1065606   0.2108997
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0494678   0.0333467   0.0655888
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0329593   0.0275253   0.0383934
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7142857   0.6298641   0.7987073
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.3214286   0.2341532   0.4087040
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2948718   0.2592371   0.3305065
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.3541667   0.3033834   0.4049500
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2065306   0.1945435   0.2185177
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2202990   0.2068264   0.2337716
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.3582090   0.3084210   0.4079969
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.3820225   0.3240764   0.4399686
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1846154   0.1178593   0.2513715
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2027972   0.1368350   0.2687594
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1881919   0.1416129   0.2347709
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1058452   0.0823823   0.1293081
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0849673   0.0731589   0.0967758
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7610619   0.7257353   0.7963886
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6834532   0.6407175   0.7261890
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3582090   0.3251241   0.3912938
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.4131737   0.3596453   0.4667020
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3521401   0.3387993   0.3654809
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.3314917   0.3181732   0.3448102
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0436187   0.0212203   0.0660172
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0378378   0.0285773   0.0470984
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.2307692   0.1692978   0.2922406
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.2558140   0.1739475   0.3376804
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2015686   0.1894154   0.2137219
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.1760471   0.1646386   0.1874557
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.2413793   0.1931721   0.2895865
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2500000   0.1942839   0.3057161
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1339286   0.0707856   0.1970716
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0960000   0.0443006   0.1476994
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1076233   0.0669045   0.1483422
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.0258481   0.0189191   0.0327772
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0305445   0.0229984   0.0380905
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.5806452   0.5303785   0.6309118
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.5222222   0.4609167   0.5835278
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2413793   0.2092008   0.2735578
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.2535211   0.2023969   0.3046453
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1745711   0.1619288   0.1872135
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2055268   0.1920908   0.2189628


### Parameter: E(Y)


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.4059946   0.3556836   0.4563055
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2254545   0.1969222   0.2539869
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1208180   0.1022941   0.1393419
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8050314   0.7614193   0.8486436
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3964286   0.3558787   0.4369784
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3649782   0.3504499   0.3795065
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0588235   0.0426695   0.0749775
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0596838   0.0476825   0.0716852
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3200000   0.2137175   0.4262825
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1986505   0.1845442   0.2127569
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.2338983   0.1855110   0.2822856
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1422088   0.1155629   0.1688547
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0382096   0.0293908   0.0470284
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6648045   0.5954564   0.7341525
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2358079   0.1968881   0.2747276
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2060134   0.1907919   0.2212348
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.6200000   0.4840943   0.7559057
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5840000   0.5373197   0.6306803
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3049180   0.2531668   0.3566693
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8709677   0.8024656   0.9394699
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.5844156   0.4736176   0.6952136
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5291902   0.5065632   0.5518172
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2976378   0.2651420   0.3301336
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1300000   0.0918808   0.1681192
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3985158   0.3744763   0.4225552
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.3939394   0.2246437   0.5632351
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3063241   0.2579282   0.3547200
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1607843   0.1156102   0.2059585
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7380952   0.6035141   0.8726763
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3333333   0.2026691   0.4639976
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2215109   0.1962141   0.2468077
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.5000000   0.4301792   0.5698208
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
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.3116883   0.2382952   0.3850814
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3050847   0.2127965   0.3973730
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1468144   0.1102547   0.1833741
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0416804   0.0242408   0.0591201
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5178571   0.3858007   0.6499136
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3333333   0.2711827   0.3954840
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2135417   0.1955005   0.2315828
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.3717949   0.2953663   0.4482235
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1911765   0.1581020   0.2242509
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0944206   0.0671135   0.1217277
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7182540   0.6626022   0.7739058
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3974359   0.3344195   0.4604523
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3409905   0.3221517   0.3598292
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0404709   0.0159768   0.0649651
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2463768   0.1439601   0.3487935
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1876561   0.1709740   0.2043382
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.2462687   0.1725858   0.3199515
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1108696   0.0821465   0.1395926
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0284257   0.0182143   0.0386370
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5460526   0.4666418   0.6254634
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2500000   0.1895856   0.3104144
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1912517   0.1727481   0.2097554


### Parameter: RR


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.1853152   1.0463790   1.3426992
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8291292   0.5625025   1.2221372
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0931420   0.8075086   1.4798101
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.8610097   0.7477774   0.9913883
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.9413678   0.8916141   0.9938978
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.0973886   0.9905275   1.2157783
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9705972   0.9327134   1.0100198
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.4333333   0.1715251   1.0947540
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9000000   0.4894068   1.6550648
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.8415390   0.6965546   1.0167012
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           1.0270270   0.7367491   1.4316740
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8650890   0.8051837   0.9294514
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.4198582   1.1497479   1.7534254
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8377926   0.4703324   1.4923415
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1385387   0.7236028   1.7914116
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.9957323   0.7933465   1.2497474
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8692822   0.7825825   0.9655870
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.3171053   1.1146693   1.5563058
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.0463751   0.9718664   1.1265961
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.4062500   1.1204665   1.7649248
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9476176   0.8751964   1.0260316
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8968059   0.5369966   1.4977018
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0710587   0.7061221   1.6246011
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8754717   0.8082369   0.9482996
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.1569149   0.9560149   1.4000326
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9148045   0.8763333   0.9549646
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.0131490   0.9104305   1.1274566
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.5917808   0.2266023   1.5454588
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0683871   0.5364565   2.1277606
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8506997   0.8003170   0.9042543
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.7142857   1.0902470   2.6955134
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.8609524   0.7415904   0.9995261
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1000000   0.5018872   2.4109003
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0078740   0.5012614   2.0265078
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.7738095   0.6413921   0.9335650
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.0837438   0.7319540   1.6046100
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.0403270   0.9283654   1.1657912
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.0204715   0.8874606   1.1734178
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9040020   0.7457576   1.0958248
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.2297735   0.7865204   1.9228270
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0463768   0.7017334   1.5602854
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.8854911   0.7315602   1.0718112
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.7515152   0.6801507   0.8303674
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.0657051   0.9520298   1.1929536
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9423438   0.9061651   0.9799669
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.7639925   0.5451124   1.0707601
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.4951456   0.6254484   3.5741725
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9251101   0.4039506   2.1186472
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           1.2010193   0.9051498   1.5936007
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8200512   0.7714871   0.8716723
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.1155606   0.8810652   1.4124671
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.1290323   0.8181079   1.5581244
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7931354   0.3626045   1.7348485
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0770975   0.5998517   1.9340430
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.6662790   0.4625240   0.9597941
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.4500000   0.3346603   0.6050912
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.2010870   0.9957143   1.4488190
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.0666650   0.9803499   1.1605798
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.0664794   0.8681677   1.3100905
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0984848   0.6754144   1.7865609
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0193727   0.6577016   1.5799272
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.8027510   0.6190359   1.0409883
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8980258   0.8307458   0.9707545
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.1534431   0.9837777   1.3523696
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9413632   0.8907332   0.9948711
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.8674675   0.4917829   1.5301463
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           1.1085271   0.7309966   1.6810372
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8733855   0.7993675   0.9542573
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.0357143   0.7678462   1.3970300
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7168000   0.3503890   1.4663766
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8035874   0.4390354   1.4708444
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           1.1816899   0.8189328   1.7051351
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8993827   0.7773159   1.0406185
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.0503018   0.8247622   1.3375174
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.1773239   1.0678576   1.2980116


### Parameter: PAR


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0336541   -0.0020484    0.0693567
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0016450   -0.0470991    0.0503891
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0095866   -0.0207242    0.0015510
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0260496   -0.0593702    0.0072709
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0240881   -0.0091553    0.0573316
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0055181   -0.0159348    0.0048986
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0132919   -0.0427450    0.0161613
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0054441   -0.0122578    0.0013696
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0042105   -0.0707095    0.0791306
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0143602   -0.0246839   -0.0040364
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0390931    0.0034362    0.0747500
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0044842   -0.0409410    0.0499094
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0000867   -0.0044369    0.0042635
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0512449   -0.1043819    0.0018921
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0410027    0.0082703    0.0737351
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0047627   -0.0062352    0.0157605
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0866667    0.0044289    0.1689045
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0171730   -0.0577249    0.0233789
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0035482   -0.0885011    0.0955974
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0428254   -0.0942178    0.0085671
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0510823   -0.0347945    0.1369590
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0218063   -0.0382159   -0.0053966
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0021051   -0.0233585    0.0275688
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0088889   -0.0780431    0.0602653
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0299560   -0.0470737   -0.0128383
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0757576   -0.0305394    0.1820546
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0255343   -0.0556624    0.0045938
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0045343   -0.0729078    0.0819764
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0695971   -0.1650068    0.0258127
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0151515   -0.0842630    0.1145661
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0041196   -0.0146091    0.0228483
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0047619   -0.0430919    0.0526157
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0273429   -0.0883248    0.0336390
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0181915   -0.0498316    0.0862145
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0096021   -0.0316857    0.0124815
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1055842   -0.1677128   -0.0434555
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0205514   -0.0256273    0.0667300
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0126677   -0.0246328   -0.0007027
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0308913   -0.0874082    0.0256256
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0054945   -0.0362557    0.0472447
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                 0.0083240   -0.0111488    0.0277968
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0271161   -0.0389326   -0.0152995
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0168165   -0.0355517    0.0691848
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0193705   -0.0198422    0.0585831
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0005540   -0.0617915    0.0606835
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0077873   -0.0143516   -0.0012230
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1964286   -0.2979761   -0.0948811
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0384615   -0.0124587    0.0893818
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0070111   -0.0064591    0.0204812
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0135859   -0.0444011    0.0715729
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0065611   -0.0519232    0.0650454
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0114246   -0.0242388    0.0013896
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0428080   -0.0858097    0.0001937
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0392269   -0.0144057    0.0928596
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0111496   -0.0245276    0.0022283
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0031478   -0.0125024    0.0062067
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0156076   -0.0663097    0.0975249
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0139125   -0.0253935   -0.0024316
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0048893   -0.0508353    0.0606140
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0230590   -0.0766364    0.0305184
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0025775   -0.0049218    0.0100768
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0345925   -0.0960689    0.0268838
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0086207   -0.0425110    0.0597524
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0166806    0.0032051    0.0301561


### Parameter: PAF


gagebrth    agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[273-287)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0828930   -0.0017622    0.1603944
[273-287)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0072965   -0.2342565    0.2015758
[273-287)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0793474   -0.1846486    0.0165939
[273-287)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0323585   -0.0760004    0.0095133
[273-287)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0607629   -0.0214831    0.1363868
[273-287)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0151189   -0.0445113    0.0134464
[273-287)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2259615   -0.8394712    0.1829273
[273-287)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0912157   -0.2247267    0.0277409
[273-287)   0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0131579   -0.2471999    0.2191650
[273-287)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0722887   -0.1296062   -0.0178795
[273-287)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.1671372    0.0274936    0.2867292
[273-287)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0315327   -0.3468218    0.3035984
[273-287)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0022702   -0.1231384    0.1055907
[273-287)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0770827   -0.1668744    0.0057995
[273-287)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1738817    0.0496654    0.2818619
[273-287)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0231182   -0.0304622    0.0739125
<259        0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.1397849    0.0148226    0.2488968
<259        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0294059   -0.1034085    0.0396336
<259        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0116365   -0.3414225    0.2717712
<259        0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0491699   -0.1129962    0.0109963
<259        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0874074   -0.0575196    0.2124730
<259        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0412069   -0.0740231   -0.0093934
<259        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0070729   -0.0816048    0.0884801
<259        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0683761   -0.7573540    0.3504852
<259        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0751688   -0.1224837   -0.0298484
<259        6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.1923077   -0.0701124    0.3903754
<259        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0833571   -0.1954758    0.0182464
<259        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0282012   -0.5951711    0.4079677
<259        6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0942928   -0.2458864    0.0388556
<259        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0454545   -0.2865569    0.2917864
<259        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0185976   -0.0680014    0.0981748
[259-273)   0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0095238   -0.0899623    0.0999293
[259-273)   0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0507363   -0.1770441    0.0620176
[259-273)   0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0713296   -0.2375241    0.3031015
[259-273)   0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0567913   -0.2046709    0.0729354
[259-273)   0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1351023   -0.2293286   -0.0480984
[259-273)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0398445   -0.0501311    0.1221110
[259-273)   0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0293822   -0.0583585   -0.0011993
[259-273)   0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.1384784   -0.4692595    0.1178325
[259-273)   0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0714286   -0.6652038    0.4821986
[259-273)   0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                 0.0857000   -0.1189318    0.2529085
[259-273)   0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0974573   -0.1452680   -0.0516425
[259-273)   6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0539530   -0.1194248    0.2004779
[259-273)   6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0634921   -0.0677720    0.1786194
[259-273)   6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0037736   -0.5209054    0.3375253
[259-273)   6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.1868334   -0.4055831   -0.0021276
[259-273)   6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.3793103   -0.6866338   -0.1279846
[259-273)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1153846   -0.0312725    0.2411856
[259-273)   6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0328323   -0.0301693    0.0919809
>=287       0-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0365414   -0.1261693    0.1757434
>=287       0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0343195   -0.3255601    0.2964946
>=287       0-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.1209967   -0.2890502    0.0251477
>=287       0-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0596001   -0.1250474    0.0020401
>=287       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0987000   -0.0318333    0.2127201
>=287       0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0326978   -0.0740318    0.0070456
>=287       0-6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0777794   -0.3640794    0.1484305
>=287       0-6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0633484   -0.3066569    0.3285795
>=287       0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0741385   -0.1420709   -0.0102469
>=287       6-24 months   iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0198537   -0.2290690    0.2183622
>=287       6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2079832   -0.7990439    0.1888895
>=287       6-24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0906756   -0.1851622    0.3023142
>=287       6-24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0633502   -0.1902236    0.0499990
>=287       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0344828   -0.1846970    0.2131122
>=287       6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0872181    0.0203247    0.1495438
