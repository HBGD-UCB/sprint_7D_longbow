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

* birthwt
* agecat
* studyid
* country

## Data Summary

birthwt   agecat      studyid                    country                        tr          stunted   n_cell      n
--------  ----------  -------------------------  -----------------------------  ---------  --------  -------  -----
[-2--1)   Birth       ki1000125-AgaKhanUniv      PAKISTAN                       Control           0        3      5
[-2--1)   Birth       ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          0        2      5
[-2--1)   6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           0        7     39
[-2--1)   6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           1        1     39
[-2--1)   6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          0       25     39
[-2--1)   6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          1        6     39
[-1-0)    Birth       ki1000125-AgaKhanUniv      PAKISTAN                       Control           0        3      3
[-1-0)    6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           0        6     11
[-1-0)    6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           1        0     11
[-1-0)    6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          0        4     11
[-1-0)    6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          1        1     11
<-3       Birth       ki1000125-AgaKhanUniv      PAKISTAN                       Control           0        1      1
<-3       6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           0        0      2
<-3       6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           1        1      2
<-3       6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          0        1      2
<-3       6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          1        0      2
>=0       6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control           0        1      5
>=0       6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          0        4      5
>=0       Birth       ki1000125-AgaKhanUniv      PAKISTAN                       Maternal          0        2      2
[-1-0)    6 months    ki1000304-ZnMort           INDIA                          Control           0        5     12
[-1-0)    6 months    ki1000304-ZnMort           INDIA                          Control           1        2     12
[-1-0)    6 months    ki1000304-ZnMort           INDIA                          Zinc              0        4     12
[-1-0)    6 months    ki1000304-ZnMort           INDIA                          Zinc              1        1     12
[-2--1)   24 months   ki1000304-ZnMort           INDIA                          Control           0        2      9
[-2--1)   24 months   ki1000304-ZnMort           INDIA                          Control           1        2      9
[-2--1)   24 months   ki1000304-ZnMort           INDIA                          Zinc              0        3      9
[-2--1)   24 months   ki1000304-ZnMort           INDIA                          Zinc              1        2      9
[-2--1)   6 months    ki1000304-ZnMort           INDIA                          Control           0        4     12
[-2--1)   6 months    ki1000304-ZnMort           INDIA                          Control           1        4     12
[-2--1)   6 months    ki1000304-ZnMort           INDIA                          Zinc              0        1     12
[-2--1)   6 months    ki1000304-ZnMort           INDIA                          Zinc              1        3     12
[-1-0)    24 months   ki1000304-ZnMort           INDIA                          Control           0        1     10
[-1-0)    24 months   ki1000304-ZnMort           INDIA                          Control           1        3     10
[-1-0)    24 months   ki1000304-ZnMort           INDIA                          Zinc              0        4     10
[-1-0)    24 months   ki1000304-ZnMort           INDIA                          Zinc              1        2     10
>=0       24 months   ki1000304-ZnMort           INDIA                          Control           0        3      6
>=0       24 months   ki1000304-ZnMort           INDIA                          Control           1        1      6
>=0       24 months   ki1000304-ZnMort           INDIA                          Zinc              0        1      6
>=0       24 months   ki1000304-ZnMort           INDIA                          Zinc              1        1      6
>=0       6 months    ki1000304-ZnMort           INDIA                          Control           0        1      4
>=0       6 months    ki1000304-ZnMort           INDIA                          Zinc              0        3      4
[-3--2)   6 months    ki1000304-ZnMort           INDIA                          Control           0        1      4
[-3--2)   6 months    ki1000304-ZnMort           INDIA                          Control           1        3      4
<-3       6 months    ki1000304-ZnMort           INDIA                          Control           0        1      2
<-3       6 months    ki1000304-ZnMort           INDIA                          Control           1        1      2
[-3--2)   24 months   ki1000304-ZnMort           INDIA                          Control           0        1      3
[-3--2)   24 months   ki1000304-ZnMort           INDIA                          Control           1        0      3
[-3--2)   24 months   ki1000304-ZnMort           INDIA                          Zinc              0        0      3
[-3--2)   24 months   ki1000304-ZnMort           INDIA                          Zinc              1        2      3
<-3       24 months   ki1000304-ZnMort           INDIA                          Control           0        2      4
<-3       24 months   ki1000304-ZnMort           INDIA                          Control           1        0      4
<-3       24 months   ki1000304-ZnMort           INDIA                          Zinc              0        1      4
<-3       24 months   ki1000304-ZnMort           INDIA                          Zinc              1        1      4
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0       79    209
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1       38    209
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0       67    209
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1       25    209
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0       85    217
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1       16    217
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0       98    217
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1       18    217
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           0       19     52
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           1        8     52
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             0       19     52
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             1        6     52
<-3       Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           1        3      8
<-3       Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             1        5      8
<-3       6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0        2     39
<-3       6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1       13     39
<-3       6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0        1     39
<-3       6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1       23     39
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0       18     82
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1       12     82
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0       29     82
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1       23     82
[-1-0)    Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           0       28     62
[-1-0)    Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           1        2     62
[-1-0)    Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             0       28     62
[-1-0)    Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             1        4     62
>=0       6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0       28     65
>=0       6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1        3     65
>=0       6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0       34     65
>=0       6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1        0     65
[-3--2)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           0        4     18
[-3--2)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           1        4     18
[-3--2)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             0        4     18
[-3--2)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             1        6     18
>=0       Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           0        2      4
>=0       Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             0        2      4
[-2--1)   6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           0        2     19
[-2--1)   6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           1        1     19
[-2--1)   6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0       15     19
[-2--1)   6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        1     19
[-3--2)   6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           0        1      8
[-3--2)   6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           1        1      8
[-3--2)   6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0        2      8
[-3--2)   6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        4      8
[-1-0)    6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           0        5     14
[-1-0)    6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           1        0     14
[-1-0)    6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0        7     14
[-1-0)    6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        2     14
>=0       6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0        4      4
>=0       24 months   ki1017093b-PROVIDE         BANGLADESH                     Other             0        1      1
<-3       6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        1      1
[-2--1)   24 months   ki1017093b-PROVIDE         BANGLADESH                     Other             0        1      1
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0      174    721
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1       10    721
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0      175    721
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       11    721
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      328    721
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       23    721
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0      162    703
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1       18    703
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0      133    703
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       15    703
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      332    703
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       43    703
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0       33    221
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1       13    221
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0       53    221
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       16    221
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0       85    221
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       21    221
<-3       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0        2     14
<-3       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        2     14
<-3       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        3     14
<-3       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        0     14
<-3       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0        4     14
<-3       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        3     14
[-3--2)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0        3     32
[-3--2)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        2     32
[-3--2)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0       11     32
[-3--2)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        2     32
[-3--2)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0       10     32
[-3--2)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        4     32
[-2--1)   24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0        1      2
[-2--1)   24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        1      2
>=0       24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        1      2
>=0       24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        0      2
>=0       24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0        0      2
>=0       24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      2
>=0       Birth       ki1119695-PROBIT           BELARUS                        Control           0     4236   8684
>=0       Birth       ki1119695-PROBIT           BELARUS                        Control           1        2   8684
>=0       Birth       ki1119695-PROBIT           BELARUS                        Maternal          0     4446   8684
>=0       Birth       ki1119695-PROBIT           BELARUS                        Maternal          1        0   8684
>=0       6 months    ki1119695-PROBIT           BELARUS                        Control           0     4296   9065
>=0       6 months    ki1119695-PROBIT           BELARUS                        Control           1      157   9065
>=0       6 months    ki1119695-PROBIT           BELARUS                        Maternal          0     4514   9065
>=0       6 months    ki1119695-PROBIT           BELARUS                        Maternal          1       98   9065
[-1-0)    Birth       ki1119695-PROBIT           BELARUS                        Control           0     2042   4219
[-1-0)    Birth       ki1119695-PROBIT           BELARUS                        Control           1        4   4219
[-1-0)    Birth       ki1119695-PROBIT           BELARUS                        Maternal          0     2172   4219
[-1-0)    Birth       ki1119695-PROBIT           BELARUS                        Maternal          1        1   4219
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Control           0     1930   4419
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Control           1      227   4419
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Maternal          0     2060   4419
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Maternal          1      202   4419
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Control           0      480    981
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Control           1       15    981
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Maternal          0      475    981
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Maternal          1       11    981
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Control           0      370   1016
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Control           1      132   1016
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Maternal          0      406   1016
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Maternal          1      108   1016
>=0       24 months   ki1119695-PROBIT           BELARUS                        Control           0      215    536
>=0       24 months   ki1119695-PROBIT           BELARUS                        Control           1       25    536
>=0       24 months   ki1119695-PROBIT           BELARUS                        Maternal          0      271    536
>=0       24 months   ki1119695-PROBIT           BELARUS                        Maternal          1       25    536
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Control           0       96    261
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Control           1       17    261
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Maternal          0      126    261
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Maternal          1       22    261
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Control           0       16     44
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Control           1        5     44
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Maternal          0       17     44
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Maternal          1        6     44
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           0     1351   5738
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       67   5738
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     4118   5738
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      202   5738
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           0      698   3297
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       98   3297
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     2222   3297
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      279   3297
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           0      796   3171
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       19   3171
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     2332   3171
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1       24   3171
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           0      451   1831
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       30   1831
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     1278   1831
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1       72   1831
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           0      192   1172
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           1      104   1172
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0      562   1172
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      314   1172
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           0      710   3345
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           1      114   3345
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     2190   3345
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      331   3345
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           0      338   1824
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           1      105   1824
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     1029   1824
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      352   1824
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           0       98    598
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       49    598
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0      273    598
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      178    598
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           0       40    404
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       56    404
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0      107    404
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      201    404
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           0       15    199
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       29    199
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0       64    199
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1       91    199
[-3--2)   24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           0        0      7
[-3--2)   24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           1        2      7
[-3--2)   24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0        2      7
[-3--2)   24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1        3      7
[-1-0)    24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           0        2     13
[-1-0)    24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           1        0     13
[-1-0)    24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0        4     13
[-1-0)    24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1        7     13
>=0       24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           0        2      3
>=0       24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           1        1      3
[-2--1)   24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           0        2     14
[-2--1)   24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           1        2     14
[-2--1)   24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0        2     14
[-2--1)   24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1        8     14
>=0       Birth       ki1135781-COHORTS          GUATEMALA                      Control           0      102    226
>=0       Birth       ki1135781-COHORTS          GUATEMALA                      Control           1        1    226
>=0       Birth       ki1135781-COHORTS          GUATEMALA                      Other             0      121    226
>=0       Birth       ki1135781-COHORTS          GUATEMALA                      Other             1        2    226
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Control           0       71    207
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Control           1       24    207
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Other             0       89    207
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Other             1       23    207
[-1-0)    Birth       ki1135781-COHORTS          GUATEMALA                      Control           0      124    269
[-1-0)    Birth       ki1135781-COHORTS          GUATEMALA                      Other             0      145    269
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Control           0       63    245
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Control           1       47    245
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Other             0       95    245
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Other             1       40    245
[-2--1)   Birth       ki1135781-COHORTS          GUATEMALA                      Control           0      109    222
[-2--1)   Birth       ki1135781-COHORTS          GUATEMALA                      Control           1        4    222
[-2--1)   Birth       ki1135781-COHORTS          GUATEMALA                      Other             0       94    222
[-2--1)   Birth       ki1135781-COHORTS          GUATEMALA                      Other             1       15    222
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Control           0       58    224
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Control           1       58    224
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Other             0       47    224
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Other             1       61    224
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Control           0       29     60
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Control           1        9     60
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Other             0       12     60
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Other             1       10     60
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Control           0        8     58
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Control           1       28     58
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Other             0        8     58
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Other             1       14     58
[-1-0)    24 months   ki1135781-COHORTS          GUATEMALA                      Control           0        2     11
[-1-0)    24 months   ki1135781-COHORTS          GUATEMALA                      Control           1        3     11
[-1-0)    24 months   ki1135781-COHORTS          GUATEMALA                      Other             0        1     11
[-1-0)    24 months   ki1135781-COHORTS          GUATEMALA                      Other             1        5     11
>=0       24 months   ki1135781-COHORTS          GUATEMALA                      Control           0        2     11
>=0       24 months   ki1135781-COHORTS          GUATEMALA                      Control           1        4     11
>=0       24 months   ki1135781-COHORTS          GUATEMALA                      Other             0        5     11
>=0       24 months   ki1135781-COHORTS          GUATEMALA                      Other             1        0     11
<-3       6 months    ki1135781-COHORTS          GUATEMALA                      Control           1        6     10
<-3       6 months    ki1135781-COHORTS          GUATEMALA                      Other             1        4     10
[-3--2)   24 months   ki1135781-COHORTS          GUATEMALA                      Control           1        2      2
[-2--1)   24 months   ki1135781-COHORTS          GUATEMALA                      Control           0        0      9
[-2--1)   24 months   ki1135781-COHORTS          GUATEMALA                      Control           1        5      9
[-2--1)   24 months   ki1135781-COHORTS          GUATEMALA                      Other             0        1      9
[-2--1)   24 months   ki1135781-COHORTS          GUATEMALA                      Other             1        3      9
<-3       Birth       ki1135781-COHORTS          GUATEMALA                      Control           0        2      7
<-3       Birth       ki1135781-COHORTS          GUATEMALA                      Control           1        3      7
<-3       Birth       ki1135781-COHORTS          GUATEMALA                      Other             0        0      7
<-3       Birth       ki1135781-COHORTS          GUATEMALA                      Other             1        2      7
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0      133    439
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       28    439
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0      230    439
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       48    439
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       58    246
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        9    246
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0      164    246
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       15    246
<-3       Birth       ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        1      1
<-3       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        3     23
<-3       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        5     23
<-3       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        3     23
<-3       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       12     23
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       63    238
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       27    238
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       99    238
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       49    238
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       10     68
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       10     68
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       24     68
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       24     68
[-1-0)    24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        2     28
[-1-0)    24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        2     28
[-1-0)    24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       16     28
[-1-0)    24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        8     28
>=0       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        1     17
>=0       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        3     17
>=0       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        9     17
>=0       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        4     17
[-2--1)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        1     11
[-2--1)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        0     11
[-2--1)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        5     11
[-2--1)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        5     11
[-3--2)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        0      6
[-3--2)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        2      6
[-3--2)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        2      6
[-3--2)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        2      6
<-3       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        1      2
<-3       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        1      2
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0     3251   7898
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1      651   7898
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     3334   7898
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      662   7898
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0     2407   6082
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1      616   6082
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     2480   6082
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      579   6082
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0      974   4936
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1     1593   4936
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      932   4936
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1     1437   4936
>=0       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0      282    654
>=0       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1        0    654
>=0       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      370    654
>=0       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        2    654
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0      819   1965
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1       98   1965
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      934   1965
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      114   1965
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0     1116   3605
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1      769   3605
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     1033   3605
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      687   3605
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0       77   2017
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1     1035   2017
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0       47   2017
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      858   2017
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0      239   1432
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1      517   1432
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      217   1432
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      459   1432
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0     1835   4091
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1       41   4091
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     2172   4091
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1       43   4091
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0     1515   3600
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1      165   3600
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     1734   3600
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      186   3600
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        7     34
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        7     34
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0       11     34
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        9     34
[-3--2)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        1      3
[-3--2)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        1      3
[-3--2)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        0      3
[-3--2)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        1      3
[-2--1)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        2      8
[-2--1)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        2      8
[-2--1)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        0      8
[-2--1)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        4      8
<-3       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        2     12
<-3       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        3     12
<-3       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        1     12
<-3       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        6     12
[-1-0)    24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        1      1
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           0      231    945
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           1       27    945
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               0      202    945
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       33    945
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             0      367    945
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             1       85    945
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           0       67    334
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           1       26    334
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       73    334
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       22    334
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             0      113    334
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             1       33    334
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           0      239   1218
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           1       68   1218
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               0      269   1218
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       86   1218
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             0      418   1218
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             1      138   1218
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           0       19    231
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           1       42    231
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       20    231
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       39    231
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             0       24    231
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             1       87    231
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           0      238   1008
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           1       43   1008
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               0      239   1008
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       32   1008
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             0      395   1008
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             1       61   1008
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           0       14    140
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           1       18    140
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       16    140
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       23    140
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             0       42    140
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             1       27    140
[-1-0)    Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           0       64    234
[-1-0)    Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           1        1    234
[-1-0)    Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       59    234
[-1-0)    Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               1        1    234
[-1-0)    Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             0      107    234
[-1-0)    Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             1        2    234
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           0       74    604
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           1       63    604
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               0      105    604
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       72    604
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             0      165    604
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             1      125    604
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           0       16    123
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           1        7    123
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       24    123
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       11    123
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             0       40    123
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             1       25    123
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           0       25    132
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           1       15    132
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       22    132
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               1        6    132
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             0       38    132
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             1       26    132
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           0       12    155
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           1       22    155
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       11    155
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       36    155
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             0       28    155
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             1       46    155
<-3       Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           0        0     59
<-3       Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           1       20     59
<-3       Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               0        0     59
<-3       Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       15     59
<-3       Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             0        1     59
<-3       Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             1       23     59
>=0       Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           0       12     40
>=0       Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       10     40
>=0       Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             0       18     40
<-3       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           0        2     21
<-3       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           1        5     21
<-3       24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               0        3     21
<-3       24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               1        3     21
<-3       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             0        1     21
<-3       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             1        7     21
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           0        8     66
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           1       13     66
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               0        9     66
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       13     66
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             0        6     66
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             1       17     66
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0      133    297
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       28    297
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0      116    297
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       20    297
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       58    160
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1        9    160
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       86    160
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1        7    160
<-3       Birth       iLiNS_DYADM_LNS            MALAWI                         LNS               1        1      1
<-3       6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0        3     16
<-3       6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1        5     16
<-3       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0        2     16
<-3       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1        6     16
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       63    162
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       27    162
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       46    162
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       26    162
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       10     43
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       10     43
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0        9     43
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       14     43
[-1-0)    24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        2     14
[-1-0)    24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        2     14
[-1-0)    24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        8     14
[-1-0)    24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        2     14
>=0       24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        1      9
>=0       24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        3      9
>=0       24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        4      9
>=0       24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        1      9
[-2--1)   24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        1      6
[-2--1)   24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        0      6
[-2--1)   24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        2      6
[-2--1)   24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        3      6
[-3--2)   24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        0      4
[-3--2)   24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        2      4
[-3--2)   24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        1      4
[-3--2)   24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        1      4
<-3       24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        1      1


The following strata were considered:

* birthwt: [-1-0), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: [-1-0), agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-1-0), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-1-0), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-1-0), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-1-0), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-1-0), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-1-0), agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-1-0), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: [-1-0), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-1-0), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-1-0), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-1-0), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-1-0), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-1-0), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-1-0), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-1-0), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-1-0), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-1-0), agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-1-0), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-1-0), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-1-0), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-1-0), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-1-0), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-1-0), agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-2--1), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: [-2--1), agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-2--1), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-2--1), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-2--1), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-2--1), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-2--1), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-2--1), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-2--1), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-2--1), agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-2--1), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: [-2--1), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-2--1), agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-2--1), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-2--1), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-2--1), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-2--1), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-2--1), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-2--1), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-2--1), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-2--1), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-2--1), agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-2--1), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-2--1), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-2--1), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-2--1), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-2--1), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-2--1), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-2--1), agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-3--2), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: [-3--2), agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-3--2), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-3--2), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-3--2), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-3--2), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-3--2), agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-3--2), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: [-3--2), agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-3--2), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-3--2), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-3--2), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-3--2), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-3--2), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-3--2), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-3--2), agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: [-3--2), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-3--2), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-3--2), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-3--2), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-3--2), agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: <-3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: <-3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: <-3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: <-3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: <-3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: <-3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: <-3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: <-3, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: <-3, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: <-3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: <-3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: <-3, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: <-3, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: <-3, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: <-3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: <-3, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: <-3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: >=0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: >=0, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: >=0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: >=0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: >=0, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: >=0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: >=0, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: >=0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: >=0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: >=0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: >=0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: >=0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: >=0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: >=0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: >=0, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: >=0, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: >=0, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: >=0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: >=0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: >=0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: >=0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: >=0, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: >=0, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: >=0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: >=0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* birthwt: [-2--1), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-2--1), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: <-3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: >=0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* birthwt: [-1-0), agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-2--1), agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-2--1), agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-1-0), agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: >=0, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: >=0, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-3--2), agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: [-3--2), agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* birthwt: <-3, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: <-3, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-1-0), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-3--2), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: >=0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* birthwt: [-2--1), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-3--2), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-1-0), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: >=0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: >=0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: <-3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: [-2--1), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* birthwt: <-3, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-3--2), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: [-2--1), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: >=0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* birthwt: >=0, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-1-0), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* birthwt: [-3--2), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-1-0), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: >=0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: [-2--1), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* birthwt: >=0, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-2--1), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-1-0), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: >=0, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: <-3, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-3--2), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: [-2--1), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: <-3, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* birthwt: <-3, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-1-0), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: >=0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-2--1), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: [-3--2), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: <-3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* birthwt: >=0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-3--2), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-2--1), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: <-3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-1-0), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* birthwt: [-1-0), agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: <-3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: <-3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* birthwt: <-3, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: <-3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: [-1-0), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: >=0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: [-2--1), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: [-3--2), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* birthwt: <-3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr          0
##   Control  12
##   LNS      10
##   Maternal  0
##   Other    18
##   VitA      0
##   Zinc      0
##           stunted
## tr           0
##   Control  124
##   LNS        0
##   Maternal   0
##   Other    145
##   VitA       0
##   Zinc       0
```




# Results Detail

## Results Plots
![](/tmp/31952687-713c-47f1-9cec-6adeacd43339/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/31952687-713c-47f1-9cec-6adeacd43339/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/31952687-713c-47f1-9cec-6adeacd43339/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/31952687-713c-47f1-9cec-6adeacd43339/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


birthwt   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.0233129   0.0206499   0.0259759
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.0101868   0.0071737   0.0131998
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.1343284   0.1000289   0.1686278
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.0752688   0.0440047   0.1065329
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0543478   0.0215687   0.0871270
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0591398   0.0252167   0.0930629
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0655271   0.0396217   0.0914324
>=0       6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0352571   0.0266473   0.0438670
>=0       6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0212489   0.0169432   0.0255547
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.0623701   0.0566913   0.0680488
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.0533333   0.0444935   0.0621731
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.2526316   0.2124338   0.2928294
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.2053571   0.1647802   0.2459341
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.1343284   0.1120442   0.1566125
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.0837989   0.0542025   0.1133953
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1068702   0.0935301   0.1202104
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.1087786   0.0974309   0.1201264
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.1046512   0.0667270   0.1425753
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.1404255   0.0849357   0.1959154
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.1880531   0.1487455   0.2273606
>=0       24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1041667   0.0654376   0.1428958
>=0       24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0844595   0.0544582   0.1144607
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.5000000   0.3886815   0.6113185
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.4500000   0.3223525   0.5776475
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3750000   0.2265860   0.5234140
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2142857   0.0427597   0.3858117
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.4062500   0.2853585   0.5271415
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.5833333   0.5598698   0.6067969
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.6525974   0.6120074   0.6931874
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.9307554   0.9211981   0.9403127
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.9480663   0.9391138   0.9570188
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.6590909   0.6280448   0.6901370
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.5870968   0.5265719   0.6476216
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.6838624   0.6640549   0.7036700
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.6789941   0.6576230   0.7003651
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.6885246   0.5700636   0.8069855
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.6610169   0.5306562   0.7913777
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.7837838   0.7047353   0.8628323
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.3513514   0.3376101   0.3650926
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.3584475   0.3347017   0.3821933
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Control              NA                0.2368421   0.1505095   0.3231747
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Other                NA                0.4545455   0.3776101   0.5314808
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.6205688   0.6095110   0.6316266
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.6065851   0.5940785   0.6190917
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.6470588   0.4843866   0.8097310
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.7659574   0.6402347   0.8916802
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.6216216   0.5055731   0.7376702
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.5000000   0.3968726   0.6031274
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.6086957   0.5007487   0.7166427
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.4000000   0.2878971   0.5121029
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.4423077   0.4137228   0.4708926
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.3333333   0.3145850   0.3520817
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.3946785   0.3606288   0.4287282
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7777778   0.6927483   0.8628072
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.6363636   0.5594516   0.7132757
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.5000000   0.4350706   0.5649294
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.5000000   0.3994118   0.6005882
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4079576   0.3949018   0.4210133
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.3994186   0.3856485   0.4131887
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.4598540   0.3581167   0.5615913
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.4067797   0.3302021   0.4833572
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.4310345   0.3684199   0.4936491
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.6190476   0.4148568   0.8232384
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.5909091   0.3739465   0.8078717
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.7391304   0.5511024   0.9271584
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2962963   0.2249113   0.3676813
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.2400000   0.1618135   0.3181865
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Control              NA                0.0303030   0.0190847   0.0415214
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0226337   0.0125396   0.0327279
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1383495   0.1325414   0.1441576
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.1312971   0.1213598   0.1412344
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1668375   0.1599693   0.1737057
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.1656657   0.1589477   0.1723837
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2795699   0.1866870   0.3724528
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2315789   0.1394634   0.3236945
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2260274   0.1507473   0.3013075
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.3000000   0.2472395   0.3527605
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.3611111   0.3116485   0.4105737
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.3247863   0.3014380   0.3481347
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.2717391   0.2072736   0.3362047
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2826087   0.1521945   0.4130229
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2318841   0.1320779   0.3316902
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1981132   0.1220643   0.2741622
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.2629482   0.2329712   0.2929253
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.2101167   0.1862607   0.2339728
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.2370203   0.2273999   0.2466407
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.2548878   0.2374807   0.2722948
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.5000000   0.4527751   0.5472249
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.5648148   0.5196320   0.6099977
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3000000   0.2641230   0.3358770
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.3310811   0.2838345   0.3783276
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2037711   0.1953043   0.2122379
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.1892775   0.1819096   0.1966454
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2214984   0.1729267   0.2700701
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2422535   0.1938244   0.2906827
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2482014   0.2051891   0.2912138
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.2380952   0.1107313   0.3654592
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.2608696   0.1962303   0.3255088
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.5625000   0.3734146   0.7515854
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.5897436   0.4304969   0.7489902
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.3913043   0.2709759   0.5116328
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.0472496   0.0445203   0.0499790
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.0467593   0.0420190   0.0514995
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.0218550   0.0185298   0.0251802
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.0194131   0.0158198   0.0230063
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.1739130   0.1421212   0.2057049
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.1470588   0.1197566   0.1743611
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.1584158   0.0979610   0.2188707
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.1551724   0.1322464   0.1780985
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1000000   0.0561427   0.1438573
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1013514   0.0526954   0.1500073
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1146667   0.0823956   0.1469378
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.1052388   0.0875197   0.1229578
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0893015   0.0765947   0.1020083
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1231156   0.1176040   0.1286272
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.1115554   0.1021946   0.1209162
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.4272727   0.3856823   0.4688631
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.2962963   0.2537663   0.3388263
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.1739130   0.1524164   0.1954097
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.1726619   0.1444949   0.2008289
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.0982143   0.0905594   0.1058691
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.0968750   0.0891307   0.1046193
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.1530249   0.1045065   0.2015433
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.1180812   0.0759440   0.1602183
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.1337719   0.0944974   0.1730465
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1504425   0.0924295   0.2084554
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.1486486   0.0775106   0.2197867
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3043478   0.1009603   0.5077353
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.3142857   0.1519043   0.4766671
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.3846154   0.2663348   0.5028960


### Parameter: E(Y)


birthwt   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0135604   0.0095342   0.0175865
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.1000000   0.0533694   0.1466306
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0610264   0.0435413   0.0785114
>=0       6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0281302   0.0179639   0.0382964
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0557073   0.0451990   0.0662155
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2270531   0.1698456   0.2842607
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0975610   0.0604064   0.1347155
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1078880   0.0903734   0.1254027
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1534392   0.1277137   0.1791646
>=0       24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0932836   0.0447049   0.1418623
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4705882   0.3009387   0.6402378
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3560606   0.2724773   0.4396439
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6361386   0.5891666   0.6831107
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.9385226   0.9254100   0.9516351
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6030151   0.5348650   0.6711652
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6815642   0.6524264   0.7107021
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7272727   0.6671521   0.7873934
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3566553   0.3292196   0.3840910
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3166667   0.1979697   0.4353636
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6138574   0.5971386   0.6305762
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6709677   0.5940584   0.7478770
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.5581395   0.4079508   0.7083283
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4268293   0.3054550   0.5482035
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3795987   0.3406709   0.4185264
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7241379   0.6081087   0.8401671
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.5000000   0.3802761   0.6197239
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4038835   0.3848977   0.4228693
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4304636   0.3863428   0.4745844
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6515152   0.5332806   0.7697497
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2692308   0.1622518   0.3762097
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0265036   0.0112963   0.0417108
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1330344   0.1215238   0.1445450
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1662446   0.1566346   0.1758547
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2425150   0.1931365   0.2918935
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.3271605   0.2546883   0.3996327
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3014354   0.2293631   0.3735077
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2262443   0.1709568   0.2815319
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2362205   0.1946835   0.2777574
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2505482   0.2306565   0.2704400
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5312500   0.4657538   0.5967461
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3193277   0.2599722   0.3786833
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1964814   0.1852344   0.2077284
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2397373   0.2125581   0.2669165
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2500000   0.1072481   0.3927519
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4857143   0.3992575   0.5721711
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0468804   0.0414106   0.0523503
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0205329   0.0156377   0.0254280
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.1616162   0.1196822   0.2035501
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1566820   0.0914532   0.2219108
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1081081   0.0851379   0.1310783
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0970808   0.0742997   0.1198619
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1143464   0.1034822   0.1252106
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3551020   0.2950573   0.4151468
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.1731207   0.1376878   0.2085536
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0975000   0.0866114   0.1083886
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1349206   0.1098582   0.1599831
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1494253   0.0581187   0.2407319
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3495935   0.2629453   0.4362417


### Parameter: RR


birthwt   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.4369583   0.3182279   0.5999868
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.5603345   0.3441097   0.9124264
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0881720   0.4733848   2.5013866
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2056980   0.5861985   2.4798900
>=0       6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=0       6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.6026842   0.4391068   0.8271979
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.8551111   0.7077728   1.0331212
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8128720   0.6307312   1.0476110
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           0.6238361   0.4222865   0.9215817
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.0178571   0.8650665   1.1976341
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.3418440   0.7849352   2.2938776
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.7969518   1.1824921   2.7307039
>=0       24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=0       24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.8108108   0.4829103   1.3613589
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9000000   0.6275334   1.2907680
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.5714286   0.2339338   1.3958251
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.0833333   0.6601802   1.7777133
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           1.1187384   1.0388673   1.2047502
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.0185988   1.0044878   1.0329080
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.8907675   0.7953164   0.9976744
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9928811   0.9513084   1.0362706
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.9600484   0.7390257   1.2471731
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.1383526   0.9325135   1.3896278
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           1.0201967   0.9446564   1.1017776
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Other                Control           1.9191919   1.2840371   2.8685291
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9774663   0.9511917   1.0044667
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.1837524   0.8767267   1.5982971
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9606880   0.7024233   1.3139105
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.2173913   0.9274627   1.5979528
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.1057692   0.8289713   1.4749915
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           1.1840355   1.0681640   1.3124763
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8181818   0.6951409   0.9630011
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.0000000   0.7870624   1.2705472
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9790690   0.9340830   1.0262216
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.8845843   0.6615629   1.1827892
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9373290   0.7193624   1.2213392
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.9545455   0.5826961   1.5636916
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.1939799   0.7871725   1.8110237
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.8100000   0.5398991   1.2152271
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Maternal             Control           0.7469136   0.4180922   1.3343464
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.9490247   0.8703418   1.0348209
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9929761   0.9372293   1.0520387
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.8283401   0.4933136   1.3908948
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.8084826   0.5051237   1.2940280
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.2037037   0.9631826   1.5042865
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.8366705   0.6529993   1.0720034
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8205128   0.4365459   1.5422006
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.7010160   0.3846284   1.2776575
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.7990803   0.6813548   0.9371466
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           1.0753836   0.9932561   1.1643019
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           1.1296296   0.9981173   1.2784701
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.1036036   0.9161202   1.3294554
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9288734   0.8774566   0.9833031
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0937034   0.8128340   1.4716253
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.1205565   0.8473601   1.4818339
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           1.0956522   0.6090799   1.9709299
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0484330   0.6806952   1.6148370
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.6956522   0.4409851   1.0973885
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.9896213   0.8806362   1.1120942
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8882674   0.6990330   1.1287291
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.8455882   0.6516354   1.0972692
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9795259   0.6521415   1.4712618
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0135135   0.5289719   1.9418981
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1466666   0.6809633   1.9308596
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.8485610   0.6821135   1.0556246
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.9061029   0.8238974   0.9965105
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.6934594   0.5830435   0.8247857
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           0.9928057   0.8090510   1.2182956
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9863636   0.8821610   1.1028749
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.7716468   0.4787459   1.2437469
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.8741840   0.5674617   1.3466947
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.9880763   0.5327095   1.8326963
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0326531   0.4436901   2.4034170
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.2637363   0.6056385   2.6369348


### Parameter: PAR


birthwt   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0097525   -0.0127721   -0.0067329
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0343284   -0.0659188   -0.0027379
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0066785   -0.0221622    0.0355192
>=0       6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0071270   -0.0122708   -0.0019831
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0066628   -0.0155045    0.0021789
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0255784   -0.0662827    0.0151258
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0367674   -0.0664975   -0.0070373
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0010178   -0.0103293    0.0123649
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0487880    0.0126629    0.0849131
>=0       24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0108831   -0.0404224    0.0186562
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0294118   -0.1574319    0.0986084
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0189394   -0.1443219    0.1064431
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0528053    0.0121133    0.0934972
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0077672   -0.0012102    0.0167445
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0560758   -0.1167436    0.0045919
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0022982   -0.0236695    0.0190731
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0387481   -0.0625212    0.1400174
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0053039   -0.0184425    0.0290504
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0798246   -0.0016349    0.1612840
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0067114   -0.0192449    0.0058221
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0239089   -0.1202844    0.1681022
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0581395   -0.0510456    0.1673247
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0268293   -0.0054416    0.0591001
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0462653    0.0121498    0.0803809
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0536398   -0.1325877    0.0253080
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0000000   -0.1005882    0.1005882
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0040741   -0.0178506    0.0097025
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0293904   -0.1165985    0.0578176
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0324675   -0.1381066    0.2030417
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0270655   -0.1063510    0.0522200
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Control              NA                -0.0037995   -0.0139530    0.0063541
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0053151   -0.0152529    0.0046227
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0005929   -0.0073114    0.0061256
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0370549   -0.1163316    0.0422217
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0271605   -0.0225240    0.0768450
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0233509   -0.0914428    0.0447409
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0563644   -0.1703134    0.0575847
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0267277   -0.0534603    0.0000048
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0135279   -0.0038826    0.0309385
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0312500   -0.0141324    0.0766324
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0193277   -0.0279578    0.0666132
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0072897   -0.0147013    0.0001220
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0182389   -0.0253104    0.0617882
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0119048   -0.0517995    0.0756090
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0767857   -0.2423149    0.0887435
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0003692   -0.0051095    0.0043711
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0013221   -0.0049151    0.0022708
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0122969   -0.0396417    0.0150479
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0017338   -0.0248881    0.0214205
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0081081   -0.0301817    0.0463979
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0081580   -0.0214527    0.0051368
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0087692   -0.0181315    0.0005931
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0721707   -0.1154791   -0.0288623
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0007923   -0.0289594    0.0273748
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0007143   -0.0084590    0.0070304
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0181043   -0.0589661    0.0227575
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0010172   -0.0721187    0.0700843
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0452457   -0.1377497    0.2282410


### Parameter: PAF


birthwt   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=0       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.7191896   -1.1797372   -0.3559492
>=0       6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.3432836   -0.8644329    0.0321932
>=0       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1094368   -0.5124547    0.4756188
>=0       6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.2533564   -0.5230071   -0.0314478
>=0       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.1196038   -0.3126724    0.0450682
>=0       6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1126540   -0.3323096    0.0707874
>=0       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.3768657   -0.8792831   -0.0087671
>=0       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0094340   -0.1004314    0.1083305
>=0       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.3179631    0.0498405    0.5104250
>=0       24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.1166667   -0.5368411    0.1886315
>=0       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0625000   -0.3951795    0.1908523
>=0       24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0531915   -0.4722219    0.2465726
<-3       Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0830091    0.0223500    0.1399046
<-3       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0082759   -0.0012562    0.0177173
<-3       6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0929924   -0.2087925    0.0117142
<-3       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0033719   -0.0353325    0.0276021
<-3       6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0532787   -0.0968768    0.1828788
[-3--2)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0148713   -0.0529550    0.0783286
[-3--2)   Birth       ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.2520776    0.0171485    0.4308520
[-3--2)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0109331   -0.0317872    0.0094994
[-3--2)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0356335   -0.2050895    0.2282708
[-3--2)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.1041667   -0.0906772    0.2642027
[-3--2)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0628571   -0.0100509    0.1305025
[-3--2)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.1218796    0.0390547    0.1975657
[-3--2)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0740741   -0.1981546    0.0371567
[-3--2)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0000000   -0.2228404    0.1822318
[-3--2)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0100872   -0.0451377    0.0237878
[-3--2)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0682762   -0.2906188    0.1157620
[-3--2)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0498339   -0.2514000    0.2785555
[-2--1)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.1005291   -0.4790612    0.1811263
[-2--1)   Birth       ki1119695-PROBIT           BELARUS                        Control              NA                -0.1433566   -0.6841531    0.2237853
[-2--1)   Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0399531   -0.1206349    0.0349199
[-2--1)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0035664   -0.0449548    0.0361826
[-2--1)   Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1527944   -0.5332124    0.1332350
[-2--1)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0830189   -0.0681175    0.2127697
[-2--1)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0774657   -0.3506619    0.1404715
[-2--1)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.2491304   -0.8679792    0.1646979
[-2--1)   6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.1131474   -0.2485525    0.0075730
[-2--1)   6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0539933   -0.0141175    0.1175297
[-2--1)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0588235   -0.0252961    0.1360417
[-2--1)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0605263   -0.0896098    0.1899753
[-2--1)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0371011   -0.0770018    0.0013215
[-2--1)   6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0760787   -0.1236866    0.2403304
[-2--1)   24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0476190   -0.2301588    0.2626728
[-2--1)   24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1580882   -0.5547299    0.1373625
[-1-0)    Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0078754   -0.1151171    0.0890529
[-1-0)    Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0643910   -0.2682771    0.1067186
[-1-0)    6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0760870   -0.2751933    0.0919313
[-1-0)    6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0110658   -0.1722685    0.1279693
[-1-0)    6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0750000   -0.3561304    0.3690688
[-1-0)    6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0840328   -0.2450852    0.0561874
[-1-0)    6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0766898   -0.1686393    0.0080250
[-1-0)    6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.2032393   -0.3614792   -0.0633910
[-1-0)    6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0045767   -0.1820724    0.1462669
[-1-0)    6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0073260   -0.0906066    0.0695951
[-1-0)    6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.1341846   -0.4817770    0.1318702
[-1-0)    24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0068074   -0.6202780    0.3743907
[-1-0)    24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.1294237   -0.5907872    0.5235672
