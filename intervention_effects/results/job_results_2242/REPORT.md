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

* birthlen
* agecat
* studyid
* country

## Data Summary

birthlen   agecat        studyid                   country      tr          ever_stunted   n_cell       n
---------  ------------  ------------------------  -----------  ---------  -------------  -------  ------
[-2--1)    0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control                0        1       2
[-2--1)    0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control                1        1       2
[-1-0)     0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control                0        2       2
>=0        0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Maternal               0        2       3
>=0        0-6 months    ki1000125-AgaKhanUniv     PAKISTAN     Maternal               1        1       3
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                0      110     267
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                1       17     267
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  0      122     267
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  1       18     267
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                0       79     245
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                1       40     245
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  0       88     245
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  1       38     245
<-3        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                0        1      41
<-3        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                1       15      41
<-3        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  0        3      41
<-3        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  1       22      41
>=0        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                0       51     127
>=0        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                1        3     127
>=0        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  0       70     127
>=0        0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  1        3     127
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                0       21     108
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control                1       27     108
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  0       22     108
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                  1       38     108
[-1-0)     0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control                0       62     254
[-1-0)     0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control                1        3     254
[-1-0)     0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                  0      177     254
[-1-0)     0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                  1       12     254
>=0        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control                0       53     204
>=0        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control                1        2     204
>=0        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                  0      148     204
>=0        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                  1        1     204
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control                0       24     160
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control                1       18     160
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                  0       79     160
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                  1       39     160
[-3--2)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control                0        3      21
[-3--2)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control                1        1      21
[-3--2)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                  0        5      21
[-3--2)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                  1       12      21
<-3        0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                  1        1       1
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control                0     6774   14711
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control                1      348   14711
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Maternal               0     7269   14711
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Maternal               1      320   14711
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control                0      449    1296
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control                1      149    1296
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Maternal               0      526    1296
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Maternal               1      172    1296
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control                0       35     132
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control                1       25     132
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Maternal               0       52     132
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Maternal               1       20     132
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control                0        9      32
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control                1        9      32
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Maternal               0        8      32
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Maternal               1        6      32
<-3        0-6 months    ki1119695-PROBIT          BELARUS      Control                0        4       8
<-3        0-6 months    ki1119695-PROBIT          BELARUS      Control                1        2       8
<-3        0-6 months    ki1119695-PROBIT          BELARUS      Maternal               0        1       8
<-3        0-6 months    ki1119695-PROBIT          BELARUS      Maternal               1        1       8
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                0      306    1656
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                1      106    1656
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0      935    1656
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      309    1656
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                0      697    3022
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                1       58    3022
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0     2097    3022
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      170    3022
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                0      736    3407
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                1      122    3407
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0     2133    3407
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      416    3407
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                0       98     620
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                1       57     620
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0      284     620
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      181     620
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                0       28     265
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control                1       40     265
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0       80     265
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      117     265
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control                0       65     173
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control                1       16     173
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                  0       87     173
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                  1        5     173
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control                0       12      62
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control                1       16      62
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Other                  0       15      62
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Other                  1       19      62
[-2--1)    0-6 months    ki1135781-COHORTS         GUATEMALA    Control                0        2      21
[-2--1)    0-6 months    ki1135781-COHORTS         GUATEMALA    Control                1        9      21
[-2--1)    0-6 months    ki1135781-COHORTS         GUATEMALA    Other                  0        2      21
[-2--1)    0-6 months    ki1135781-COHORTS         GUATEMALA    Other                  1        8      21
[-3--2)    0-6 months    ki1135781-COHORTS         GUATEMALA    Control                0        1      12
[-3--2)    0-6 months    ki1135781-COHORTS         GUATEMALA    Control                1        4      12
[-3--2)    0-6 months    ki1135781-COHORTS         GUATEMALA    Other                  0        0      12
[-3--2)    0-6 months    ki1135781-COHORTS         GUATEMALA    Other                  1        7      12
<-3        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                  1        1       1
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                0      115    1615
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                1      751    1615
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               0      122    1615
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      627    1615
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                0     2336    5892
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                1      634    5892
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               0     2416    5892
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      506    5892
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                0     2064    4702
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                1      149    4702
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               0     2326    4702
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      163    4702
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                0      854    3416
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                1      907    3416
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               0      874    3416
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      781    3416
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                0     1456    3370
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control                1      160    3370
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               0     1593    3370
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      161    3370
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                0      229     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                1       37     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    0      232     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       35     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  0      393     995
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  1       69     995
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                0      283    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                1       37    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    0      264    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       44    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  0      490    1195
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  1       77    1195
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                0      191     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                1       48     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    0      203     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       65     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  0      334     975
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  1      134     975
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                0       14     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                1       43     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    0        8     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       41     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  0       12     209
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  1       91     209
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                0       63     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control                1       66     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    0       85     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       79     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  0      116     520
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                  1      111     520
>=0        6-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control                0        1       1
[-2--1)    6-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control                0        1       1
[-1-0)     6-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Maternal               0        1       1
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0       84     252
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1       34     252
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0      101     252
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1       33     252
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0       45     142
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1       18     142
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0       64     142
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1       15     142
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0       53     184
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1       35     184
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0       62     184
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1       34     184
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0       12      55
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1       10      55
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0       17      55
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1       16      55
<-3        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0        2       7
<-3        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1        1       7
<-3        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0        3       7
<-3        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1        1       7
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                0       42     206
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                1       12     206
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  0      113     206
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  1       39     206
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                0       44     189
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                1        7     189
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  0      116     189
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  1       22     189
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                0       15      94
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                1        6      94
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  0       43      94
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  1       30      94
[-3--2)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  0        5       8
[-3--2)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  1        3       8
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control                0     6903   14886
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control                1      266   14886
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Maternal               0     7462   14886
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Maternal               1      255   14886
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control                0      519    1252
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control                1       38    1252
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Maternal               0      642    1252
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Maternal               1       53    1252
[-2--1)    6-24 months   ki1119695-PROBIT          BELARUS      Control                0       50     122
[-2--1)    6-24 months   ki1119695-PROBIT          BELARUS      Control                1        4     122
[-2--1)    6-24 months   ki1119695-PROBIT          BELARUS      Maternal               0       67     122
[-2--1)    6-24 months   ki1119695-PROBIT          BELARUS      Maternal               1        1     122
[-3--2)    6-24 months   ki1119695-PROBIT          BELARUS      Control                0       15      32
[-3--2)    6-24 months   ki1119695-PROBIT          BELARUS      Control                1        1      32
[-3--2)    6-24 months   ki1119695-PROBIT          BELARUS      Maternal               0       14      32
[-3--2)    6-24 months   ki1119695-PROBIT          BELARUS      Maternal               1        2      32
<-3        6-24 months   ki1119695-PROBIT          BELARUS      Control                0        5       5
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0      326    1603
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1       83    1603
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0      956    1603
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      238    1603
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0      753    3271
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1       70    3271
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0     2210    3271
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      238    3271
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0      789    3576
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1      117    3576
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0     2323    3576
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      347    3576
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0       94     543
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1       33     543
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0      330     543
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1       86     543
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0       32     181
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1       14     181
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0      110     181
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1       25     181
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control                0       55     305
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control                1       79     305
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                  0       80     305
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1       91     305
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control                0        9      90
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control                1       33      90
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Other                  0       21      90
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1       27      90
[-2--1)    6-24 months   ki1135781-COHORTS         GUATEMALA    Control                0        2      15
[-2--1)    6-24 months   ki1135781-COHORTS         GUATEMALA    Control                1        2      15
[-2--1)    6-24 months   ki1135781-COHORTS         GUATEMALA    Other                  0        2      15
[-2--1)    6-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1        9      15
<-3        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1        1       1
[-3--2)    6-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1        1       1
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0     1161    2730
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1      125    2730
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0     1318    2730
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      126    2730
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0     1630    4223
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1      490    4223
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0     1546    4223
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      557    4223
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0     1600    3910
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1      258    3910
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0     1743    3910
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      309    3910
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0      143     417
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1       75     417
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0      134     417
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1       65     417
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0      613    1747
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1      267    1747
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0      565    1747
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      302    1747
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0      191     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1       76     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0      201     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       72     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0      329     992
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1      123     992
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0      273    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1       81    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0      242    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       69    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0      449    1238
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1      124    1238
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0      134     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1       82     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0      159     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       82     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0      251     864
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1      156     864
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0       15      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1        8      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0       18      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1        8      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0       20      87
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1       18      87
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0       46     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1       47     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0       67     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       46     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0       80     351
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1       65     351
[-2--1)    0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control                0        2       3
[-2--1)    0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control                1        1       3
>=0        0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control                0        1       4
>=0        0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control                1        0       4
>=0        0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Maternal               0        2       4
>=0        0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Maternal               1        1       4
[-1-0)     0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control                0        2       4
[-1-0)     0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Control                1        1       4
[-1-0)     0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Maternal               0        1       4
[-1-0)     0-24 months   ki1000125-AgaKhanUniv     PAKISTAN     Maternal               1        0       4
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0       81     312
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1       68     312
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0       97     312
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1       66     312
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0       42     291
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1       94     291
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0       52     291
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1      103     291
<-3        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0        0      48
<-3        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1       19      48
<-3        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0        1      48
<-3        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1       28      48
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0       39     156
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1       32     156
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0       62     156
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1       23     156
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                0       11     131
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control                1       49     131
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  0       11     131
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                  1       60     131
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                0       44     255
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                1       21     255
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  0      120     255
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  1       70     255
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                0       44     204
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                1       11     204
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  0      122     204
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  1       27     204
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                0       13     160
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                1       29     160
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  0       34     160
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  1       84     160
[-3--2)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                0        0      21
[-3--2)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control                1        4      21
[-3--2)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  0        2      21
[-3--2)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  1       15      21
<-3        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                  1        1       1
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control                0     6499   15200
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control                1      839   15200
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Maternal               0     7130   15200
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Maternal               1      732   15200
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control                0      386    1346
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control                1      228    1346
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Maternal               0      480    1346
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Maternal               1      252    1346
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control                0       31     139
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control                1       32     139
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Maternal               0       51     139
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Maternal               1       25     139
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control                0        7      36
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control                1       12      36
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Maternal               0        5      36
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Maternal               1       12      36
<-3        0-24 months   ki1119695-PROBIT          BELARUS      Control                0        4       8
<-3        0-24 months   ki1119695-PROBIT          BELARUS      Control                1        2       8
<-3        0-24 months   ki1119695-PROBIT          BELARUS      Maternal               0        1       8
<-3        0-24 months   ki1119695-PROBIT          BELARUS      Maternal               1        1       8
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0      299    2136
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1      238    2136
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0      894    2136
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      705    2136
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0      791    3909
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1      188    3909
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0     2345    3909
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      585    3909
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0      771    4434
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1      353    4434
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0     2287    4434
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1     1023    4434
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0       91     803
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1      104     803
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0      272     803
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      336     803
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                0       25     343
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control                1       59     343
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   0       69     343
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                   1      190     343
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control                0       59     428
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control                1      150     428
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                  0       87     428
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1      132     428
[-2--1)    0-24 months   ki1135781-COHORTS         GUATEMALA    Control                0        2      72
[-2--1)    0-24 months   ki1135781-COHORTS         GUATEMALA    Control                1       32      72
[-2--1)    0-24 months   ki1135781-COHORTS         GUATEMALA    Other                  0        2      72
[-2--1)    0-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1       36      72
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control                0        9     211
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control                1       89     211
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Other                  0       22     211
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1       91     211
[-3--2)    0-24 months   ki1135781-COHORTS         GUATEMALA    Control                1       15      33
[-3--2)    0-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1       18      33
<-3        0-24 months   ki1135781-COHORTS         GUATEMALA    Control                1        1       7
<-3        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                  1        6       7
<-3        0-24 months   ki1148112-iLiNS-DYAD-M    MALAWI       Maternal               1        1       1
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0     1551    3960
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1      343    3960
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0     1723    3960
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      343    3960
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0       88    1932
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1      946    1932
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0      106    1932
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      792    1932
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0     2132    6965
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1     1361    6965
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0     2104    6965
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1     1368    6965
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0     2074    5501
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1      532    5501
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0     2322    5501
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1      573    5501
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                0      671    4079
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control                1     1409    4079
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               0      698    4079
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal               1     1301    4079
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0      180    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1      122    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0      188    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1      117    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0      303    1120
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1      210    1120
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0      260    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1      120    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0      235    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1      118    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0      428    1382
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1      221    1382
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0      119    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1      153    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0      142    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1      168    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0      222    1124
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1      320    1124
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0        5     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1       59     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0        6     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1       57     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0        6     238
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1      105     238
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                0       36     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control                1      120     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    0       45     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                    1      134     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  0       59     589
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                  1      195     589
<-3        0-24 months   iLiNS_DYADM_LNS           MALAWI       LNS                    1        1       1


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
* birthlen: <-3, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
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
* birthlen: <-3, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           ever_stunted
## tr         0
##   Control  5
##   LNS      0
##   Maternal 0
##   Other    0
##   VitA     0
##           ever_stunted
## tr          1
##   Control  15
##   LNS       0
##   Maternal  0
##   Other    18
##   VitA      0
```




# Results Detail

## Results Plots
![](/tmp/6869021d-2630-491b-b118-58697a72d2d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6869021d-2630-491b-b118-58697a72d2d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6869021d-2630-491b-b118-58697a72d2d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6869021d-2630-491b-b118-58697a72d2d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


birthlen   agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.4507042   0.4077538   0.4936547
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.2705882   0.2252193   0.3159572
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.2000000   0.1714289   0.2285711
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.1812081   0.1359231   0.2264930
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.1143363   0.1002723   0.1284004
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Maternal             NA                0.0931061   0.0839616   0.1022505
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.1920327   0.1673554   0.2167099
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.1996587   0.1851826   0.2141348
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                0.7177033   0.6878694   0.7475373
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                NA                0.6027397   0.5695398   0.6359396
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.1810982   0.1704383   0.1917582
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.1660213   0.1567289   0.1753137
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.3157895   0.2590709   0.3725080
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.3342776   0.2721804   0.3963749
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.3405239   0.2990045   0.3820433
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.0488627   0.0395753   0.0581501
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Maternal             NA                0.0421663   0.0365961   0.0477365
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.0768212   0.0578222   0.0958202
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.0749890   0.0641456   0.0858324
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                0.1975309   0.1568177   0.2382440
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                NA                0.0543478   0.0296413   0.0790543
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.0990099   0.0905268   0.1074930
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.0917902   0.0833869   0.1001935
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.1156250   0.0744140   0.1568360
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.1428571   0.0954552   0.1902591
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.1358025   0.1000357   0.1715692
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.2857143   0.2531612   0.3182673
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.1898734   0.1857725   0.1939743
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.1372549   0.1117027   0.1628071
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.1594203   0.1147067   0.2041338
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.0371042   0.0290483   0.0451601
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Maternal             NA                0.0330439   0.0293760   0.0367118
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.0850547   0.0659930   0.1041164
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.0972222   0.0854845   0.1089599
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                0.5895522   0.5528997   0.6262048
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                NA                0.5321637   0.4901657   0.5741618
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.0972006   0.0868932   0.1075081
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.0872576   0.0778832   0.0966321
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.2288136   0.1777474   0.2798797
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.2218650   0.1666509   0.2770790
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.2164049   0.1805470   0.2522628
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.7023810   0.6044637   0.8002982
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.7335907   0.6796727   0.7875087
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.9148936   0.9047818   0.9250054
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.8819599   0.8702463   0.8936735
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.9218750   0.8553701   0.9883799
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.9047619   0.8444954   0.9650284
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.9459459   0.8975089   0.9943830
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.5882353   0.4710388   0.7054318
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.5939086   0.5252006   0.6626167
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.8672055   0.8535379   0.8808732
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.8371162   0.8227222   0.8515102
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.7543860   0.6346935   0.8740784
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.8367347   0.7420633   0.9314061
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.8834951   0.8146923   0.9522980
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.3043478   0.1710100   0.4376857
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.1851852   0.1194774   0.2508930
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.3440367   0.3086575   0.3794159
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.3266332   0.2908225   0.3624439
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.3478261   0.1399424   0.5557098
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.3076923   0.1373844   0.4780002
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.4736842   0.3073287   0.6400398
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.8166667   0.7635281   0.8698052
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.8450704   0.8087933   0.8813476
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.6315789   0.4933196   0.7698383
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Maternal             NA                0.7058824   0.6144552   0.7973095
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.5333333   0.4632678   0.6033988
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.5526316   0.5130842   0.5921789
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.6774038   0.6656830   0.6891247
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.6508254   0.6374246   0.6642263
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.7692308   0.6951040   0.8433575
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.7486034   0.6766543   0.8205524
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.7677165   0.7093929   0.8260401
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.5625000   0.4957918   0.6292082
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.6333333   0.5772991   0.6893676
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.5000000   0.3434510   0.6565490
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Maternal             NA                0.4285714   0.2829933   0.5741496
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.3677419   0.2917703   0.4437136
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.3892473   0.3448949   0.4335998
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.5150483   0.5013680   0.5287285
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.4719033   0.4571388   0.4866678
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.5116279   0.4195754   0.6036804
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.4817073   0.3974986   0.5659160
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.4889868   0.4184865   0.5594871
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.4545455   0.4074942   0.5015968
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.4848485   0.3610303   0.6086667
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.2598425   0.1835005   0.3361845
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.2067308   0.1677801   0.2456814
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.3034091   0.2853057   0.3215124
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.3483276   0.3291276   0.3675275
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.5053763   0.3973762   0.6133765
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.4070796   0.3115775   0.5025818
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.4482759   0.3594308   0.5371209
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.6911765   0.6368496   0.7455033
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.6645161   0.5812029   0.7478294
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.6904762   0.6536603   0.7272921
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.7118644   0.6514100   0.7723188
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.5079365   0.4346267   0.5812463
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Maternal             NA                0.3289474   0.2343090   0.4235858
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.4432030   0.4011775   0.4852284
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.4409006   0.4165595   0.4652417
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.3896364   0.3799766   0.3992963
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.3940092   0.3846638   0.4033546
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.5625000   0.4901107   0.6348893
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.5419355   0.4769501   0.6069209
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.5904059   0.5451800   0.6356318
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.3361345   0.3110783   0.3611906
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.3015873   0.2644118   0.3387629
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.4285714   0.3891614   0.4679815
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.3305085   0.2677179   0.3932990
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.4166667   0.3266724   0.5066609
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Maternal             NA                0.2777778   0.1763143   0.3792413
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.2572816   0.2150587   0.2995044
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.2483923   0.2243745   0.2724101
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.2134680   0.2042086   0.2227274
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.1731691   0.1654205   0.1809177
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.2008368   0.1427240   0.2589496
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.2425373   0.1840012   0.3010734
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.2863248   0.2431993   0.3294503
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.3977273   0.2863713   0.5090832
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.3541667   0.3411852   0.3671481
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.2857143   0.2423178   0.3291107
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.4109589   0.3228386   0.4990792
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.2029340   0.1639446   0.2419234
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.1993300   0.1766630   0.2219970
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.2311321   0.2203666   0.2418976
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.2648597   0.2539380   0.2757815
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.3796296   0.3019564   0.4573029
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.3402490   0.2683236   0.4121743
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.3832924   0.3316351   0.4349497
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.4563758   0.4011939   0.5115578
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.4049080   0.3615809   0.4482351
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.3230769   0.2940407   0.3521132
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.3684211   0.3172147   0.4196274
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.3713355   0.3341744   0.4084966
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Maternal             NA                0.3442623   0.3017963   0.3867283
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.3140569   0.2869199   0.3411940
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.3090634   0.2933190   0.3248078
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                0.9081633   0.8815437   0.9347828
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Other                NA                0.8053097   0.7661184   0.8445011
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.2041443   0.1944642   0.2138243
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.1979275   0.1902186   0.2056363
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.4039735   0.3371071   0.4708399
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.3836066   0.3201149   0.4470982
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.4093567   0.3585418   0.4601716
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.1338583   0.0926631   0.1750534
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.1285714   0.1094200   0.1477229
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.2491639   0.2153329   0.2829948
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Maternal             NA                0.2464183   0.2131301   0.2797066
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.1421911   0.1188189   0.1655633
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.1632013   0.1488530   0.1775495
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                0.5714286   0.4879723   0.6548848
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Other                NA                0.5588235   0.4665515   0.6510956
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.0673294   0.0615202   0.0731387
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.0654881   0.0593380   0.0716383
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.1390977   0.0899129   0.1882826
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.1310861   0.0874249   0.1747473
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.1493506   0.1141869   0.1845144
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.2881356   0.2480672   0.3282040
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.2462687   0.2033215   0.2892158
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                0.2222222   0.1930845   0.2513600
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                NA                0.2565789   0.2052234   0.3079345
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.0682226   0.0519744   0.0844709
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Maternal             NA                0.0762590   0.0541582   0.0983598
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.1291391   0.1072993   0.1509788
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.1299625   0.1172061   0.1427190
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                0.7857143   0.7274791   0.8439495
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Other                NA                0.5625000   0.4872333   0.6377667
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.1388590   0.1294156   0.1483023
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.1505848   0.1426586   0.1585110
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.2846442   0.2227809   0.3465074
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.2637363   0.2064560   0.3210165
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.2721239   0.2236881   0.3205597


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
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.9285714   0.8956456   0.9614972
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
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.6003676   0.4959510   0.7267680
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           0.9060403   0.6794127   1.2082626
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Maternal             Control           0.8143175   0.6966532   0.9518553
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.0397121   0.8970851   1.2050152
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Other                Control           0.8398174   0.7838186   0.8998169
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9167473   0.8452321   0.9943135
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.0585458   0.8174867   1.3706880
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0783256   0.8678797   1.3398010
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Maternal             Control           0.8629550   0.6852466   1.0867495
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           0.9761496   0.7329893   1.2999753
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Other                Control           0.2751359   0.1670216   0.4532333
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9270810   0.8178298   1.0509267
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.2355212   0.7591749   2.0107523
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.1745078   0.7541245   1.8292321
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.6645570   0.5919710   0.7460432
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.1614907   0.8294995   1.6263550
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Maternal             Control           0.8905712   0.6984580   1.1355256
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.1430556   0.8861612   1.4744226
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Other                Control           0.9026575   0.8163779   0.9980557
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.8977064   0.7719179   1.0439928
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9696320   0.6941119   1.3545168
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9457695   0.7162286   1.2488750
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.0444343   0.8921502   1.2227122
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9640027   0.9474836   0.9808098
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9814366   0.8896267   1.0827214
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0261109   0.9392427   1.1210132
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.0096447   0.8018867   1.2712300
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9653030   0.9430445   0.9880869
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.1091599   0.9128301   1.3477161
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.1711447   0.9813920   1.3975863
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           0.6084656   0.3462525   1.0692498
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9494137   0.8169091   1.1034109
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.8846154   0.3917348   1.9976382
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.3618421   0.6810156   2.7233060
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           1.0347801   0.9568912   1.1190091
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Maternal             Control           1.1176471   0.8697436   1.4362106
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.0361842   0.8922096   1.2033918
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9607643   0.9352495   0.9869751
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9731844   0.8493504   1.1150731
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9980315   0.8827789   1.1283311
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                Control           1.1259259   0.9709458   1.3056436
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Maternal             Control           0.8571429   0.5402524   1.3599086
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.0584795   0.8360260   1.3401245
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9162313   0.8793892   0.9546169
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9415188   0.7326309   1.2099649
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9557469   0.7589360   1.2035958
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           1.0666667   0.8088608   1.4066423
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           0.7956002   0.5611970   1.1279100
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           1.1480459   1.0584438   1.2452333
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.8054980   0.5864707   1.1063247
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.8870139   0.6627114   1.1872343
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.9614276   0.8295430   1.1142798
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.0309760   0.9326093   1.1397180
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Maternal             Control           0.6476151   0.4638968   0.9040920
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           0.9948051   0.8914272   1.1101715
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           1.0112228   0.9771305   1.0465045
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9634409   0.8080435   1.1487231
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0496105   0.9036076   1.2192042
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.8972222   0.7760723   1.0372844
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Other                Control           0.7711864   0.6244452   0.9524110
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Maternal             Control           0.6666667   0.4340393   1.0239729
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           0.9654493   0.7980051   1.1680279
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.8112178   0.7621972   0.8633913
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.2076337   0.8285024   1.7602594
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.4256588   1.0288012   1.9756034
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.8904762   0.6713393   1.1811431
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.4383562   1.1059783   1.8706230
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           0.9822405   0.7857015   1.2279427
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           1.1459237   1.0768609   1.2194157
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.8962656   0.6678377   1.2028252
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0096482   0.7902558   1.2899489
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.8872248   0.7549239   1.0427116
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.1403509   0.9663985   1.3456148
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Maternal             Control           0.9270923   0.7892595   1.0889957
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           0.9841000   0.8901774   1.0879324
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Other                Control           0.8867456   0.8377724   0.9385814
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9695469   0.9118345   1.0309121
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9495834   0.7513791   1.2000716
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0133257   0.8239331   1.2462528
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.9605042   0.6827567   1.3512402
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Maternal             Control           0.9889810   0.8146251   1.2006546
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.1477596   0.9525667   1.3829500
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Other                Control           0.9779412   0.7844701   1.2191273
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9726528   0.8561924   1.1049544
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9424031   0.5798003   1.5317750
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0737101   0.7021077   1.6419893
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.8546971   0.6840102   1.0679769
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Other                Control           1.1546053   0.9088998   1.4667330
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Maternal             Control           1.1177963   0.7677545   1.6274324
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.0063766   0.8276356   1.2237197
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Other                Control           0.7159091   0.6143653   0.8342363
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           1.0844440   0.9950853   1.1818271
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9265471   0.6814522   1.2597943
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9560142   0.7218758   1.2660948


### Parameter: PAR


birthlen   agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0981401   -0.1836086   -0.0126716
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                -0.0137255   -0.0590249    0.0315740
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0109811   -0.0212646   -0.0006975
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0057161   -0.0157287    0.0271609
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0588248   -0.0924692   -0.0251805
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0078659   -0.0171888    0.0014570
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0163379   -0.0318488    0.0645246
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0034545   -0.0092213    0.0023123
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0013745   -0.0177848    0.0150359
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0761436   -0.1030586   -0.0492285
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0037577   -0.0121656    0.0046503
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0165926   -0.0201122    0.0532973
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0533199   -0.0892671   -0.0173728
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0161843   -0.0285514    0.0609199
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0021049   -0.0059254    0.0017157
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0091061   -0.0076482    0.0258605
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0321752   -0.0742951    0.0099447
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0052592   -0.0146404    0.0041219
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0074888   -0.0499016    0.0349239
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0235666   -0.0608513    0.1079844
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0153077   -0.0270606   -0.0035548
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0066964   -0.0492543    0.0626472
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0042175   -0.0967749    0.1052100
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0139548   -0.0283624    0.0004529
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0829346   -0.0132166    0.1790858
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0888782   -0.2000077    0.0222513
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0083053   -0.0441301    0.0275195
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0429785   -0.1343950    0.2203520
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0153944   -0.0226655    0.0534543
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                 0.0350877   -0.0635503    0.1337258
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0146119   -0.0463089    0.0755327
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0130253   -0.0265353    0.0004847
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0069218   -0.0708087    0.0569652
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0393519   -0.0227355    0.1014392
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0312500   -0.1782190    0.1157190
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0161290   -0.0498530    0.0821111
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0209031   -0.0358459   -0.0059603
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0193202   -0.0995998    0.0609594
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0181818   -0.1069747    0.1433384
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0406897   -0.1063764    0.0249970
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0222921    0.0030674    0.0415168
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0552339   -0.1478937    0.0374260
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0142005   -0.0987406    0.0703395
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0157738   -0.0446982    0.0762459
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0978646   -0.1894613   -0.0062678
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0017236   -0.0380797    0.0346325
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0021798   -0.0071583    0.0115179
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0077847   -0.0539301    0.0694995
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0177671   -0.0580682    0.0225340
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control              NA                -0.0723214   -0.1354691   -0.0091737
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0757576   -0.1750737    0.0235585
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0066777   -0.0431688    0.0298134
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0199853   -0.0278812   -0.0120895
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0524965    0.0013533    0.1036397
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0227273   -0.0429874   -0.0024672
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0972644    0.0085086    0.1860203
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0026845   -0.0362771    0.0309082
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0167959    0.0058801    0.0277117
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0092593   -0.0755061    0.0569876
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0268887   -0.0739745    0.0201972
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0337858   -0.0174782    0.0850498
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0147233   -0.0569652    0.0275186
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0037277   -0.0271483    0.0196930
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0550827   -0.0948834   -0.0152820
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0032717   -0.0109992    0.0044558
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0030807   -0.0599049    0.0537436
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0027721   -0.0222066    0.0166624
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0014787   -0.0347222    0.0317648
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0157190   -0.0048017    0.0362398
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0069124   -0.0991979    0.0853731
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0009747   -0.0071254    0.0051760
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0026108   -0.0386489    0.0438705
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0222626   -0.0673961    0.0228709
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0253506   -0.0260466    0.0767478
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                 0.0044611   -0.0176373    0.0265594
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0006148   -0.0182696    0.0194992
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.1190476   -0.1977897   -0.0403055
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0061538   -0.0017518    0.0140594
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0114587   -0.0641945    0.0412771


### Parameter: PAF


birthlen   agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
>=0        0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.2783611   -0.6373695    0.0019314
>=0        0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                -0.0736842   -0.3695883    0.1582888
>=0        0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.1062459   -0.2241793    0.0003263
>=0        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0289059   -0.0858171    0.1315076
>=0        0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0892803   -0.1465013   -0.0349151
>=0        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0454065   -0.1032838    0.0094345
>=0        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0491916   -0.1076603    0.1838323
>=0        0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0760762   -0.2234328    0.0535321
>=0        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0182177   -0.2606924    0.1776207
>=0        0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.6272781   -1.1034482   -0.2589014
>=0        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0394497   -0.1354452    0.0484298
>=0        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.1254945   -0.1987543    0.3620378
>=0        6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.2294372   -0.4481108   -0.0437847
>=0        6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.1054767   -0.1981147    0.3321408
>=0        6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0601403   -0.1836839    0.0505088
>=0        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0967083   -0.0996657    0.2580146
>=0        6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0577261   -0.1408512    0.0193423
>=0        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0572020   -0.1709866    0.0455262
>=0        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0338364   -0.2441522    0.1409268
<-3        0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0324632   -0.0911893    0.1421035
<-3        0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0170164   -0.0303924   -0.0038140
<-3        0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0072115   -0.0549251    0.0656882
<-3        0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0071188   -0.1788575    0.1637555
<-3        0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0163548   -0.0336644    0.0006649
<-3        0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0990476   -0.0252156    0.2082493
<-3        6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.4124861   -1.0308441    0.0175923
<-3        6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0247379   -0.1401659    0.0790045
<-3        6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.1099744   -0.4846120    0.4664293
[-3--2)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0185015   -0.0275635    0.0625015
[-3--2)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                 0.0526316   -0.0983207    0.1828371
[-3--2)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0266667   -0.0911318    0.1317476
[-3--2)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0196053   -0.0405527    0.0009205
[-3--2)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0090800   -0.0964757    0.0713497
[-3--2)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0653846   -0.0371826    0.1578090
[-3--2)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0666667   -0.4608480    0.2211525
[-3--2)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0420168   -0.1462665    0.1993731
[-3--2)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0423015   -0.0743242   -0.0112333
[-3--2)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0392442   -0.2159373    0.1117729
[-3--2)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0384615   -0.2531729    0.2622277
[-3--2)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.1856680   -0.5260620    0.0787998
[-3--2)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0684434    0.0116686    0.1219569
[-3--2)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.1227031   -0.3494199    0.0659228
[-2--1)    0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0209764   -0.1568244    0.0989187
[-2--1)    0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0223346   -0.0650744    0.1025701
[-2--1)    0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.2386522   -0.5546133    0.0130927
[-2--1)    0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0039041   -0.0897268    0.0751595
[-2--1)    0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0055633   -0.0184219    0.0289837
[-2--1)    0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0136505   -0.1008006    0.1162021
[-2--1)    0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0558069   -0.1979912    0.0695021
[-2--1)    0-6 months    ki1017093b-PROVIDE        BANGLADESH   Control              NA                -0.2030075   -0.4377246   -0.0066094
[-2--1)    0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.2222222   -0.6425569    0.0905477
[-2--1)    0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0266464   -0.1830853    0.1091066
[-2--1)    0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.1032926   -0.1495598   -0.0588875
[-2--1)    0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.2072231   -0.0231984    0.3857543
[-2--1)    6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0606061   -0.1233736   -0.0013456
[-2--1)    6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.2539683    0.0563946    0.4101736
[-2--1)    6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0134055   -0.1958398    0.1411970
[-2--1)    6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0677452    0.0256688    0.1080046
[-2--1)    6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0250000   -0.2202774    0.1390277
[-1-0)     0-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0626064   -0.1860969    0.0480268
[-1-0)     0-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.0946746   -0.0454452    0.2160143
[-1-0)     0-24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0412866   -0.1723335    0.0751114
[-1-0)     0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0120120   -0.0903674    0.0607127
[-1-0)     0-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0645692   -0.1154566   -0.0160033
[-1-0)     0-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0162875   -0.0561535    0.0220736
[-1-0)     0-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0076845   -0.1598695    0.1245325
[-1-0)     0-6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0211474   -0.1845766    0.1197345
[-1-0)     0-6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0059701   -0.1504509    0.1203659
[-1-0)     0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0995442   -0.0400774    0.2204228
[-1-0)     0-6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0122449   -0.1920297    0.1404243
[-1-0)     0-6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0146888   -0.1132510    0.0751471
[-1-0)     0-6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0184237   -0.3208427    0.2705475
[-1-0)     6-24 months   ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0837339   -0.2844308    0.0856035
[-1-0)     6-24 months   ki1017093b-PROVIDE        BANGLADESH   Control              NA                 0.1023965   -0.1051832    0.2709878
[-1-0)     6-24 months   ki1119695-PROBIT          BELARUS      Control              NA                 0.0613767   -0.2725296    0.3076674
[-1-0)     6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0047385   -0.1519808    0.1401372
[-1-0)     6-24 months   ki1135781-COHORTS         GUATEMALA    Control              NA                -0.1785714   -0.3273115   -0.0464993
[-1-0)     6-24 months   kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0424363   -0.0112931    0.0933110
[-1-0)     6-24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0419448   -0.2540445    0.1342819
