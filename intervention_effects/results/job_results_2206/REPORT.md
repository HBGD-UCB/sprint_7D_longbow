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

* birthlen
* agecat
* studyid
* country

## Data Summary

birthlen   agecat      studyid                   country      tr          stunted   n_cell       n
---------  ----------  ------------------------  -----------  ---------  --------  -------  ------
[-2--1)    Birth       ki1000125-AgaKhanUniv     PAKISTAN     Control           0        3       3
[-2--1)    6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control           0        2       3
[-2--1)    6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control           1        1       3
>=0        Birth       ki1000125-AgaKhanUniv     PAKISTAN     Control           0        1       4
>=0        Birth       ki1000125-AgaKhanUniv     PAKISTAN     Maternal          0        3       4
>=0        6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control           0        1       4
>=0        6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control           1        0       4
>=0        6 months    ki1000125-AgaKhanUniv     PAKISTAN     Maternal          0        2       4
>=0        6 months    ki1000125-AgaKhanUniv     PAKISTAN     Maternal          1        1       4
[-1-0)     Birth       ki1000125-AgaKhanUniv     PAKISTAN     Control           0        3       4
[-1-0)     Birth       ki1000125-AgaKhanUniv     PAKISTAN     Maternal          0        1       4
[-1-0)     6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control           0        2       4
[-1-0)     6 months    ki1000125-AgaKhanUniv     PAKISTAN     Control           1        1       4
[-1-0)     6 months    ki1000125-AgaKhanUniv     PAKISTAN     Maternal          0        1       4
[-1-0)     6 months    ki1000125-AgaKhanUniv     PAKISTAN     Maternal          1        0       4
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Control           0       91     207
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Control           1       16     207
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Other             0       86     207
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Other             1       14     207
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control           0       62     186
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control           1       27     186
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Other             0       69     186
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Other             1       28     186
[-1-0)     Birth       ki1000304b-SAS-CompFeed   INDIA        Control           0       28      46
[-1-0)     Birth       ki1000304b-SAS-CompFeed   INDIA        Other             0       18      46
<-3        Birth       ki1000304b-SAS-CompFeed   INDIA        Control           1        4      11
<-3        Birth       ki1000304b-SAS-CompFeed   INDIA        Other             1        7      11
<-3        6 months    ki1000304b-SAS-CompFeed   INDIA        Control           0        1      32
<-3        6 months    ki1000304b-SAS-CompFeed   INDIA        Control           1       11      32
<-3        6 months    ki1000304b-SAS-CompFeed   INDIA        Other             0        3      32
<-3        6 months    ki1000304b-SAS-CompFeed   INDIA        Other             1       17      32
>=0        6 months    ki1000304b-SAS-CompFeed   INDIA        Control           0       41     101
>=0        6 months    ki1000304b-SAS-CompFeed   INDIA        Control           1        3     101
>=0        6 months    ki1000304b-SAS-CompFeed   INDIA        Other             0       54     101
>=0        6 months    ki1000304b-SAS-CompFeed   INDIA        Other             1        3     101
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control           0       16      82
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control           1       24      82
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Other             0       16      82
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Other             1       26      82
[-2--1)    Birth       ki1000304b-SAS-CompFeed   INDIA        Control           0       21      51
[-2--1)    Birth       ki1000304b-SAS-CompFeed   INDIA        Other             0       30      51
>=0        Birth       ki1000304b-SAS-CompFeed   INDIA        Control           0        4       9
>=0        Birth       ki1000304b-SAS-CompFeed   INDIA        Other             0        5       9
[-3--2)    Birth       ki1000304b-SAS-CompFeed   INDIA        Control           1       13      27
[-3--2)    Birth       ki1000304b-SAS-CompFeed   INDIA        Other             1       14      27
[-1-0)     6 months    ki1017093b-PROVIDE        BANGLADESH   Control           0        4      17
[-1-0)     6 months    ki1017093b-PROVIDE        BANGLADESH   Control           1        0      17
[-1-0)     6 months    ki1017093b-PROVIDE        BANGLADESH   Other             0       11      17
[-1-0)     6 months    ki1017093b-PROVIDE        BANGLADESH   Other             1        2      17
[-2--1)    6 months    ki1017093b-PROVIDE        BANGLADESH   Control           0        3      15
[-2--1)    6 months    ki1017093b-PROVIDE        BANGLADESH   Control           1        2      15
[-2--1)    6 months    ki1017093b-PROVIDE        BANGLADESH   Other             0        6      15
[-2--1)    6 months    ki1017093b-PROVIDE        BANGLADESH   Other             1        4      15
>=0        6 months    ki1017093b-PROVIDE        BANGLADESH   Control           0        1      13
>=0        6 months    ki1017093b-PROVIDE        BANGLADESH   Control           1        0      13
>=0        6 months    ki1017093b-PROVIDE        BANGLADESH   Other             0       11      13
>=0        6 months    ki1017093b-PROVIDE        BANGLADESH   Other             1        1      13
>=0        24 months   ki1017093b-PROVIDE        BANGLADESH   Other             0        2       2
[-3--2)    6 months    ki1017093b-PROVIDE        BANGLADESH   Other             1        1       1
>=0        Birth       ki1119695-PROBIT          BELARUS      Control           0     6208   12641
>=0        Birth       ki1119695-PROBIT          BELARUS      Maternal          0     6433   12641
>=0        6 months    ki1119695-PROBIT          BELARUS      Control           0     6114   13180
>=0        6 months    ki1119695-PROBIT          BELARUS      Control           1      373   13180
>=0        6 months    ki1119695-PROBIT          BELARUS      Maternal          0     6420   13180
>=0        6 months    ki1119695-PROBIT          BELARUS      Maternal          1      273   13180
[-1-0)     Birth       ki1119695-PROBIT          BELARUS      Control           0      495    1097
[-1-0)     Birth       ki1119695-PROBIT          BELARUS      Maternal          0      602    1097
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Control           0      433    1164
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Control           1      112    1164
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Maternal          0      507    1164
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Maternal          1      112    1164
[-2--1)    Birth       ki1119695-PROBIT          BELARUS      Control           0       55     113
[-2--1)    Birth       ki1119695-PROBIT          BELARUS      Maternal          0       58     113
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Control           0       34     117
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Control           1       24     117
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Maternal          0       45     117
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Maternal          1       14     117
>=0        24 months   ki1119695-PROBIT          BELARUS      Control           0      312     786
>=0        24 months   ki1119695-PROBIT          BELARUS      Control           1       42     786
>=0        24 months   ki1119695-PROBIT          BELARUS      Maternal          0      386     786
>=0        24 months   ki1119695-PROBIT          BELARUS      Maternal          1       46     786
[-2--1)    24 months   ki1119695-PROBIT          BELARUS      Control           0        1       5
[-2--1)    24 months   ki1119695-PROBIT          BELARUS      Control           1        1       5
[-2--1)    24 months   ki1119695-PROBIT          BELARUS      Maternal          0        3       5
[-2--1)    24 months   ki1119695-PROBIT          BELARUS      Maternal          1        0       5
[-3--2)    Birth       ki1119695-PROBIT          BELARUS      Control           1       16      28
[-3--2)    Birth       ki1119695-PROBIT          BELARUS      Maternal          1       12      28
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Control           0        7      28
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Control           1        7      28
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Maternal          0        6      28
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Maternal          1        8      28
[-1-0)     24 months   ki1119695-PROBIT          BELARUS      Control           0       14      48
[-1-0)     24 months   ki1119695-PROBIT          BELARUS      Control           1        4      48
[-1-0)     24 months   ki1119695-PROBIT          BELARUS      Maternal          0       24      48
[-1-0)     24 months   ki1119695-PROBIT          BELARUS      Maternal          1        6      48
<-3        Birth       ki1119695-PROBIT          BELARUS      Control           1        5       5
<-3        6 months    ki1119695-PROBIT          BELARUS      Control           0        5       6
<-3        6 months    ki1119695-PROBIT          BELARUS      Control           1        0       6
<-3        6 months    ki1119695-PROBIT          BELARUS      Maternal          0        0       6
<-3        6 months    ki1119695-PROBIT          BELARUS      Maternal          1        1       6
[-3--2)    24 months   ki1119695-PROBIT          BELARUS      Maternal          1        1       1
[-2--1)    Birth       ki1126311-ZVITAMBO        ZIMBABWE     Control           0      643    2565
[-2--1)    Birth       ki1126311-ZVITAMBO        ZIMBABWE     VitA              0     1922    2565
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           0      282    1410
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           1       76    1410
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              0      817    1410
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              1      235    1410
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           0      563    2551
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           1       59    2551
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              0     1772    2551
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              1      157    2551
[-1-0)     Birth       ki1126311-ZVITAMBO        ZIMBABWE     Control           0     1290    5175
[-1-0)     Birth       ki1126311-ZVITAMBO        ZIMBABWE     VitA              0     3885    5175
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           0      628    2945
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           1      104    2945
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              0     1884    2945
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              1      329    2945
>=0        Birth       ki1126311-ZVITAMBO        ZIMBABWE     Control           0     1156    4658
>=0        Birth       ki1126311-ZVITAMBO        ZIMBABWE     VitA              0     3502    4658
[-3--2)    Birth       ki1126311-ZVITAMBO        ZIMBABWE     Control           1      246     982
[-3--2)    Birth       ki1126311-ZVITAMBO        ZIMBABWE     VitA              1      736     982
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           0       81     516
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           1       36     516
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              0      266     516
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              1      133     516
<-3        Birth       ki1126311-ZVITAMBO        ZIMBABWE     Control           1      114     450
<-3        Birth       ki1126311-ZVITAMBO        ZIMBABWE     VitA              1      336     450
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           0       22     231
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control           1       32     231
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              0       74     231
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA              1      103     231
[-3--2)    24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA              0        4       7
[-3--2)    24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA              1        3       7
[-2--1)    24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control           0        0      10
[-2--1)    24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control           1        2      10
[-2--1)    24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA              0        1      10
[-2--1)    24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA              1        7      10
[-1-0)     24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control           0        3       9
[-1-0)     24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control           1        1       9
[-1-0)     24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA              0        0       9
[-1-0)     24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA              1        5       9
>=0        24 months   ki1126311-ZVITAMBO        ZIMBABWE     Control           0        2       4
>=0        24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA              0        2       4
<-3        24 months   ki1126311-ZVITAMBO        ZIMBABWE     VitA              1        1       1
>=0        Birth       ki1135781-COHORTS         GUATEMALA    Control           0      242     490
>=0        Birth       ki1135781-COHORTS         GUATEMALA    Other             0      248     490
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Control           0      134     375
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Control           1       50     375
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Other             0      164     375
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Other             1       27     375
[-2--1)    Birth       ki1135781-COHORTS         GUATEMALA    Control           0       39      81
[-2--1)    Birth       ki1135781-COHORTS         GUATEMALA    Other             0       42      81
[-2--1)    6 months    ki1135781-COHORTS         GUATEMALA    Control           0        4      62
[-2--1)    6 months    ki1135781-COHORTS         GUATEMALA    Control           1       24      62
[-2--1)    6 months    ki1135781-COHORTS         GUATEMALA    Other             0        9      62
[-2--1)    6 months    ki1135781-COHORTS         GUATEMALA    Other             1       25      62
[-1-0)     Birth       ki1135781-COHORTS         GUATEMALA    Control           0      107     231
[-1-0)     Birth       ki1135781-COHORTS         GUATEMALA    Other             0      124     231
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Control           0       39     187
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Control           1       51     187
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Other             0       46     187
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Other             1       51     187
[-3--2)    Birth       ki1135781-COHORTS         GUATEMALA    Control           1       15      39
[-3--2)    Birth       ki1135781-COHORTS         GUATEMALA    Other             1       24      39
[-3--2)    6 months    ki1135781-COHORTS         GUATEMALA    Control           0        0      30
[-3--2)    6 months    ki1135781-COHORTS         GUATEMALA    Control           1       14      30
[-3--2)    6 months    ki1135781-COHORTS         GUATEMALA    Other             0        1      30
[-3--2)    6 months    ki1135781-COHORTS         GUATEMALA    Other             1       15      30
>=0        24 months   ki1135781-COHORTS         GUATEMALA    Control           0        1       3
>=0        24 months   ki1135781-COHORTS         GUATEMALA    Control           1        2       3
<-3        Birth       ki1135781-COHORTS         GUATEMALA    Control           1        4      11
<-3        Birth       ki1135781-COHORTS         GUATEMALA    Other             1        7      11
<-3        6 months    ki1135781-COHORTS         GUATEMALA    Control           0        0       7
<-3        6 months    ki1135781-COHORTS         GUATEMALA    Control           1        1       7
<-3        6 months    ki1135781-COHORTS         GUATEMALA    Other             0        1       7
<-3        6 months    ki1135781-COHORTS         GUATEMALA    Other             1        5       7
<-3        Birth       ki1148112-iLiNS-DYAD-M    MALAWI       Maternal          1        1       1
<-3        6 months    ki1148112-iLiNS-DYAD-M    MALAWI       Maternal          1        1       1
>=0        Birth       kiGH5241-JiVitA-3         BANGLADESH   Control           0      665    1424
>=0        Birth       kiGH5241-JiVitA-3         BANGLADESH   Maternal          0      759    1424
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           0     1240    2875
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           1      120    2875
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          0     1387    2875
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          1      128    2875
[-3--2)    Birth       kiGH5241-JiVitA-3         BANGLADESH   Control           1     2185    4218
[-3--2)    Birth       kiGH5241-JiVitA-3         BANGLADESH   Maternal          1     2033    4218
<-3        Birth       kiGH5241-JiVitA-3         BANGLADESH   Control           1     1141    2120
<-3        Birth       kiGH5241-JiVitA-3         BANGLADESH   Maternal          1      979    2120
[-2--1)    Birth       kiGH5241-JiVitA-3         BANGLADESH   Control           0     3413    6931
[-2--1)    Birth       kiGH5241-JiVitA-3         BANGLADESH   Maternal          0     3518    6931
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           0     2017    5115
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           1      558    5115
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          0     1975    5115
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          1      565    5115
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           0     1783    4107
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           1      183    4107
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          0     1971    4107
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          1      170    4107
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           0      795    2961
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           1      702    2961
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          0      796    2961
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          1      668    2961
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           0      167    1355
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control           1      558    1355
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          0      167    1355
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal          1      463    1355
[-1-0)     Birth       kiGH5241-JiVitA-3         BANGLADESH   Control           0     2342    4920
[-1-0)     Birth       kiGH5241-JiVitA-3         BANGLADESH   Maternal          0     2578    4920
>=0        24 months   kiGH5241-JiVitA-3         BANGLADESH   Control           0        3      22
>=0        24 months   kiGH5241-JiVitA-3         BANGLADESH   Control           1        7      22
>=0        24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal          0        4      22
>=0        24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal          1        8      22
<-3        24 months   kiGH5241-JiVitA-3         BANGLADESH   Control           0        1       2
<-3        24 months   kiGH5241-JiVitA-3         BANGLADESH   Control           1        1       2
[-1-0)     24 months   kiGH5241-JiVitA-3         BANGLADESH   Control           0        1       1
[-3--2)    24 months   kiGH5241-JiVitA-3         BANGLADESH   Control           0        1       1
[-2--1)    24 months   kiGH5241-JiVitA-3         BANGLADESH   Maternal          1        1       1
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           0      314    1228
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           1       30    1228
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               0      274    1228
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               1       41    1228
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             0      481    1228
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             1       88    1228
[-2--1)    Birth       kiGH5241-JiVitA-4         BANGLADESH   Control           0       79     313
[-2--1)    Birth       kiGH5241-JiVitA-4         BANGLADESH   LNS               0       84     313
[-2--1)    Birth       kiGH5241-JiVitA-4         BANGLADESH   Other             0      150     313
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           0      172     999
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           1       67     999
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               0      204     999
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               1       72     999
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             0      341     999
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             1      143     999
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           0      230    1017
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           1       40    1017
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               0      239    1017
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               1       36    1017
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             0      398    1017
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             1       74    1017
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           0       11     204
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           1       39     204
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               0       10     204
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               1       42     204
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             0       24     204
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             1       78     204
[-3--2)    Birth       kiGH5241-JiVitA-4         BANGLADESH   Control           1       51     182
[-3--2)    Birth       kiGH5241-JiVitA-4         BANGLADESH   LNS               1       59     182
[-3--2)    Birth       kiGH5241-JiVitA-4         BANGLADESH   Other             1       72     182
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           0       68     515
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control           1       64     515
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               0       95     515
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS               1       70     515
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             0      110     515
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Other             1      108     515
[-3--2)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           0        8      52
[-3--2)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           1       10      52
[-3--2)    24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               0        4      52
[-3--2)    24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               1       15      52
[-3--2)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             0        6      52
[-3--2)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             1        9      52
>=0        Birth       kiGH5241-JiVitA-4         BANGLADESH   Control           0       14      51
>=0        Birth       kiGH5241-JiVitA-4         BANGLADESH   LNS               0       14      51
>=0        Birth       kiGH5241-JiVitA-4         BANGLADESH   Other             0       23      51
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           0       11     120
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           1       13     120
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               0       13     120
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               1       17     120
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             0       29     120
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             1       37     120
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           0       30     151
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           1       14     151
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               0       27     151
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               1        7     151
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             0       46     151
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             1       27     151
[-1-0)     Birth       kiGH5241-JiVitA-4         BANGLADESH   Control           0       62     211
[-1-0)     Birth       kiGH5241-JiVitA-4         BANGLADESH   LNS               0       55     211
[-1-0)     Birth       kiGH5241-JiVitA-4         BANGLADESH   Other             0       94     211
<-3        Birth       kiGH5241-JiVitA-4         BANGLADESH   Control           1       18      65
<-3        Birth       kiGH5241-JiVitA-4         BANGLADESH   LNS               1       15      65
<-3        Birth       kiGH5241-JiVitA-4         BANGLADESH   Other             1       32      65
<-3        24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           0        2      21
<-3        24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           1        4      21
<-3        24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               0        3      21
<-3        24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               1        3      21
<-3        24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             0        2      21
<-3        24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             1        7      21
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           0       12     112
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Control           1       12     112
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               0       22     112
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS               1       14     112
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             0       35     112
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Other             1       17     112
<-3        Birth       iLiNS_DYADM_LNS           MALAWI       LNS               1        1       1
<-3        6 months    iLiNS_DYADM_LNS           MALAWI       LNS               1        1       1


The following strata were considered:

* birthlen: [-1-0), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-1-0), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-1-0), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-1-0), agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-1-0), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-1-0), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-1-0), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-1-0), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-1-0), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-1-0), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-1-0), agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-1-0), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-1-0), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-1-0), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-1-0), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-1-0), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-1-0), agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-2--1), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-2--1), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-2--1), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-2--1), agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-2--1), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-2--1), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-2--1), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-2--1), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-2--1), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-2--1), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-2--1), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-2--1), agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-2--1), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-2--1), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-2--1), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-2--1), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-2--1), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-2--1), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-2--1), agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-3--2), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-3--2), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-3--2), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-3--2), agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-3--2), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-3--2), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-3--2), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-3--2), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-3--2), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-3--2), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-3--2), agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: [-3--2), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-3--2), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-3--2), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-3--2), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-3--2), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-3--2), agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: <-3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: <-3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: <-3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: <-3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthlen: <-3, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: <-3, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: <-3, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: <-3, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthlen: <-3, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: <-3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: <-3, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthlen: <-3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: <-3, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: <-3, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: <-3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthlen: <-3, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: <-3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: >=0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: >=0, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: >=0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: >=0, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: >=0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: >=0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: >=0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: >=0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: >=0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: >=0, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: >=0, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: >=0, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: >=0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: >=0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: >=0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: >=0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: >=0, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: >=0, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: >=0, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: >=0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: >=0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* birthlen: [-2--1), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-2--1), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: >=0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: >=0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: [-1-0), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthlen: <-3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: <-3, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: >=0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: >=0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthlen: [-1-0), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-2--1), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: >=0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: >=0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-3--2), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthlen: [-2--1), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-1-0), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: <-3, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-3--2), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthlen: [-3--2), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-2--1), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-1-0), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: >=0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: <-3, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthlen: [-2--1), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: [-3--2), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: >=0, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthlen: <-3, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthlen: <-3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthlen: >=0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: <-3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-1-0), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-3--2), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-2--1), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthlen: [-3--2), agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: <-3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthlen: <-3, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthlen: <-3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr         1
##   Control  5
##   LNS      0
##   Maternal 0
##   Other    0
##   VitA     0
##           stunted
## tr           1
##   Control  114
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA     336
##           stunted
## tr            1
##   Control  1141
##   LNS         0
##   Maternal  979
##   Other       0
##   VitA        0
##           stunted
## tr          1
##   Control  18
##   LNS      15
##   Maternal  0
##   Other    32
##   VitA      0
##           stunted
## tr            0
##   Control  6208
##   LNS         0
##   Maternal 6433
##   Other       0
##   VitA        0
##           stunted
## tr            0
##   Control  1156
##   LNS         0
##   Maternal    0
##   Other       0
##   VitA     3502
##           stunted
## tr           0
##   Control  242
##   LNS        0
##   Maternal   0
##   Other    248
##   VitA       0
##           stunted
## tr           0
##   Control  665
##   LNS        0
##   Maternal 759
##   Other      0
##   VitA       0
##           stunted
## tr          0
##   Control  14
##   LNS      14
##   Maternal  0
##   Other    23
##   VitA      0
##           stunted
## tr          0
##   Control  28
##   LNS       0
##   Maternal  0
##   Other    18
##   VitA      0
##           stunted
## tr           0
##   Control  495
##   LNS        0
##   Maternal 602
##   Other      0
##   VitA       0
##           stunted
## tr            0
##   Control  1290
##   LNS         0
##   Maternal    0
##   Other       0
##   VitA     3885
##           stunted
## tr           0
##   Control  107
##   LNS        0
##   Maternal   0
##   Other    124
##   VitA       0
##           stunted
## tr            0
##   Control  2342
##   LNS         0
##   Maternal 2578
##   Other       0
##   VitA        0
##           stunted
## tr          0
##   Control  62
##   LNS      55
##   Maternal  0
##   Other    94
##   VitA      0
##           stunted
## tr          0
##   Control  21
##   LNS       0
##   Maternal  0
##   Other    30
##   VitA      0
##           stunted
## tr          0
##   Control  55
##   LNS       0
##   Maternal 58
##   Other     0
##   VitA      0
##           stunted
## tr            0
##   Control   643
##   LNS         0
##   Maternal    0
##   Other       0
##   VitA     1922
##           stunted
## tr          0
##   Control  39
##   LNS       0
##   Maternal  0
##   Other    42
##   VitA      0
##           stunted
## tr            0
##   Control  3413
##   LNS         0
##   Maternal 3518
##   Other       0
##   VitA        0
##           stunted
## tr           0
##   Control   79
##   LNS       84
##   Maternal   0
##   Other    150
##   VitA       0
##           stunted
## tr          1
##   Control  13
##   LNS       0
##   Maternal  0
##   Other    14
##   VitA      0
##           stunted
## tr          1
##   Control  16
##   LNS       0
##   Maternal 12
##   Other     0
##   VitA      0
##           stunted
## tr           1
##   Control  246
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA     736
##           stunted
## tr          1
##   Control  15
##   LNS       0
##   Maternal  0
##   Other    24
##   VitA      0
##           stunted
## tr            1
##   Control  2185
##   LNS         0
##   Maternal 2033
##   Other       0
##   VitA        0
##           stunted
## tr          1
##   Control  51
##   LNS      59
##   Maternal  0
##   Other    72
##   VitA      0
```




# Results Detail

## Results Plots
![](/tmp/de4c919f-2800-48ba-8d22-c87729d815ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de4c919f-2800-48ba-8d22-c87729d815ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de4c919f-2800-48ba-8d22-c87729d815ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de4c919f-2800-48ba-8d22-c87729d815ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


birthlen   agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
>=0        6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.0574996   0.0459768   0.0690225
>=0        6 months    ki1119695-PROBIT          BELARUS      Maternal             NA                0.0407889   0.0344769   0.0471009
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.0948553   0.0718235   0.1178871
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.0813893   0.0691849   0.0935937
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                0.2717391   0.2401582   0.3033201
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Other                NA                0.1413613   0.1161622   0.1665603
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.0882353   0.0786461   0.0978245
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.0844884   0.0766812   0.0922957
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.0872093   0.0566555   0.1177631
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.1301587   0.0803081   0.1800094
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.1546573   0.1200106   0.1893040
>=0        24 months   ki1119695-PROBIT          BELARUS      Control              NA                0.1186441   0.0844546   0.1528335
>=0        24 months   ki1119695-PROBIT          BELARUS      Maternal             NA                0.1064815   0.0777821   0.1351808
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.3181818   0.1835743   0.4527893
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.2058824   0.0500624   0.3617023
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.3698630   0.2610148   0.4787113
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.5925926   0.4612560   0.7239292
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.5819209   0.5090985   0.6547433
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.7696552   0.7516688   0.7876416
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.7349206   0.7147676   0.7550737
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.7800000   0.6534121   0.9065879
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.8076923   0.7138950   0.9014896
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.7647059   0.6816090   0.8478028
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.6000000   0.5007597   0.6992403
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.6190476   0.5711821   0.6669131
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.5000000   0.3717668   0.6282332
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Maternal             NA                0.5714286   0.4387371   0.7041200
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.3076923   0.2239810   0.3914036
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.3333333   0.2870338   0.3796329
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.4689379   0.4543296   0.4835461
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.4562842   0.4406382   0.4719301
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.4848485   0.3901881   0.5795089
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.4242424   0.3412962   0.5071886
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.4954128   0.4216851   0.5691406
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.3033708   0.2852949   0.3214466
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.2886598   0.2157252   0.3615944
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.4137931   0.3275705   0.5000157
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Maternal             NA                0.2372881   0.1522280   0.3223483
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.2122905   0.1699156   0.2546654
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.2233840   0.1982059   0.2485622
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.2166990   0.2068592   0.2265388
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.2224409   0.2134505   0.2314314
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.2803347   0.2160780   0.3445914
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.2608696   0.1978432   0.3238959
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.2954545   0.2524682   0.3384409
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.5416667   0.3470038   0.7363295
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.5666667   0.3701371   0.7631962
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.5606061   0.4409730   0.6802391
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                0.1495327   0.1146602   0.1844052
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Other                NA                0.1400000   0.1233814   0.1566186
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Control              NA                0.2055046   0.1635379   0.2474713
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Maternal             NA                0.1809370   0.1483890   0.2134850
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                0.1420765   0.1167805   0.1673725
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 NA                0.1486670   0.1338422   0.1634917
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                0.5666667   0.5172621   0.6160712
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Other                NA                0.5257732   0.4740900   0.5774563
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                0.0930824   0.0860747   0.1000901
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             NA                0.0794021   0.0728312   0.0859731
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.1481481   0.0960722   0.2002241
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.1309091   0.0845871   0.1772310
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.1567797   0.1169848   0.1965746
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                0.5000000   0.2872844   0.7127156
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  NA                0.3888889   0.2294156   0.5483621
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                NA                0.3269231   0.1927194   0.4611267


### Parameter: E(Y)


birthlen   agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
>=0        6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0490137   0.0349538   0.0630735
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0846727   0.0738674   0.0954780
>=0        6 months    ki1135781-COHORTS         GUATEMALA    NA                   NA                0.2053333   0.1643946   0.2462721
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0862609   0.0738842   0.0986376
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1294788   0.1070395   0.1519182
>=0        24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.1119593   0.0676454   0.1562732
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3178808   0.2428176   0.3929440
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.5844156   0.5207251   0.6481061
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.7535055   0.7264069   0.7806042
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.7794118   0.7222124   0.8366111
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6097561   0.5007125   0.7187997
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.5357143   0.3370878   0.7343408
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.3275194   0.2869869   0.3680518
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4626815   0.4412495   0.4841135
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4699029   0.4221505   0.5176554
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2956989   0.2200147   0.3713832
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.3247863   0.2011604   0.4484123
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.2205674   0.1989176   0.2422171
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2195503   0.2062235   0.2328772
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2822823   0.2511086   0.3134560
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.5583333   0.4672504   0.6494162
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1449275   0.1055444   0.1843107
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.1924399   0.1393401   0.2455397
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1470289   0.1342366   0.1598211
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    NA                   NA                0.5454545   0.4738963   0.6170128
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0859508   0.0763332   0.0955684
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1474926   0.1212333   0.1737519
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3839286   0.2903248   0.4775324


### Parameter: RR


birthlen   agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
>=0        6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
>=0        6 months    ki1119695-PROBIT          BELARUS      Maternal             Control           0.7093766   0.5518602   0.9118528
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           0.8580366   0.6450104   1.1414184
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Other                Control           0.5202094   0.4204952   0.6435694
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9575358   0.8302801   1.1042957
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.4924868   0.8882583   2.5077354
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.7734036   1.1700852   2.6878046
>=0        24 months   ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
>=0        24 months   ki1119695-PROBIT          BELARUS      Maternal             Control           0.8974868   0.6036615   1.3343281
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.6470588   0.2718977   1.5398629
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.1624266   0.6941927   1.9464851
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           0.9819915   0.7613267   1.2666143
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9548700   0.9210848   0.9898944
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.0355030   0.8482063   1.2641575
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.9803922   0.8064657   1.1918285
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Other                Control           1.0317460   0.8610590   1.2362683
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Maternal             Control           1.1428571   0.8186386   1.5954812
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.0833333   0.7981770   1.4703645
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.9730162   0.9289723   1.0191483
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.8750000   0.6636615   1.1536377
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0217890   0.7993234   1.3061706
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.9515082   0.7339508   1.2335538
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Maternal             Control           0.5734463   0.3753423   0.8761088
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.0522564   0.8366950   1.3233537
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           1.0264972   0.9659487   1.0908411
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.9305646   0.6670537   1.2981719
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0539349   0.8032661   1.3828277
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           1.0461538   0.6349076   1.7237749
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0349650   0.6818055   1.5710531
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Other                Control           0.9362500   0.7214551   1.2149946
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Maternal             Control           0.8804523   0.6674699   1.1613952
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     VitA                 Control           1.0463867   0.8532312   1.2832691
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Other                Control           0.9278351   0.8135943   1.0581169
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Maternal             Control           0.8530307   0.7627428   0.9540063
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.8836364   0.5365854   1.4551519
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Other                Control           1.0582627   0.6859364   1.6326877
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   LNS                  Control           0.7777778   0.4308622   1.4040181
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Other                Control           0.6538462   0.3619291   1.1812116


### Parameter: PAR


birthlen   agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
>=0        6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0084860   -0.0158429   -0.0011291
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0101826   -0.0298940    0.0095287
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0664058   -0.0924562   -0.0403554
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0019744   -0.0097881    0.0058393
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0422695    0.0122079    0.0723312
>=0        24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0066848   -0.0350775    0.0217079
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0003010   -0.1152241    0.1146221
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0081770   -0.1232473    0.1068933
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0161496   -0.0363869    0.0040876
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0005882   -0.1075290    0.1063525
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0097561   -0.0381271    0.0576393
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Control              NA                 0.0357143   -0.1048471    0.1762757
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0198271   -0.0541500    0.0938042
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0062563   -0.0219322    0.0094195
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0149456   -0.0965942    0.0667030
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0076719   -0.0811721    0.0658284
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0890068   -0.1736844   -0.0043292
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0082769   -0.0284997    0.0450535
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0028513   -0.0061445    0.0118471
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0019476   -0.0539594    0.0578545
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0166667   -0.1590319    0.1923653
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0046052   -0.0220175    0.0128071
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0130647   -0.0453824    0.0192529
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0049524   -0.0170802    0.0269849
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0212121   -0.0729786    0.0305544
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0071316   -0.0137237   -0.0005395
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0006555   -0.0449491    0.0436381
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.1160714   -0.3015687    0.0694258


### Parameter: PAF


birthlen   agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
>=0        6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.1731346   -0.3714526   -0.0034942
>=0        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.1202587   -0.3785135    0.0896139
>=0        6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.3234049   -0.5106305   -0.1593837
>=0        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0228890   -0.1199123    0.0657287
>=0        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.3264590    0.0679122    0.5132889
>=0        24 months   ki1119695-PROBIT          BELARUS      Control              NA                -0.0597072   -0.3662552    0.1780603
>=0        24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0009470   -0.4364040    0.3024979
<-3        6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                -0.0139918   -0.2313200    0.1649780
<-3        6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0214327   -0.0492433    0.0056408
<-3        6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0007547   -0.1478056    0.1274568
[-3--2)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                 0.0160000   -0.0645088    0.0904199
[-3--2)    6 months    ki1119695-PROBIT          BELARUS      Control              NA                 0.0666667   -0.2121572    0.2813547
[-3--2)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0605371   -0.1947863    0.2612984
[-3--2)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0135219   -0.0484518    0.0202442
[-3--2)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0318057   -0.2210781    0.1281287
[-2--1)    6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0259448   -0.3154552    0.1998490
[-2--1)    6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.2740472   -0.6680864    0.0269112
[-2--1)    6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0375254   -0.1445029    0.1906028
[-2--1)    6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                 0.0129871   -0.0282993    0.0526158
[-2--1)    6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0068993   -0.2122940    0.1864606
[-2--1)    24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                 0.0298507   -0.3416504    0.2984837
[-1-0)     6 months    ki1000304b-SAS-CompFeed   INDIA        Control              NA                -0.0317757   -0.1639829    0.0854152
[-1-0)     6 months    ki1119695-PROBIT          BELARUS      Control              NA                -0.0678899   -0.2639775    0.0977776
[-1-0)     6 months    ki1126311-ZVITAMBO        ZIMBABWE     Control              NA                 0.0336829   -0.1283903    0.1724772
[-1-0)     6 months    ki1135781-COHORTS         GUATEMALA    Control              NA                -0.0388889   -0.1423843    0.0552302
[-1-0)     6 months    kiGH5241-JiVitA-3         BANGLADESH   Control              NA                -0.0829729   -0.1695930   -0.0027678
[-1-0)     6 months    kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.0044444   -0.3544520    0.2551167
[-1-0)     24 months   kiGH5241-JiVitA-4         BANGLADESH   Control              NA                -0.3023256   -0.8890553    0.1021693
