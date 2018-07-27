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

* gagebrth
* agecat
* studyid
* country

## Data Summary

gagebrth    agecat      studyid                    country                        tr          stunted   n_cell       n
----------  ----------  -------------------------  -----------------------------  ---------  --------  -------  ------
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0      158     478
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1       65     478
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0      177     478
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1       78     478
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0       42     117
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1       16     117
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0       48     117
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1       11     117
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           0       41     117
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           1       14     117
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             0       44     117
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             1       18     117
[259-273)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           0       12      27
[259-273)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Control           1        3      27
[259-273)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             0        9      27
[259-273)   Birth       ki1000304b-SAS-CompFeed    INDIA                          Other             1        3      27
[273-287)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0       11      19
[273-287)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           1        1      19
[273-287)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             0        6      19
[273-287)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other             1        1      19
>=287       6 months    ki1000304b-SAS-CompFeed    INDIA                          Control           0        1       1
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0       88     407
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        5     407
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0      100     407
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       11     407
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      187     407
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       16     407
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0      136     625
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1       19     625
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0      136     625
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       12     625
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      286     625
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       36     625
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0       79     339
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1       11     339
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0       64     339
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       13     339
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      151     339
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       21     339
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0       51     229
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        8     229
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0       46     229
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        7     229
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      102     229
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       15     229
[273-287)   24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        2       3
[273-287)   24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        0       3
[273-287)   24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0        0       3
[273-287)   24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       3
[259-273)   24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0        1       1
[273-287)   Birth       ki1119695-PROBIT           BELARUS                        Control           0     4852   10192
[273-287)   Birth       ki1119695-PROBIT           BELARUS                        Control           1        6   10192
[273-287)   Birth       ki1119695-PROBIT           BELARUS                        Maternal          0     5331   10192
[273-287)   Birth       ki1119695-PROBIT           BELARUS                        Maternal          1        3   10192
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Control           0     4744   10572
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Control           1      336   10572
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Maternal          0     5189   10572
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Maternal          1      303   10572
>=287       Birth       ki1119695-PROBIT           BELARUS                        Control           0      518    1110
>=287       Birth       ki1119695-PROBIT           BELARUS                        Maternal          0      592    1110
>=287       6 months    ki1119695-PROBIT           BELARUS                        Control           0      523    1207
>=287       6 months    ki1119695-PROBIT           BELARUS                        Control           1       38    1207
>=287       6 months    ki1119695-PROBIT           BELARUS                        Maternal          0      626    1207
>=287       6 months    ki1119695-PROBIT           BELARUS                        Maternal          1       20    1207
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Control           0     1329    2721
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Control           1      142    2721
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Maternal          0     1165    2721
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Maternal          1       85    2721
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Control           0     1388    2582
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Control           1       15    2582
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Maternal          0     1170    2582
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Maternal          1        9    2582
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Control           0      212     596
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Control           1       32     596
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Maternal          0      314     596
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Maternal          1       38     596
>=287       24 months   ki1119695-PROBIT           BELARUS                        Control           0       15      55
>=287       24 months   ki1119695-PROBIT           BELARUS                        Control           1        1      55
>=287       24 months   ki1119695-PROBIT           BELARUS                        Maternal          0       34      55
>=287       24 months   ki1119695-PROBIT           BELARUS                        Maternal          1        5      55
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Control           0      100     190
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Control           1       14     190
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Maternal          0       66     190
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Maternal          1       10     190
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Control           0       76     282
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Control           1       55     282
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Other             0       90     282
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Other             1       61     282
[259-273)   Birth       ki1135781-COHORTS          GUATEMALA                      Control           0       44      90
[259-273)   Birth       ki1135781-COHORTS          GUATEMALA                      Control           1        2      90
[259-273)   Birth       ki1135781-COHORTS          GUATEMALA                      Other             0       39      90
[259-273)   Birth       ki1135781-COHORTS          GUATEMALA                      Other             1        5      90
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Control           0       26     106
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Control           1       31     106
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Other             0       25     106
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Other             1       24     106
[273-287)   Birth       ki1135781-COHORTS          GUATEMALA                      Control           0      110     250
[273-287)   Birth       ki1135781-COHORTS          GUATEMALA                      Control           1        4     250
[273-287)   Birth       ki1135781-COHORTS          GUATEMALA                      Other             0      128     250
[273-287)   Birth       ki1135781-COHORTS          GUATEMALA                      Other             1        8     250
>=287       Birth       ki1135781-COHORTS          GUATEMALA                      Control           0       80     201
>=287       Birth       ki1135781-COHORTS          GUATEMALA                      Control           1        1     201
>=287       Birth       ki1135781-COHORTS          GUATEMALA                      Other             0      115     201
>=287       Birth       ki1135781-COHORTS          GUATEMALA                      Other             1        5     201
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Control           0       59     221
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Control           1       40     221
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Other             0       87     221
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Other             1       35     221
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Control           0       44      76
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Control           1        5      76
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Other             0       22      76
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Other             1        5      76
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Control           0       20      85
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Control           1       32      85
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Other             0       15      85
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Other             1       18      85
>=287       24 months   ki1135781-COHORTS          GUATEMALA                      Control           0        2      13
>=287       24 months   ki1135781-COHORTS          GUATEMALA                      Control           1        7      13
>=287       24 months   ki1135781-COHORTS          GUATEMALA                      Other             0        0      13
>=287       24 months   ki1135781-COHORTS          GUATEMALA                      Other             1        4      13
[273-287)   24 months   ki1135781-COHORTS          GUATEMALA                      Control           0        1      21
[273-287)   24 months   ki1135781-COHORTS          GUATEMALA                      Control           1        9      21
[273-287)   24 months   ki1135781-COHORTS          GUATEMALA                      Other             0        6      21
[273-287)   24 months   ki1135781-COHORTS          GUATEMALA                      Other             1        5      21
[259-273)   24 months   ki1135781-COHORTS          GUATEMALA                      Control           0        1       6
[259-273)   24 months   ki1135781-COHORTS          GUATEMALA                      Control           1        3       6
[259-273)   24 months   ki1135781-COHORTS          GUATEMALA                      Other             0        1       6
[259-273)   24 months   ki1135781-COHORTS          GUATEMALA                      Other             1        1       6
<259        24 months   ki1135781-COHORTS          GUATEMALA                      Control           0        1       2
<259        24 months   ki1135781-COHORTS          GUATEMALA                      Control           1        1       2
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       55     209
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        8     209
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0      125     209
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       21     209
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0      133     505
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       39     505
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0      267     505
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       66     505
[273-287)   Birth       ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        1       1
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       65     247
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       25     247
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0      112     247
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       45     247
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       16      68
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       10      68
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       23      68
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       19      68
>=287       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        1      11
>=287       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        0      11
>=287       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        8      11
>=287       24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        2      11
[259-273)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        3      14
[259-273)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        2      14
[259-273)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        5      14
[259-273)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        4      14
[273-287)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        1      35
[273-287)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        4      35
[273-287)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       17      35
[273-287)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       13      35
<259        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        0       5
<259        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        1       5
<259        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        3       5
<259        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        1       5
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0     1294    3610
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1      350    3610
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     1587    3610
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      379    3610
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0      951    2556
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1      254    2556
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     1103    2556
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      248    2556
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0     2389    6437
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1      774    6437
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     2502    6437
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      772    6437
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0     1503    4820
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1      931    4820
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     1563    4820
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      823    4820
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0     1151    3260
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1      482    3260
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     1195    3260
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      432    3260
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0      879    3567
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1     1053    3567
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      808    3567
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      827    3567
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0      758    2246
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1      446    2246
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      678    2246
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      364    2246
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0     1668    4394
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1      491    4394
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     1732    4394
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1      503    4394
>=287       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        1       4
>=287       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        1       4
>=287       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        1       4
>=287       24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        1       4
<259        24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        1       9
<259        24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        3       9
<259        24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        0       9
<259        24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        5       9
[259-273)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        1       4
[259-273)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        0       4
[259-273)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        0       4
[259-273)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        3       4
[273-287)   24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        1       1
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0      133     329
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       39     329
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0      122     329
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       35     329
[273-287)   Birth       iLiNS_DYADM_LNS            MALAWI                         LNS               1        1       1
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       65     173
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       25     173
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       62     173
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       21     173
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       16      44
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       10      44
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0        8      44
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       10      44
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       55     137
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1        8     137
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       67     137
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1        7     137
>=287       24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        1       5
>=287       24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        4       5
[259-273)   24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        3       9
[259-273)   24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        2       9
[259-273)   24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        3       9
[259-273)   24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        1       9
[273-287)   24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        1      19
[273-287)   24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        4      19
[273-287)   24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        8      19
[273-287)   24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        6      19
<259        24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        1       2
<259        24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        1       2


The following strata were considered:

* gagebrth: [259-273), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [259-273), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [259-273), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [259-273), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [259-273), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [259-273), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [259-273), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [259-273), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [259-273), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [273-287), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [273-287), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [273-287), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [273-287), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [273-287), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [273-287), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [273-287), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: <259, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: <259, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: <259, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: <259, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: >=287, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: >=287, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: >=287, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: >=287, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: >=287, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: >=287, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: >=287, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: >=287, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: >=287, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* gagebrth: [259-273), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [273-287), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: >=287, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* gagebrth: [273-287), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [259-273), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* gagebrth: [273-287), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: >=287, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* gagebrth: [259-273), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: >=287, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [259-273), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: <259, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* gagebrth: [273-287), agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [259-273), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: [273-287), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: <259, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* gagebrth: >=287, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: <259, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [259-273), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* gagebrth: [273-287), agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: >=287, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [259-273), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: [273-287), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* gagebrth: <259, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr           0
##   Control  518
##   LNS        0
##   Maternal 592
##   Other      0
##   Zinc       0
```




# Results Detail

## Results Plots
![](/tmp/e8e44024-db7d-491d-8be6-88e4a09ac092/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8e44024-db7d-491d-8be6-88e4a09ac092/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e8e44024-db7d-491d-8be6-88e4a09ac092/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8e44024-db7d-491d-8be6-88e4a09ac092/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


gagebrth    agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2447044   0.2358722   0.2535366
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2357972   0.2269345   0.2446599
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.2267442   0.1939794   0.2595090
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2229299   0.1918144   0.2540455
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1225806   0.0709099   0.1742514
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0810811   0.0370699   0.1250923
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1118012   0.0773546   0.1462478
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0661417   0.0542522   0.0780313
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0551712   0.0468208   0.0635215
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.4198473   0.3805174   0.4591772
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.4039735   0.3619910   0.4459560
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2267442   0.2054098   0.2480786
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.1981982   0.1699369   0.2264595
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2274201   0.2171742   0.2376660
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2250559   0.2143219   0.2357900
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1311475   0.0953966   0.1668984
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.1079545   0.0851874   0.1307217
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2545455   0.1787065   0.3303844
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.2903226   0.2160103   0.3646348
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Control              NA                0.1020408   0.0470331   0.1570486
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Other                NA                0.1851852   0.1327859   0.2375844
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.5450311   0.5310471   0.5590150
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.5058104   0.4907681   0.5208527
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.3846154   0.2728362   0.4963945
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.5555556   0.4605615   0.6505496
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2914798   0.2740875   0.3088722
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3058824   0.2837852   0.3279795
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1355932   0.0480444   0.2231421
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1320755   0.0407246   0.2234263
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1282051   0.0674944   0.1889158
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.6153846   0.5340103   0.6967589
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.5454545   0.4791071   0.6118019
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.3846154   0.3125827   0.4566481
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.4523810   0.3587170   0.5460449
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3704319   0.3536682   0.3871956
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.3493282   0.3307055   0.3679509
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Control              NA                0.0106914   0.0051603   0.0162225
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0076336   0.0048550   0.0104121
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3824979   0.3707757   0.3942202
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.3449288   0.3340311   0.3558264
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.2777778   0.2294979   0.3260577
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2530120   0.2080105   0.2980136
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2758621   0.2325222   0.3192019
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.1864407   0.1456052   0.2272761
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1222222   0.0544525   0.1899919
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1688312   0.0850367   0.2526256
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1220930   0.0730931   0.1710929
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0965330   0.0796087   0.1134572
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0680000   0.0509715   0.0850285
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.5438596   0.4739993   0.6137200
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.4897959   0.4247862   0.5548056
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2777778   0.2439917   0.3115638
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.2866242   0.2415739   0.3316745
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2951623   0.2815834   0.3087412
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2655194   0.2525761   0.2784627
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1228070   0.0393850   0.2062290
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.1315789   0.0857620   0.1773958
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2128954   0.2019771   0.2238136
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.1927772   0.1810676   0.2044869
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.1269841   0.0890374   0.1649309
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.0945946   0.0584462   0.1307430
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0537634   0.0078665   0.0996604
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0990991   0.0434454   0.1547528
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0788177   0.0417053   0.1159301
>=287       6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0677362   0.0424019   0.0930705
>=287       6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0309598   0.0245464   0.0373731
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.4040404   0.3606415   0.4474393
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.2868852   0.2424779   0.3312925
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.1269841   0.1021414   0.1518269
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.1438356   0.1039761   0.1836951
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2107884   0.1990940   0.2224828
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.1835677   0.1710235   0.1961119


### Parameter: E(Y)


gagebrth    agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2401740   0.2276602   0.2526878
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.2249240   0.1797383   0.2701097
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1072000   0.0829266   0.1314734
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0604427   0.0454707   0.0754146
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4113475   0.3538129   0.4688821
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2079208   0.1724912   0.2433504
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2262176   0.2113794   0.2410557
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1174497   0.0745712   0.1603281
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2735043   0.1667295   0.3802791
<259        Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1315789   0.0550764   0.2080815
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5270535   0.5064399   0.5476672
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.4545455   0.3057184   0.6033725
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2991632   0.2703526   0.3279738
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1310044   0.0872086   0.1748002
<259        6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5882353   0.4829886   0.6934820
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4264706   0.3080484   0.5448928
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3606411   0.3355826   0.3856997
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0092951   0.0029423   0.0156479
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3639004   0.3477885   0.3800123
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.2658960   0.1998694   0.3319225
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2307692   0.1658851   0.2956534
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1327434   0.0965716   0.1689151
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0834252   0.0587202   0.1081302
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5188679   0.4232996   0.6144363
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2834008   0.2270864   0.3397152
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2803681   0.2615720   0.2991642
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1263158   0.0306200   0.2220116
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2019391   0.1859323   0.2179458
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.1094891   0.0570103   0.1619678
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0786241   0.0524434   0.1048048
>=287       6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0480530   0.0200823   0.0760237
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3393665   0.2767986   0.4019344
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.1387560   0.0917768   0.1857352
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1964006   0.1792850   0.2135163


### Parameter: RR


gagebrth    agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9636001   0.9146727   1.0151448
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.9831782   0.8042320   1.2019409
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.6614509   0.3326798   1.3151305
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9120628   0.5410904   1.5373743
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.8341354   0.6601322   1.0540038
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.9621915   0.8365623   1.1066867
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           0.8741049   0.7368346   1.0369482
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9896044   0.9267552   1.0567157
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.8231534   0.5831639   1.1619058
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.1405530   0.7694920   1.6905454
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Other                Control           1.8148148   0.9872412   3.3361177
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9280396   0.8922915   0.9652198
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.4444444   1.0310003   2.0236850
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.0494118   0.9555727   1.1524660
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9740566   0.3781444   2.5090583
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9455128   0.4245447   2.1057725
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8863636   0.7405978   1.0608194
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.1761905   0.8896710   1.5549839
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9430295   0.8793425   1.0113291
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Maternal             Control           0.7139949   0.3813530   1.3367898
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9017794   0.8629496   0.9423563
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.9108434   0.7102987   1.1680095
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.6758475   0.5155624   0.8859640
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.3813459   0.6563199   2.9072965
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9989429   0.5038184   1.9806481
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.7044225   0.5177510   0.9583972
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.9005925   0.7487052   1.0832927
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.0318471   0.8458694   1.2587150
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8995708   0.8412498   0.9619349
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           1.0714286   0.5026866   2.2836481
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9055021   0.8363258   0.9804003
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.7449325   0.4586029   1.2100326
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.8432432   0.6634391   5.1211119
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.4660098   0.5530063   3.8863659
>=287       6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=287       6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.4570637   0.2983134   0.7002945
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.7100410   0.5881102   0.8572513
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.1327055   0.8068577   1.5901462
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8708626   0.7973513   0.9511513


### Parameter: PAR


gagebrth    agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0045304   -0.0134005    0.0043397
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0018202   -0.0329364    0.0292960
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0153806   -0.0593671    0.0286058
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0056991   -0.0144637    0.0030656
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0084998   -0.0504925    0.0334929
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0188234   -0.0471094    0.0094626
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0012025   -0.0119385    0.0095334
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0136979   -0.0368476    0.0094519
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0189588   -0.0573219    0.0952396
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0295381   -0.0236294    0.0827056
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0179775   -0.0330891   -0.0028659
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0699301   -0.0283293    0.1681894
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0076834   -0.0151111    0.0304778
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0045889   -0.0796443    0.0704666
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0271493   -0.0938958    0.0395972
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0418552   -0.0521401    0.1358505
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0097908   -0.0284222    0.0088407
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Control              NA                -0.0013963   -0.0043062    0.0015137
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0185975   -0.0296446   -0.0075505
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0118818   -0.0569213    0.0331577
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0450928   -0.0923269    0.0021412
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0105211   -0.0483220    0.0693643
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0131078   -0.0304673    0.0042518
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0249917   -0.0902055    0.0402221
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0056230   -0.0394304    0.0506765
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0147942   -0.0277994   -0.0017890
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0035088   -0.0420736    0.0490911
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0109563   -0.0226756    0.0007629
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0174951   -0.0537451    0.0187550
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0248606   -0.0179093    0.0676306
>=287       6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0196832   -0.0290896   -0.0102768
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0646739   -0.1097435   -0.0196042
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0117719   -0.0281015    0.0516452
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0143878   -0.0270269   -0.0017486


### Parameter: PAF


gagebrth    agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
[273-287)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0188630   -0.0572015    0.0180852
[273-287)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0080924   -0.1576659    0.1221558
[273-287)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1434762   -0.6357361    0.2006426
[273-287)   6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0942886   -0.2669115    0.0548136
[273-287)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0206633   -0.1303833    0.0784067
[273-287)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0905316   -0.2497879    0.0484313
[273-287)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0053158   -0.0541774    0.0412810
[273-287)   24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.1166276   -0.3640098    0.0858883
<259        Birth       ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0693182   -0.2313717    0.2965823
<259        Birth       ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.2244898   -0.1824301    0.4913728
<259        Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0341095   -0.0642049   -0.0048651
<259        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.1538462   -0.0551596    0.3214521
<259        6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0256828   -0.0514557    0.0971622
<259        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0350282   -0.8001740    0.4049000
<259        6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0461538   -0.1720490    0.0662183
<259        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0981432   -0.1250958    0.2770877
<259        6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0271482   -0.0816228    0.0245829
[259-273)   Birth       ki1119695-PROBIT           BELARUS                        Control              NA                -0.1502138   -0.5928656    0.1694265
[259-273)   Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0511061   -0.0835489   -0.0196346
[259-273)   6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0446860   -0.2377336    0.1182523
[259-273)   6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.1954023   -0.4713750    0.0288087
[259-273)   6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0792593   -0.4895237    0.4308493
[259-273)   6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.1571199   -0.4288646    0.0629438
[259-273)   6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0481659   -0.1887221    0.0757708
[259-273)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0198413   -0.1490687    0.1639219
[259-273)   6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0527670   -0.1028194   -0.0049862
[259-273)   24 months   ki1119695-PROBIT           BELARUS                        Control              NA                 0.0277778   -0.3949846    0.3224183
>=287       Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0542556   -0.1173183    0.0052478
>=287       6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.1597883   -0.6205196    0.1699521
>=287       6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.3161962   -0.4950574    0.6872444
>=287       6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.4096134   -0.8307643   -0.0853444
>=287       6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1905724   -0.3618005   -0.0408739
>=287       6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0848385   -0.2204102    0.3137385
>=287       6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0732572   -0.1446873   -0.0062844
