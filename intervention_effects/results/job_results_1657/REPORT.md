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

* birthlen
* agecat
* studyid
* country

## Data Summary

birthlen   agecat        studyid                   country      tr.x       ever_stunted   n_cell       n
---------  ------------  ------------------------  -----------  --------  -------------  -------  ------
[-2--1)    0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control               0        1       2
[-2--1)    0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control               1        1       2
[-1-0)     0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control               0        2       2
>=0        0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Other                 0        2       3
>=0        0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Other                 1        1       3
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               0      110     267
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               1       17     267
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 0      122     267
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 1       18     267
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               0       79     245
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               1       40     245
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 0       88     245
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 1       38     245
<-3        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               0        1      41
<-3        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               1       15      41
<-3        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 0        3      41
<-3        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 1       22      41
>=0        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               0       51     127
>=0        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               1        3     127
>=0        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 0       70     127
>=0        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 1        3     127
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               0       21     108
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control               1       27     108
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 0       22     108
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                 1       38     108
[-1-0)     0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control               0       62     254
[-1-0)     0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control               1        3     254
[-1-0)     0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                 0      177     254
[-1-0)     0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                 1       12     254
>=0        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control               0       53     204
>=0        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control               1        2     204
>=0        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                 0      148     204
>=0        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                 1        1     204
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control               0       24     160
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control               1       18     160
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                 0       79     160
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                 1       39     160
[-3--2)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control               0        3      21
[-3--2)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control               1        1      21
[-3--2)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                 0        5      21
[-3--2)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                 1       12      21
<-3        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                 1        1       1
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control               0     6774   14711
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control               1      348   14711
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Other                 0     7269   14711
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Other                 1      320   14711
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control               0      449    1296
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control               1      149    1296
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Other                 0      526    1296
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Other                 1      172    1296
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control               0       35     132
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control               1       25     132
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Other                 0       52     132
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Other                 1       20     132
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control               0        9      32
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control               1        9      32
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Other                 0        8      32
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Other                 1        6      32
<-3        0-6 months    ki1119695-PROBIT          BELARUS      Control               0        4       8
<-3        0-6 months    ki1119695-PROBIT          BELARUS      Control               1        2       8
<-3        0-6 months    ki1119695-PROBIT          BELARUS      Other                 0        1       8
<-3        0-6 months    ki1119695-PROBIT          BELARUS      Other                 1        1       8
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               0      306    1656
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               1      106    1656
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 0      935    1656
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      309    1656
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               0      697    3022
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               1       58    3022
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 0     2097    3022
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      170    3022
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               0      736    3407
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               1      122    3407
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 0     2133    3407
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      416    3407
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               0       98     620
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               1       57     620
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 0      284     620
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      181     620
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               0       28     265
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control               1       40     265
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 0       80     265
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      117     265
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control               0       65     173
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control               1       16     173
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                 0       87     173
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                 1        5     173
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control               0       12      62
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control               1       16      62
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Other                 0       15      62
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Other                 1       19      62
[-2--1)    0-6 months    ki1135781-COHORTS         GUATEMALA    Control               0        2      21
[-2--1)    0-6 months    ki1135781-COHORTS         GUATEMALA    Control               1        9      21
[-2--1)    0-6 months    ki1135781-COHORTS         GUATEMALA    Other                 0        2      21
[-2--1)    0-6 months    ki1135781-COHORTS         GUATEMALA    Other                 1        8      21
[-3--2)    0-6 months    ki1135781-COHORTS         GUATEMALA    Control               0        1      12
[-3--2)    0-6 months    ki1135781-COHORTS         GUATEMALA    Control               1        4      12
[-3--2)    0-6 months    ki1135781-COHORTS         GUATEMALA    Other                 0        0      12
[-3--2)    0-6 months    ki1135781-COHORTS         GUATEMALA    Other                 1        7      12
<-3        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                 1        1       1
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               0      115    1615
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               1      751    1615
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 0      122    1615
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 1      627    1615
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               0     2336    5892
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               1      634    5892
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 0     2416    5892
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 1      506    5892
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               0     2064    4702
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               1      149    4702
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 0     2326    4702
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 1      163    4702
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               0      854    3416
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               1      907    3416
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 0      874    3416
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 1      781    3416
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               0     1456    3370
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control               1      160    3370
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 0     1593    3370
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                 1      161    3370
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               0      229     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               1       37     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   0      269     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       49     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   0      124     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       20     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 0      232     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 1       35     995
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               0      283    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               1       37    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   0      348    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       50    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   0      142    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       27    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 0      264    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 1       44    1195
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               0      191     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               1       48     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   0      221     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       85     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   0      113     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       49     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 0      203     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 1       65     975
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               0       14     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               1       43     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   0        7     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       58     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   0        5     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       33     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 0        8     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 1       41     209
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               0       63     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control               1       66     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   0       76     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       78     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   0       40     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       33     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 0       85     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                 1       79     520
>=0        6-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control               0        1       1
[-2--1)    6-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control               0        1       1
[-1-0)     6-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Other                 0        1       1
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0       84     252
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1       34     252
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0      101     252
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1       33     252
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0       45     142
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1       18     142
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0       64     142
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1       15     142
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0       53     184
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1       35     184
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0       62     184
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1       34     184
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0       12      55
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1       10      55
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0       17      55
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1       16      55
<-3        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0        2       7
<-3        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1        1       7
<-3        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0        3       7
<-3        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1        1       7
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               0       42     206
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               1       12     206
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 0      113     206
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 1       39     206
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               0       44     189
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               1        7     189
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 0      116     189
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 1       22     189
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               0       15      94
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               1        6      94
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 0       43      94
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 1       30      94
[-3--2)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 0        5       8
[-3--2)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 1        3       8
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control               0     6903   14886
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control               1      266   14886
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Other                 0     7462   14886
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Other                 1      255   14886
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control               0      519    1252
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control               1       38    1252
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Other                 0      642    1252
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Other                 1       53    1252
[-2--1)    6-24 months   ki1119695-PROBIT          BELARUS      Control               0       50     122
[-2--1)    6-24 months   ki1119695-PROBIT          BELARUS      Control               1        4     122
[-2--1)    6-24 months   ki1119695-PROBIT          BELARUS      Other                 0       67     122
[-2--1)    6-24 months   ki1119695-PROBIT          BELARUS      Other                 1        1     122
[-3--2)    6-24 months   ki1119695-PROBIT          BELARUS      Control               0       15      32
[-3--2)    6-24 months   ki1119695-PROBIT          BELARUS      Control               1        1      32
[-3--2)    6-24 months   ki1119695-PROBIT          BELARUS      Other                 0       14      32
[-3--2)    6-24 months   ki1119695-PROBIT          BELARUS      Other                 1        2      32
<-3        6-24 months   ki1119695-PROBIT          BELARUS      Control               0        5       5
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0      326    1603
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1       83    1603
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0      956    1603
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      238    1603
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0      753    3271
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1       70    3271
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0     2210    3271
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      238    3271
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0      789    3576
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1      117    3576
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0     2323    3576
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      347    3576
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0       94     543
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1       33     543
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0      330     543
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1       86     543
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0       32     181
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1       14     181
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0      110     181
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1       25     181
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control               0       55     305
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control               1       79     305
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                 0       80     305
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1       91     305
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control               0        9      90
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control               1       33      90
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Other                 0       21      90
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1       27      90
[-2--1)    6-24 months   ki1135781-COHORTS         GUATEMALA    Control               0        2      15
[-2--1)    6-24 months   ki1135781-COHORTS         GUATEMALA    Control               1        2      15
[-2--1)    6-24 months   ki1135781-COHORTS         GUATEMALA    Other                 0        2      15
[-2--1)    6-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1        9      15
<-3        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1        1       1
[-3--2)    6-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1        1       1
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0     1161    2730
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1      125    2730
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0     1318    2730
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1      126    2730
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0     1630    4223
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1      490    4223
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0     1546    4223
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1      557    4223
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0     1600    3910
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1      258    3910
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0     1743    3910
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1      309    3910
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0      143     417
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1       75     417
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0      134     417
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1       65     417
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0      613    1747
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1      267    1747
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0      565    1747
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1      302    1747
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0      191     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1       76     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0      227     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       81     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0      102     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       42     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0      201     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1       72     992
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0      273    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1       81    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0      305    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       90    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0      144    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       34    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0      242    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1       69    1238
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0      134     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1       82     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0      171     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1      102     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0       80     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       54     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0      159     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1       82     864
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0       15      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1        8      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0       11      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       12      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0        9      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1        6      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0       18      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1        8      87
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0       46     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1       47     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0       58     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       39     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0       22     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       26     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0       67     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1       46     351
[-2--1)    0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control               0        2       3
[-2--1)    0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control               1        1       3
>=0        0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control               0        1       4
>=0        0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control               1        0       4
>=0        0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Other                 0        2       4
>=0        0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Other                 1        1       4
[-1-0)     0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control               0        2       4
[-1-0)     0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control               1        1       4
[-1-0)     0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Other                 0        1       4
[-1-0)     0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Other                 1        0       4
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0       81     312
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1       68     312
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0       97     312
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1       66     312
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0       42     291
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1       94     291
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0       52     291
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1      103     291
<-3        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0        0      48
<-3        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1       19      48
<-3        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0        1      48
<-3        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1       28      48
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0       39     156
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1       32     156
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0       62     156
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1       23     156
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               0       11     131
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control               1       49     131
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 0       11     131
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                 1       60     131
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               0       44     255
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               1       21     255
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 0      120     255
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 1       70     255
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               0       44     204
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               1       11     204
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 0      122     204
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 1       27     204
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               0       13     160
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               1       29     160
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 0       34     160
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 1       84     160
[-3--2)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               0        0      21
[-3--2)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control               1        4      21
[-3--2)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 0        2      21
[-3--2)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 1       15      21
<-3        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                 1        1       1
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control               0     6499   15200
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control               1      839   15200
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Other                 0     7130   15200
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Other                 1      732   15200
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control               0      386    1346
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control               1      228    1346
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Other                 0      480    1346
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Other                 1      252    1346
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control               0       31     139
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control               1       32     139
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Other                 0       51     139
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Other                 1       25     139
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control               0        7      36
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control               1       12      36
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Other                 0        5      36
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Other                 1       12      36
<-3        0-24 months   ki1119695-PROBIT          BELARUS      Control               0        4       8
<-3        0-24 months   ki1119695-PROBIT          BELARUS      Control               1        2       8
<-3        0-24 months   ki1119695-PROBIT          BELARUS      Other                 0        1       8
<-3        0-24 months   ki1119695-PROBIT          BELARUS      Other                 1        1       8
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0      299    2136
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1      238    2136
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0      894    2136
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      705    2136
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0      791    3909
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1      188    3909
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0     2345    3909
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      585    3909
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0      771    4434
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1      353    4434
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0     2287    4434
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1     1023    4434
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0       91     803
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1      104     803
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0      272     803
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      336     803
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               0       25     343
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control               1       59     343
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 0       69     343
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                 1      190     343
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control               0       59     428
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control               1      150     428
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                 0       87     428
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1      132     428
[-2--1)    0-24 months   ki1135781-COHORTS         GUATEMALA    Control               0        2      72
[-2--1)    0-24 months   ki1135781-COHORTS         GUATEMALA    Control               1       32      72
[-2--1)    0-24 months   ki1135781-COHORTS         GUATEMALA    Other                 0        2      72
[-2--1)    0-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1       36      72
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control               0        9     211
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control               1       89     211
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Other                 0       22     211
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1       91     211
[-3--2)    0-24 months   ki1135781-COHORTS         GUATEMALA    Control               1       15      33
[-3--2)    0-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1       18      33
<-3        0-24 months   ki1135781-COHORTS         GUATEMALA    Control               1        1       7
<-3        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                 1        6       7
<-3        0-24 months   ki1148112-iLiNS-DYAD-M    MALAWI       LNS                   1        1       1
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0     1551    3960
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1      343    3960
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0     1723    3960
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1      343    3960
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0       88    1932
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1      946    1932
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0      106    1932
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1      792    1932
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0     2132    6965
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1     1361    6965
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0     2104    6965
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1     1368    6965
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0     2074    5501
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1      532    5501
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0     2322    5501
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1      573    5501
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               0      671    4079
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control               1     1409    4079
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 0      698    4079
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                 1     1301    4079
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0      180    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1      122    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0      210    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1      140    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0       93    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       70    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0      188    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1      117    1120
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0      260    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1      120    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0      290    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1      155    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0      138    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       66    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0      235    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1      118    1382
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0      119    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1      153    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0      150    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1      198    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0       72    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1      122    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0      142    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1      168    1124
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0        5     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1       59     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0        2     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1       64     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0        4     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       41     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0        6     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1       57     238
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               0       36     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control               1      120     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   0       40     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                   1      131     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   0       19     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                   1       64     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 0       45     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                 1      134     589


The following strata were considered:

* birthlen: [-1-0), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-1-0), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-1-0), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-1-0), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-1-0), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-1-0), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-1-0), agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-1-0), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-1-0), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-1-0), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-1-0), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-1-0), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-1-0), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-1-0), agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-1-0), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-1-0), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-1-0), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-1-0), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-1-0), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-1-0), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-1-0), agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-2--1), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-2--1), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-2--1), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-2--1), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-2--1), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-2--1), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-2--1), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-2--1), agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-2--1), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-2--1), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-2--1), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-2--1), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-2--1), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-2--1), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-2--1), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-2--1), agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-2--1), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-2--1), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-2--1), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-2--1), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-2--1), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-2--1), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-2--1), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-2--1), agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-3--2), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-3--2), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-3--2), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-3--2), agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-3--2), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-3--2), agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-3--2), agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-3--2), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-3--2), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-3--2), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-3--2), agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-3--2), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-3--2), agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-3--2), agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-3--2), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-3--2), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-3--2), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-3--2), agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-3--2), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-3--2), agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-3--2), agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: <-3, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: <-3, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: <-3, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: <-3, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: <-3, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthlen: <-3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: <-3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: <-3, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: <-3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: <-3, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: <-3, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: <-3, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: <-3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: <-3, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: <-3, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: <-3, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: <-3, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: <-3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: >=0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: >=0, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: >=0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: >=0, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: >=0, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: >=0, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: >=0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: >=0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: >=0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: >=0, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: >=0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: >=0, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: >=0, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: >=0, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: >=0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: >=0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: >=0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: >=0, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: >=0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: >=0, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: >=0, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: >=0, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: >=0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: >=0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* birthlen: [-2--1), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: >=0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: <-3, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: >=0, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-1-0), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: >=0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-3--2), agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: <-3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: <-3, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-2--1), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-3--2), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: >=0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-2--1), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: <-3, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-3--2), agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-2--1), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-3--2), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-2--1), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-3--2), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-2--1), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: >=0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: <-3, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-3--2), agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: <-3, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: <-3, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-2--1), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthlen: <-3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr.x      0
##   Control 5
##   LNS     0
##   MMN     0
##   Other   0
##          ever_stunted
## tr.x       1
##   Control 15
##   LNS      0
##   MMN      0
##   Other   18
```




# Results Detail

## Results Plots
![](/tmp/210c73d0-fe82-4942-993f-1b49212f9d3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 78 rows containing missing values (geom_errorbar).
```

![](/tmp/210c73d0-fe82-4942-993f-1b49212f9d3a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/210c73d0-fe82-4942-993f-1b49212f9d3a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/210c73d0-fe82-4942-993f-1b49212f9d3a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


birthlen   agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.4507042   0.3563342   0.5450742
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.2705882   0.1873229   0.3538535
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.2000000   0.0940273   0.3059727
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.1812081   0.1192072   0.2432089
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.1143363   0.0852039   0.1434687
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Other                NA                0.0931061   0.0754266   0.1107855
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.1920327   0.1673554   0.2167099
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.1996587   0.1851826   0.2141348
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                0.7177033   0.6566080   0.7787987
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                NA                0.6027397   0.5378559   0.6676236
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.1810982   0.1588102   0.2033862
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.1660213   0.1482101   0.1838325
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.3157895   0.2590709   0.3725080
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.3483146   0.2989167   0.3977125
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.3235294   0.2476030   0.3994558
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.3342776   0.2721804   0.3963749
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.0488627   0.0296788   0.0680465
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Other                NA                0.0421663   0.0313687   0.0529639
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.0768212   0.0578222   0.0958202
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.0749890   0.0641456   0.0858324
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                0.1975309   0.1105756   0.2844862
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                NA                0.0543478   0.0078888   0.1008068
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.0990099   0.0813193   0.1167005
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.0917902   0.0756447   0.1079357
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.1156250   0.0744140   0.1568360
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.1256281   0.0827439   0.1685124
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.1597633   0.0947583   0.2247683
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.1428571   0.0954552   0.1902591
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.2857143   0.2123408   0.3590878
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.1898734   0.1825022   0.1972447
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.1372549   0.0425614   0.2319484
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.1594203   0.0981822   0.2206584
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.0371042   0.0203765   0.0538319
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Other                NA                0.0330439   0.0259686   0.0401192
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.0850547   0.0659930   0.1041164
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.0972222   0.0854845   0.1089599
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                0.5895522   0.5061267   0.6729778
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                NA                0.5321637   0.4572550   0.6070725
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.0972006   0.0753194   0.1190819
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.0872576   0.0695345   0.1049808
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.2288136   0.1777474   0.2798797
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.2278481   0.1843799   0.2713163
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.1910112   0.1281128   0.2539097
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.2218650   0.1666509   0.2770790
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.7023810   0.6044637   0.8002982
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.7335907   0.6796727   0.7875087
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.9148936   0.8960000   0.9337872
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.8819599   0.8567587   0.9071612
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.5882353   0.4710388   0.7054318
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.5939086   0.5252006   0.6626167
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.8672055   0.8417169   0.8926942
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.8371162   0.8060797   0.8681526
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.7543860   0.6346935   0.8740784
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.8923077   0.8131026   0.9715128
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.8684211   0.7404802   0.9963619
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.8367347   0.7420633   0.9314061
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.3043478   0.1710100   0.4376857
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.1851852   0.1194774   0.2508930
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.3440367   0.2763619   0.4117115
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.3266332   0.2515927   0.4016737
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.3478261   0.1399424   0.5557098
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.5217391   0.3056006   0.7378776
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.4000000   0.1459829   0.6540171
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.3076923   0.1373844   0.4780002
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.8166667   0.7006475   0.9326858
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.8450704   0.7781365   0.9120043
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.6315789   0.3696138   0.8935441
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Other                NA                0.7058824   0.5122720   0.8994927
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.5333333   0.4632678   0.6033988
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.5526316   0.5130842   0.5921789
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.6774038   0.6544185   0.7003892
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.6508254   0.6234807   0.6781701
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.7692308   0.6951040   0.8433575
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.7660819   0.6950536   0.8371101
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.7710843   0.6689623   0.8732064
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.7486034   0.6766543   0.8205524
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.5625000   0.4124065   0.7125935
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.6333333   0.5324717   0.7341950
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.5000000   0.2216907   0.7783093
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Other                NA                0.4285714   0.0958214   0.7613214
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.3677419   0.2917703   0.4437136
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.3892473   0.3448949   0.4335998
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.5150483   0.4885112   0.5415853
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.4719033   0.4414287   0.5023780
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.5116279   0.4195754   0.6036804
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.5064935   0.4207419   0.5922451
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.4520548   0.3297174   0.5743922
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.4817073   0.3974986   0.5659160
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.4545455   0.3369172   0.5721737
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.4848485   0.2784848   0.6912122
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.2598425   0.1835005   0.3361845
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.2067308   0.1677801   0.2456814
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.3034091   0.2674698   0.3393484
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.3483276   0.3096398   0.3870153
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.5053763   0.3973762   0.6133765
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.4020619   0.2966624   0.5074613
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.5416667   0.3881629   0.6951704
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.4070796   0.3115775   0.5025818
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.6911765   0.5749330   0.8074199
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.6645161   0.5081022   0.8209301
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.6904762   0.5502251   0.8307273
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.7118644   0.6298924   0.7938364
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.5079365   0.3461895   0.6696835
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Other                NA                0.3289474   0.1558587   0.5020360
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.4432030   0.4011775   0.4852284
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.4409006   0.4165595   0.4652417
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.3896364   0.3703748   0.4088980
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.3940092   0.3752619   0.4127565
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.5625000   0.4901107   0.6348893
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.5689655   0.5105773   0.6273537
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.6288660   0.5591686   0.6985633
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.5419355   0.4769501   0.6069209
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.3361345   0.2845483   0.3877206
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.3015873   0.2293015   0.3738731
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.4285714   0.2784380   0.5787049
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.3305085   0.2453687   0.4156482
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.4166667   0.2186793   0.6146540
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Other                NA                0.2777778   0.0917614   0.4637942
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.2572816   0.2150587   0.2995044
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.2483923   0.2243745   0.2724101
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.2134680   0.1950988   0.2318372
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.1731691   0.1575446   0.1887936
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.2008368   0.1427240   0.2589496
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.2777778   0.2233012   0.3322544
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.3024691   0.2326149   0.3723233
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.2425373   0.1840012   0.3010734
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.3977273   0.1648921   0.6305624
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.3541667   0.3292856   0.3790478
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.2857143   0.0914635   0.4799651
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.4109589   0.2974889   0.5244289
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.2029340   0.1639446   0.2419234
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.1993300   0.1766630   0.2219970
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.2311321   0.2096874   0.2525768
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.2648597   0.2429280   0.2867915
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.3796296   0.3019564   0.4573029
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.3736264   0.3100047   0.4372480
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.4029851   0.3151285   0.4908417
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.3402490   0.2683236   0.4121743
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.4563758   0.3408270   0.5719246
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.4049080   0.3219751   0.4878408
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.3230769   0.2091655   0.4369883
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.3684211   0.2996967   0.4371454
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.3713355   0.2898716   0.4527994
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Other                NA                0.3442623   0.2661759   0.4223487
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.3140569   0.2869199   0.3411940
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.3090634   0.2933190   0.3248078
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                0.9081633   0.8508498   0.9654768
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Other                NA                0.8053097   0.7321295   0.8784900
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.2041443   0.1837107   0.2245779
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.1979275   0.1832793   0.2125756
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.4039735   0.3371071   0.4708399
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.4000000   0.3404739   0.4595261
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.4294479   0.3335402   0.5253555
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.3836066   0.3201149   0.4470982
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.1338583   0.0472511   0.2204654
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.1285714   0.0920468   0.1650960
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.2491639   0.1758446   0.3224831
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Other                NA                0.2464183   0.1846109   0.3082258
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.1421911   0.1188189   0.1655633
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.1632013   0.1488530   0.1775495
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                0.5714286   0.3866326   0.7562246
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Other                NA                0.5588235   0.3905627   0.7270844
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.0673294   0.0549864   0.0796724
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.0654881   0.0538699   0.0771064
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.1390977   0.0899129   0.1882826
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.1540881   0.1126665   0.1955096
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.1388889   0.0727988   0.2049790
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.1310861   0.0874249   0.1747473
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.2881356   0.2025657   0.3737055
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.2462687   0.1655024   0.3270349
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.2222222   0.1110671   0.3333773
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.2565789   0.1869787   0.3261792
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.0682226   0.0317005   0.1047448
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Other                NA                0.0762590   0.0364458   0.1160722
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.1291391   0.1072993   0.1509788
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                NA                0.1299625   0.1172061   0.1427190
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                0.7857143   0.6609246   0.9105040
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Other                NA                0.5625000   0.4213750   0.7036250
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.1388590   0.1189863   0.1587317
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                NA                0.1505848   0.1354817   0.1656878
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.2846442   0.2227809   0.3465074
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.2629870   0.2056664   0.3203076
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  NA                0.2916667   0.2018504   0.3814829
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.2637363   0.2064560   0.3210165


### Parameter: E(Y)


birthlen   agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3525641   0.2517070   0.4534212
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1862745   0.1327176   0.2398314
>=0        0-24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.1033553   0.0853335   0.1213770
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1977488   0.1852611   0.2102365
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    NA                   NA                0.6588785   0.6139118   0.7038452
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1732323   0.1590667   0.1873979
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3321274   0.3025421   0.3617126
>=0        0-6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0454082   0.0343000   0.0565164
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0754467   0.0660287   0.0848647
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    NA                   NA                0.1213873   0.0725817   0.1701928
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0952522   0.0833113   0.1071931
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1322176   0.1085354   0.1558998
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2323944   0.1777557   0.2870331
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1534392   0.1019203   0.2049580
>=0        6-24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.0349993   0.0260058   0.0439928
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0941608   0.0841508   0.1041708
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    NA                   NA                0.5573770   0.5015425   0.6132116
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0919414   0.0779965   0.1058863
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2213247   0.1952162   0.2474332
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.7259475   0.6786755   0.7732196
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.8995859   0.8840667   0.9151051
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.5924528   0.5331791   0.6517265
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.8532508   0.8333866   0.8731149
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.8373206   0.7846322   0.8900090
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.2154696   0.1554062   0.2755330
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3357314   0.2853823   0.3860805
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3908046   0.2856969   0.4959123
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.8320611   0.7695336   0.8945885
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.6666667   0.4929963   0.8403370
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.5479452   0.5135003   0.5823901
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.6643785   0.6465237   0.6822333
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.7623090   0.7236148   0.8010032
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6018519   0.5148033   0.6889004
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.4687500   0.2527377   0.6847623
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.3838710   0.3455593   0.4221827
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4941452   0.4738862   0.5144042
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4923077   0.4456523   0.5389631
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.4727273   0.3402994   0.6051551
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.2191529   0.1843267   0.2539790
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3257012   0.2992765   0.3521259
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4501425   0.3940918   0.5061931
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6769759   0.5756730   0.7782789
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7062500   0.6354525   0.7770475
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.4100719   0.2907527   0.5293912
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.4414794   0.4204162   0.4625426
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3918162   0.3783770   0.4052555
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.5702847   0.5370420   0.6035274
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3183673   0.2725476   0.3641871
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3562500   0.2818136   0.4306864
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.3409091   0.2064217   0.4753965
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.2506039   0.2297254   0.2714823
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1934827   0.1812790   0.2056864
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2533333   0.2233598   0.2833068
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3750000   0.2607456   0.4892544
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3829787   0.2841817   0.4817758
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.2002495   0.1806530   0.2198461
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2479280   0.2326069   0.2632492
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3703704   0.3333276   0.4074131
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.4294872   0.3567121   0.5022623
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3568627   0.2979467   0.4157788
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.3566122   0.3002587   0.4129657
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.3103293   0.2967107   0.3239478
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    NA                   NA                0.8530806   0.8051985   0.9009627
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2008726   0.1884888   0.2132564
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4008929   0.3667182   0.4350675
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1310861   0.0853797   0.1767926
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.2476852   0.2007672   0.2946032
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1579102   0.1456637   0.1701566
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    NA                   NA                0.5645161   0.4400912   0.6889411
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0663547   0.0578954   0.0748141
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1417085   0.1176909   0.1657262
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2658730   0.2061715   0.3255746
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2475728   0.1884909   0.3066548
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.0726837   0.0452210   0.1001464
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1297539   0.1187387   0.1407691
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    NA                   NA                0.6666667   0.5687297   0.7646037
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1450128   0.1326970   0.1573285
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2731855   0.2413325   0.3050385


### Parameter: RR


birthlen   agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.6003676   0.4153361   0.8678305
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           0.9060403   0.4821962   1.7024375
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Other                Control           0.8143175   0.5942183   1.1159419
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           1.0397121   0.8970851   1.2050152
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                Control           0.8398174   0.7321206   0.9633566
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.9167473   0.7786604   1.0793224
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.1029963   0.8773763   1.3866351
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.0245098   0.7623318   1.3768550
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0585458   0.8174867   1.3706880
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Other                Control           0.8629550   0.5409770   1.3765675
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           0.9761496   0.7329893   1.2999753
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                Control           0.2751359   0.1051861   0.7196742
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.9270810   0.7214888   1.1912578
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.0865136   0.6634067   1.7794695
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.3817368   0.8044527   2.3732863
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.2355212   0.7591749   2.0107523
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.6645570   0.5128284   0.8611769
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.1614907   0.5273263   2.5583033
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Other                Control           0.8905712   0.5415569   1.4645127
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           1.1430556   0.8861612   1.4744226
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                Control           0.9026575   0.7393327   1.1020621
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.8977064   0.6628973   1.2156887
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9957806   0.7424058   1.3356293
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           0.8347898   0.5607900   1.2426650
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9696320   0.6941119   1.3545168
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           1.0444343   0.8921502   1.2227122
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.9640027   0.9305977   0.9986068
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           1.0096447   0.8018867   1.2712300
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.9653030   0.9206892   1.0120788
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.1828265   0.9861839   1.4186791
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.1511628   0.9270349   1.4294777
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.1091599   0.9128301   1.3477161
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           0.6084656   0.3462525   1.0692498
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.9494137   0.7016239   1.2847146
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.5000000   0.7249859   3.1035087
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.1500000   0.4809370   2.7498403
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.8846154   0.3917348   1.9976382
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           1.0347801   0.8789333   1.2182607
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Other                Control           1.1176471   0.6847524   1.8242140
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           1.0361842   0.8922096   1.2033918
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.9607643   0.9102163   1.0141193
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9959064   0.8712482   1.1384008
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.0024096   0.8509684   1.1808019
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9731844   0.8493504   1.1150731
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                Control           1.1259259   0.8249842   1.5366466
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Other                Control           0.8571429   0.3299907   2.2264077
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           1.0584795   0.8360260   1.3401245
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.9162313   0.8435802   0.9951392
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9899646   0.7732439   1.2674265
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           0.8835616   0.6384147   1.2228434
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9415188   0.7326309   1.2099649
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           1.0666667   0.6465263   1.7598322
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           0.7956002   0.5611970   1.1279100
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           1.1480459   0.9759150   1.3505370
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.7955692   0.5673253   1.1156393
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.0718085   0.7513762   1.5288926
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.8054980   0.5864707   1.1063247
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.9614276   0.7205501   1.2828296
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.0309760   0.8162898   1.3021254
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Other                Control           0.6476151   0.3415388   1.2279876
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           0.9948051   0.8914272   1.1101715
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           1.0112228   0.9441953   1.0830084
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.0114943   0.8579690   1.1924914
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.1179840   0.9433547   1.3249397
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9634409   0.8080435   1.1487231
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.8972222   0.6736152   1.1950557
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                Control           0.7711864   0.4992467   1.1912519
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Other                Control           0.6666667   0.2903711   1.5306087
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           0.9654493   0.7980051   1.1680279
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.8112178   0.7161072   0.9189607
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.3831019   0.9750455   1.9619297
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.5060442   1.0400526   2.1808216
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.2076337   0.8285024   1.7602594
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.8904762   0.4936996   1.6061344
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.4383562   0.6905238   2.9960856
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           0.9822405   0.7857015   1.2279427
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           1.1459237   1.0120189   1.2975461
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9841865   0.7541759   1.2843465
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.0615217   0.7871921   1.4314527
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.8962656   0.6678377   1.2028252
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.8872248   0.6405964   1.2288047
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.1403509   0.7652512   1.6993115
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Other                Control           0.9270923   0.6733088   1.2765319
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           0.9841000   0.8901774   1.0879324
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Other                Control           0.8867456   0.7938711   0.9904853
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.9695469   0.8560519   1.0980891
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9901639   0.7925685   1.2370219
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.0630594   0.8050662   1.4037297
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9495834   0.7513791   1.2000716
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.9605042   0.4743613   1.9448641
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Other                Control           0.9889810   0.6686134   1.4628533
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           1.1477596   0.9525667   1.3829500
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Other                Control           0.9779412   0.6286572   1.5212885
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Other                Control           0.9726528   0.7536376   1.2553162
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.1077681   0.7104900   1.7271886
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           0.9984985   0.5519245   1.8064051
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9424031   0.5798003   1.5317750
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.8546971   0.5494186   1.3296004
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.1546053   0.6536002   2.0396463
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Other                Control           1.1177963   0.5286258   2.3636165
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Other                Control           1.0063766   0.8276356   1.2237197
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Other                Control           0.7159091   0.5319868   0.9634183
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Other                Control           1.0844440   0.9105677   1.2915226
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9239149   0.6791337   1.2569229
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   MMN                  Control           1.0246711   0.7029016   1.4937380
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9265471   0.6814522   1.2597943


### Parameter: PAR


birthlen   agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0981401   -0.1915459   -0.0047344
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                -0.0137255   -0.1034085    0.0759575
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0109811   -0.0285895    0.0066274
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0057161   -0.0157287    0.0271609
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0588248   -0.1047511   -0.0128986
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0078659   -0.0227657    0.0070339
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0163379   -0.0318488    0.0645246
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0034545   -0.0147267    0.0078177
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0013745   -0.0177848    0.0150359
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0761436   -0.1296483   -0.0226389
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0037577   -0.0162296    0.0087143
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0165926   -0.0201122    0.0532973
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0533199   -0.0998402   -0.0067996
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0161843   -0.0661674    0.0985359
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0021049   -0.0115017    0.0072920
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0091061   -0.0076482    0.0258605
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0321752   -0.0951180    0.0307676
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0052592   -0.0201496    0.0096312
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0074888   -0.0499016    0.0349239
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0235666   -0.0608513    0.1079844
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0153077   -0.0299653   -0.0006501
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0042175   -0.0967749    0.1052100
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0139548   -0.0325866    0.0046770
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0829346   -0.0132166    0.1790858
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0888782   -0.2000077    0.0222513
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0083053   -0.0565389    0.0399284
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0429785   -0.1343950    0.2203520
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0153944   -0.0609704    0.0917592
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                 0.0350877   -0.1193625    0.1895379
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0146119   -0.0463089    0.0755327
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0130253   -0.0306455    0.0045949
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0069218   -0.0708087    0.0569652
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0393519   -0.0688939    0.1475976
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0312500   -0.2209727    0.1584727
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0161290   -0.0498530    0.0821111
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0209031   -0.0406159   -0.0011903
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0193202   -0.0995998    0.0609594
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0181818   -0.1272711    0.1636347
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0406897   -0.1063764    0.0249970
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0222921   -0.0039144    0.0484986
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0552339   -0.1478937    0.0374260
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0142005   -0.1180944    0.0896934
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0157738   -0.1040415    0.1355891
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0978646   -0.2229276    0.0271984
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0017236   -0.0380797    0.0346325
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0021798   -0.0112102    0.0155698
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0077847   -0.0539301    0.0694995
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0177671   -0.0676624    0.0321282
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control              NA                -0.0723214   -0.1997864    0.0551435
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0757576   -0.2219668    0.0704516
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0066777   -0.0431688    0.0298134
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0199853   -0.0320060   -0.0079646
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0524965    0.0013533    0.1036397
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0227273   -0.1448013    0.0993468
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0972644   -0.0777631    0.2722920
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0026845   -0.0362771    0.0309082
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0167959    0.0015149    0.0320770
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0092593   -0.0755061    0.0569876
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0268887   -0.1032034    0.0494261
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0337858   -0.0653696    0.1329412
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0147233   -0.0758358    0.0463891
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0037277   -0.0271483    0.0196930
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0550827   -0.1053441   -0.0048212
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0032717   -0.0165163    0.0099729
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0030807   -0.0599049    0.0537436
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0027721   -0.0520077    0.0464635
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0014787   -0.0536410    0.0506836
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0157190   -0.0048017    0.0362398
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0069124   -0.1439758    0.1301509
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0009747   -0.0099492    0.0079998
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0026108   -0.0386489    0.0438705
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0222626   -0.0870412    0.0425160
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0253506   -0.0714405    0.1221417
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                 0.0044611   -0.0254897    0.0344118
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0006148   -0.0182696    0.0194992
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.1190476   -0.2221486   -0.0159466
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0061538   -0.0069331    0.0192407
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0114587   -0.0641945    0.0412771


### Parameter: PAF


birthlen   agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.2783611   -0.6349132    0.0004319
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                -0.0736842   -0.6808344    0.3141515
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.1062459   -0.2842441    0.0470815
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0289059   -0.0858171    0.1315076
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0892803   -0.1621680   -0.0209638
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0454065   -0.1344318    0.0366324
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0491916   -0.1076603    0.1838323
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0760762   -0.3450299    0.1390973
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0182177   -0.2606924    0.1776207
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.6272781   -1.0795718   -0.2733554
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0394497   -0.1788165    0.0834402
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.1254945   -0.1987543    0.3620378
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.2294372   -0.4524082   -0.0406964
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.1054767   -0.6284735    0.5086368
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0601403   -0.3530547    0.1693628
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0967083   -0.0996657    0.2580146
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0577261   -0.1771754    0.0496026
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0572020   -0.2309637    0.0920317
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0338364   -0.2441522    0.1409268
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0324632   -0.0911893    0.1421035
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0170164   -0.0335086   -0.0007873
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0071188   -0.1788575    0.1637555
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0163548   -0.0384791    0.0052981
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0990476   -0.0252156    0.2082493
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.4124861   -1.0308441    0.0175923
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0247379   -0.1792662    0.1095414
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.1099744   -0.4846120    0.4664293
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0185015   -0.0783087    0.1066202
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                 0.0526316   -0.2150802    0.2613599
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0266667   -0.0911318    0.1317476
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0196053   -0.0465665    0.0066614
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0090800   -0.0964757    0.0713497
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0653846   -0.1351997    0.2305266
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0666667   -0.5634471    0.2722633
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0420168   -0.1462665    0.1993731
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0423015   -0.0832197   -0.0029289
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0392442   -0.2159373    0.1117729
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0384615   -0.3147711    0.2967930
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.1856680   -0.5260620    0.0787998
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0684434   -0.0153957    0.1453602
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.1227031   -0.3494199    0.0659228
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0209764   -0.1879190    0.1225051
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0223346   -0.1629894    0.1781269
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.2386522   -0.6052182    0.0442052
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0039041   -0.0897268    0.0751595
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0055633   -0.0292116    0.0391633
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0136505   -0.1008006    0.1162021
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0558069   -0.2288860    0.0928953
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control              NA                -0.2030075   -0.6208243    0.1071043
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.2222222   -0.7494504    0.1461163
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0266464   -0.1830853    0.1091066
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.1032926   -0.1665277   -0.0434853
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.2072231   -0.0231984    0.3857543
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0606061   -0.4182756    0.2068642
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.2539683   -0.3759494    0.5955059
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0134055   -0.1958398    0.1411970
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0677452    0.0039553    0.1274498
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0250000   -0.2202774    0.1390277
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0626064   -0.2538609    0.0994755
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0946746   -0.2305375    0.3339381
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0412866   -0.2280163    0.1170493
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0120120   -0.0903674    0.0607127
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0645692   -0.1264729   -0.0060672
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0162875   -0.0841265    0.0473065
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0076845   -0.1598695    0.1245325
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0211474   -0.4681351    0.2897507
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0059701   -0.2401105    0.1839632
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0995442   -0.0400774    0.2204228
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0122449   -0.2866674    0.2036483
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0146888   -0.1593788    0.1119439
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0184237   -0.3208427    0.2705475
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0837339   -0.3591763    0.1358891
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.1023965   -0.3870576    0.4191359
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                 0.0613767   -0.4500286    0.3924163
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0047385   -0.1519808    0.1401372
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.1785714   -0.3530435   -0.0265972
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0424363   -0.0531593    0.1293546
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0419448   -0.2540445    0.1342819
