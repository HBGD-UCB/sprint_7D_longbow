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

* predexfd6
* agecat
* studyid
* country

## Data Summary

predexfd6   agecat        studyid                    country      tr          ever_stunted   n_cell       n
----------  ------------  -------------------------  -----------  ---------  -------------  -------  ------
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Control                0       51     206
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Control                1       25     206
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Other                  0       89     206
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Other                  1       41     206
0           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Control                0        6      12
0           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Control                1        3      12
0           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Other                  0        3      12
0           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Other                  1        0      12
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control                0       25     183
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control                1       22     183
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                  0       70     183
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                  1       66     183
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control                0      104     473
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control                1       20     473
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Other                  0      300     473
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Other                  1       49     473
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control                0       38     167
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control                1        4     167
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Other                  0      109     167
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Other                  1       16     167
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control                0      113    1014
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control                1       52    1014
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                    0      614    1014
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                    1      235    1014
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control                0       14     161
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control                1        6     161
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                    0       96     161
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                    1       45     161
1           0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               0        2       2
0           0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control                1        1       2
0           0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               1        1       2
0           0-6 months    ki1148112-LCNI-5           MALAWI       Control                0       32     225
0           0-6 months    ki1148112-LCNI-5           MALAWI       Control                1       21     225
0           0-6 months    ki1148112-LCNI-5           MALAWI       LNS                    0       77     225
0           0-6 months    ki1148112-LCNI-5           MALAWI       LNS                    1       39     225
0           0-6 months    ki1148112-LCNI-5           MALAWI       Other                  0       36     225
0           0-6 months    ki1148112-LCNI-5           MALAWI       Other                  1       20     225
1           0-6 months    ki1148112-LCNI-5           MALAWI       Control                0       11      47
1           0-6 months    ki1148112-LCNI-5           MALAWI       Control                1        4      47
1           0-6 months    ki1148112-LCNI-5           MALAWI       LNS                    0       17      47
1           0-6 months    ki1148112-LCNI-5           MALAWI       LNS                    1        6      47
1           0-6 months    ki1148112-LCNI-5           MALAWI       Other                  0        2      47
1           0-6 months    ki1148112-LCNI-5           MALAWI       Other                  1        7      47
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control                0     1432    4271
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control                1      790    4271
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal               0     1370    4271
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal               1      679    4271
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control                0     5508   15082
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control                1     1868   15082
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal               0     6093   15082
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal               1     1613   15082
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control                0      172     997
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control                1       67     997
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                    0      190     997
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                    1       88     997
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                  0      325     997
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                  1      155     997
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control                0      731    3555
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control                1      204    3555
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                    0      742    3555
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                    1      226    3555
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                  0     1246    3555
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                  1      406    3555
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Control                0       46     193
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Control                1       25     193
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                  0       81     193
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                  1       41     193
0           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Control                0        3      10
0           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Control                1        2      10
0           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                  0        5      10
0           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                  1        0      10
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control                0        6      88
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control                1       11      88
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                  0       31      88
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                  1       40      88
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control                0       77     365
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control                1       19     365
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                  0      203     365
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                  1       66     365
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control                0       24     132
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control                1        6     132
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                  0       74     132
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                  1       28     132
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control                0       74     575
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control                1       22     575
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                    0      393     575
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                    1       86     575
0           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control                0       13      90
0           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control                1        0      90
0           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                    0       63      90
0           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                    1       14      90
1           6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control                0       22      82
1           6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control                1        4      82
1           6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               0       36      82
1           6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               1       20      82
0           6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control                0        1       4
0           6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control                1        0       4
0           6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               0        2       4
0           6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               1        1       4
0           6-24 months   ki1148112-LCNI-5           MALAWI       Control                0       18     146
0           6-24 months   ki1148112-LCNI-5           MALAWI       Control                1       14     146
0           6-24 months   ki1148112-LCNI-5           MALAWI       LNS                    0       54     146
0           6-24 months   ki1148112-LCNI-5           MALAWI       LNS                    1       24     146
0           6-24 months   ki1148112-LCNI-5           MALAWI       Other                  0       26     146
0           6-24 months   ki1148112-LCNI-5           MALAWI       Other                  1       10     146
1           6-24 months   ki1148112-LCNI-5           MALAWI       Control                0       10      33
1           6-24 months   ki1148112-LCNI-5           MALAWI       Control                1        2      33
1           6-24 months   ki1148112-LCNI-5           MALAWI       LNS                    0        9      33
1           6-24 months   ki1148112-LCNI-5           MALAWI       LNS                    1        7      33
1           6-24 months   ki1148112-LCNI-5           MALAWI       Other                  0        3      33
1           6-24 months   ki1148112-LCNI-5           MALAWI       Other                  1        2      33
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control                0     4178   10707
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control                1      979   10707
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal               0     4417   10707
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal               1     1133   10707
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control                0     1041    2495
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control                1      251    2495
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal               0      957    2495
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal               1      246    2495
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control                0      111     737
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control                1       64     737
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                    0      145     737
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                    1       64     737
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                  0      242     737
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                  1      111     737
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control                0      548    3000
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control                1      255    3000
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                    0      597    3000
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                    1      227    3000
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                  0      957    3000
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                  1      416    3000
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Control                0       42     278
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Control                1       61     278
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                  0       73     278
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                  1      102     278
0           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Control                0        3      15
0           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Control                1        7      15
0           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                  0        5      15
0           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                  1        0      15
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control                0        6     184
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control                1       41     184
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                  0       33     184
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                  1      104     184
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control                0       76     474
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control                1       48     474
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                  0      201     474
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                  1      149     474
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control                0       25     167
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control                1       17     167
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                  0       77     167
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                  1       48     167
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control                0       76    1015
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control                1       89    1015
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                    0      435    1015
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                    1      415    1015
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control                0       12     161
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control                1        8     161
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                    0       68     161
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                    1       73     161
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control                0       21     104
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control                1       12     104
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               0       34     104
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               1       37     104
0           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control                0        1       6
0           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control                1        2       6
0           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               0        1       6
0           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal               1        2       6
0           0-24 months   ki1148112-LCNI-5           MALAWI       Control                0       19     225
0           0-24 months   ki1148112-LCNI-5           MALAWI       Control                1       34     225
0           0-24 months   ki1148112-LCNI-5           MALAWI       LNS                    0       48     225
0           0-24 months   ki1148112-LCNI-5           MALAWI       LNS                    1       68     225
0           0-24 months   ki1148112-LCNI-5           MALAWI       Other                  0       24     225
0           0-24 months   ki1148112-LCNI-5           MALAWI       Other                  1       32     225
1           0-24 months   ki1148112-LCNI-5           MALAWI       Control                0        9      47
1           0-24 months   ki1148112-LCNI-5           MALAWI       Control                1        6      47
1           0-24 months   ki1148112-LCNI-5           MALAWI       LNS                    0       10      47
1           0-24 months   ki1148112-LCNI-5           MALAWI       LNS                    1       13      47
1           0-24 months   ki1148112-LCNI-5           MALAWI       Other                  0        0      47
1           0-24 months   ki1148112-LCNI-5           MALAWI       Other                  1        9      47
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control                0     5276   17878
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control                1     3462   17878
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal               0     5800   17878
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal               1     3340   17878
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control                0     1339    4899
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control                1     1196    4899
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal               0     1258    4899
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal               1     1106    4899
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control                0      104    1017
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control                1      138    1017
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                    0      124    1017
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                    1      158    1017
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                  0      208    1017
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                  1      285    1017
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control                0      501    3705
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control                1      472    3705
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                    0      538    3705
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                    1      475    3705
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                  0      871    3705
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                  1      848    3705
0           0-6 months    iLiNS_DYADM_LNS            MALAWI       Control                1        1       1
1           0-6 months    iLiNS_DYADM_LNS            MALAWI       LNS                    0        1       1
1           6-24 months   iLiNS_DYADM_LNS            MALAWI       Control                0       22      51
1           6-24 months   iLiNS_DYADM_LNS            MALAWI       Control                1        4      51
1           6-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                    0       17      51
1           6-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                    1        8      51
0           6-24 months   iLiNS_DYADM_LNS            MALAWI       Control                0        1       3
0           6-24 months   iLiNS_DYADM_LNS            MALAWI       Control                1        0       3
0           6-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                    0        1       3
0           6-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                    1        1       3
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       Control                0       21      67
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       Control                1       12      67
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                    0       16      67
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                    1       18      67
0           0-24 months   iLiNS_DYADM_LNS            MALAWI       Control                0        1       5
0           0-24 months   iLiNS_DYADM_LNS            MALAWI       Control                1        2       5
0           0-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                    0        1       5
0           0-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                    1        1       5


The following strata were considered:

* predexfd6: 0, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 0, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* predexfd6: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 0, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 0, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* predexfd6: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 0, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 0, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* predexfd6: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 0, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* predexfd6: 0, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 0, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 0, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ca35137e-eae9-4cc8-8434-469fd16dec98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca35137e-eae9-4cc8-8434-469fd16dec98/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ca35137e-eae9-4cc8-8434-469fd16dec98/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ca35137e-eae9-4cc8-8434-469fd16dec98/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


predexfd6   agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                0.8723404   0.7766756   0.9680052
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                NA                0.7591241   0.6873241   0.8309241
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                0.3870968   0.3012742   0.4729194
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                NA                0.4257143   0.3738587   0.4775699
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.4000000   0.3732456   0.4267544
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.5177305   0.4452733   0.5901877
0           0-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                0.6415094   0.5121143   0.7709045
0           0-24 months   ki1148112-LCNI-5           MALAWI       LNS                  NA                0.5862069   0.4963806   0.6760332
0           0-24 months   ki1148112-LCNI-5           MALAWI       Other                NA                0.5714286   0.4415271   0.7013300
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.4717949   0.4598266   0.4837632
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.4678511   0.4559366   0.4797656
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.5702479   0.4938952   0.6466006
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.5602837   0.4939817   0.6265857
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.5780933   0.5272007   0.6289859
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                0.4680851   0.3250402   0.6111300
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                NA                0.4852941   0.4010673   0.5695210
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control              NA                0.1612903   0.0964856   0.2260951
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Other                NA                0.1404011   0.1039150   0.1768873
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.3000000   0.2749735   0.3250265
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.3191489   0.2515550   0.3867428
0           0-6 months    ki1148112-LCNI-5           MALAWI       Control              NA                0.3962264   0.2642531   0.5281997
0           0-6 months    ki1148112-LCNI-5           MALAWI       LNS                  NA                0.3362069   0.2500468   0.4223670
0           0-6 months    ki1148112-LCNI-5           MALAWI       Other                NA                0.3571429   0.2313663   0.4829194
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.3555356   0.3436548   0.3674163
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.3313812   0.3191732   0.3435891
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2803347   0.2157017   0.3449677
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3165468   0.2639459   0.3691476
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3229167   0.2734921   0.3723412
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                0.6470588   0.4185892   0.8755284
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                NA                0.5633803   0.4473549   0.6794057
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                0.1979167   0.1181063   0.2777270
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                NA                0.2453532   0.1938617   0.2968446
0           6-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                0.4375000   0.2650291   0.6099709
0           6-24 months   ki1148112-LCNI-5           MALAWI       LNS                  NA                0.3076923   0.2049141   0.4104705
0           6-24 months   ki1148112-LCNI-5           MALAWI       Other                NA                0.2777778   0.1309618   0.4245938
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.1942724   0.1816836   0.2068613
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.2044888   0.1897432   0.2192344
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.3657143   0.2828995   0.4485291
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3062201   0.2322213   0.3802189
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3144476   0.2599063   0.3689889
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       Control              NA                0.3636364   0.2821881   0.4450847
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                  NA                0.5294118   0.4436299   0.6151936
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Control              NA                0.5922330   0.4561328   0.7283332
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                NA                0.5828571   0.4747850   0.6909293
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                0.4047619   0.2558694   0.5536544
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                NA                0.3840000   0.2984828   0.4695172
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.5393939   0.5270243   0.5517635
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.4882353   0.4600803   0.5163903
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                0.3636364   0.3113057   0.4159670
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal             NA                0.5211268   0.4414147   0.6008388
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.3962005   0.3896548   0.4027462
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.3654267   0.3589254   0.3719280
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.4850976   0.4439182   0.5262771
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.4689042   0.4320198   0.5057887
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.4933101   0.4642918   0.5223284
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Control              NA                0.3289474   0.1971432   0.4607516
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Other                NA                0.3153846   0.2742375   0.3565318
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.3151515   0.3036111   0.3266920
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.2767962   0.2515853   0.3020071
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.2532538   0.2472871   0.2592204
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.2093174   0.2041234   0.2145114
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2181818   0.1867738   0.2495899
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2334711   0.2024696   0.2644725
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2457627   0.2209033   0.2706221
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Control              NA                0.3521127   0.2768199   0.4274054
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                NA                0.3360656   0.2334804   0.4386507
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                0.2000000   0.0563192   0.3436808
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                NA                0.2745098   0.1875749   0.3614447
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.2291667   0.2151175   0.2432158
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.1795407   0.1508834   0.2081981
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.1898391   0.1839392   0.1957389
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.2041441   0.1977603   0.2105280
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.3175592   0.2771759   0.3579424
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2754854   0.2384935   0.3124774
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3029862   0.2733678   0.3326045


### Parameter: E(Y)


predexfd6   agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.7880435   0.7288299   0.8472570
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.4156118   0.3711986   0.4600250
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.5031056   0.4256327   0.5805785
0           0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.5955556   0.5312846   0.6598265
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.4698918   0.4530048   0.4867788
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.5712881   0.5355266   0.6070496
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4808743   0.4082864   0.5534623
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1458774   0.1140331   0.1777216
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.3167702   0.2446854   0.3888550
0           0-6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.3555556   0.2928696   0.4182416
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.3439476   0.3268991   0.3609960
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3109328   0.2789227   0.3429429
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.5795455   0.4758185   0.6832724
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2328767   0.1894564   0.2762970
0           6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.3287671   0.2523053   0.4052290
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1991984   0.1798000   0.2185968
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3242877   0.2853874   0.3631879
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       NA                   NA                0.4477612   0.3277939   0.5677285
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.5863309   0.5013781   0.6712838
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3892216   0.3150505   0.4633926
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.4965517   0.4657774   0.5273261
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       NA                   NA                0.4711538   0.3747542   0.5675535
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.3804676   0.3711540   0.3897812
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.4844804   0.4644842   0.5044767
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.3203883   0.2652569   0.3755198
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.2830375   0.2552970   0.3107779
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2308049   0.2227254   0.2388845
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2351617   0.2185966   0.2517269
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.3419689   0.2712475   0.4126904
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2575758   0.1826914   0.3324601
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.1878261   0.1558743   0.2197778
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1972541   0.1885655   0.2059428
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2993333   0.2792264   0.3194403


### Parameter: RR


predexfd6   agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                Control           0.8702154   0.7528929   1.0058202
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                Control           1.0997619   0.8539587   1.4163171
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           1.2943262   1.1083549   1.5115018
0           0-24 months   ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0           0-24 months   ki1148112-LCNI-5           MALAWI       LNS                  Control           0.9137931   0.7093125   1.1772213
0           0-24 months   ki1148112-LCNI-5           MALAWI       Other                Control           0.8907563   0.6573122   1.2071079
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.9916409   0.9566316   1.0279315
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.9825265   0.8217510   1.1747576
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.0137578   0.8636578   1.1899446
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                Control           1.0367647   0.7295430   1.4733621
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Other                Control           0.8704871   0.5394485   1.4046712
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           1.0638298   0.8472531   1.3357682
0           0-6 months    ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0           0-6 months    ki1148112-LCNI-5           MALAWI       LNS                  Control           0.8485222   0.5573767   1.2917473
0           0-6 months    ki1148112-LCNI-5           MALAWI       Other                Control           0.9013605   0.5551134   1.4635763
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.9320620   0.8868395   0.9795905
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.1291743   0.8496960   1.5005772
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.1518968   0.8734492   1.5191109
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                Control           0.8706786   0.5785425   1.3103294
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                Control           1.2396791   0.7868307   1.9531577
0           6-24 months   ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0           6-24 months   ki1148112-LCNI-5           MALAWI       LNS                  Control           0.7032967   0.4195042   1.1790733
0           6-24 months   ki1148112-LCNI-5           MALAWI       Other                Control           0.6349206   0.3283684   1.2276585
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           1.0525877   0.9553353   1.1597402
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.8373206   0.6012707   1.1660402
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.8598176   0.6464361   1.1436342
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                  Control           1.4558824   1.1042489   1.9194888
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                Control           0.9841686   0.7326191   1.3220892
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                Control           0.9487059   0.6171340   1.4584236
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.9051553   0.8506895   0.9631083
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal             Control           1.4330986   1.1616280   1.7680115
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.9223277   0.9001724   0.9450283
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.9666183   0.8609053   1.0853120
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.0169294   0.9170827   1.1276469
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Other                Control           0.9587692   0.6290672   1.4612723
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.8782957   0.7961731   0.9688891
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.8265124   0.7986900   0.8553041
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.0700758   0.8797271   1.3016105
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.1264124   0.9446821   1.3431025
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Other                Control           0.9544262   0.6565666   1.3874135
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                Control           1.3725490   0.6259778   3.0095172
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.7834504   0.6603200   0.9295409
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           1.0753538   1.0289592   1.1238402
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.8675090   0.7210438   1.0437257
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.9541094   0.8126965   1.1201287


### Parameter: PAR


predexfd6   agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.0842969   -0.1736426    0.0050487
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.0285150   -0.0455414    0.1025715
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                 0.1031056    0.0303990    0.1758122
0           0-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.0459539   -0.1599100    0.0680022
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0019031   -0.0138167    0.0100106
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0010402   -0.0647938    0.0668741
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                 0.0127892   -0.1105818    0.1361602
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control              NA                -0.0154129   -0.0702926    0.0394667
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                 0.0167702   -0.0508308    0.0843712
0           0-6 months    ki1148112-LCNI-5           MALAWI       Control              NA                -0.0406709   -0.1553058    0.0739641
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0115880   -0.0238293    0.0006533
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0305981   -0.0259391    0.0871352
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.0675134   -0.2743710    0.1393443
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.0349600   -0.0350713    0.1049913
0           6-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.1087329   -0.2589101    0.0414443
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.0049260   -0.0098286    0.0196805
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0414266   -0.1129498    0.0300966
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       Control              NA                 0.0841248   -0.0039565    0.1722062
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Control              NA                -0.0059021   -0.1151613    0.1033571
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                -0.0155403   -0.1440684    0.1129877
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0428422   -0.0710212   -0.0146633
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                 0.1075175    0.0265582    0.1884767
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0157329   -0.0224307   -0.0090351
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0006172   -0.0353716    0.0341372
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Control              NA                -0.0085590   -0.0960947    0.0789767
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0321140   -0.0573400   -0.0068881
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0224489   -0.0279898   -0.0169079
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0169799   -0.0102150    0.0441748
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Control              NA                -0.0101438   -0.0902736    0.0699861
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.0575758   -0.0723016    0.1874531
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0413406   -0.0700379   -0.0126433
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.0074151    0.0010387    0.0137915
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0182258   -0.0523305    0.0158789


### Parameter: PAF


predexfd6   agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0           0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.1069699   -0.2286201    0.0026353
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.0686098   -0.1278218    0.2308291
0           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                 0.2049383    0.0807262    0.3123668
0           0-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.0771614   -0.2870228    0.0984802
0           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0040500   -0.0298323    0.0210869
0           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0018207   -0.1203385    0.1106600
0           0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                 0.0265957   -0.2669791    0.2521456
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control              NA                -0.1056568   -0.5531659    0.2129128
0           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                 0.0529412   -0.1724067    0.2349750
0           0-6 months    ki1148112-LCNI-5           MALAWI       Control              NA                -0.1143868   -0.4884734    0.1656835
0           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0336912   -0.0711609    0.0024678
0           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0984073   -0.1032521    0.2632062
0           6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.1164937   -0.5388164    0.1899241
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.1501225   -0.2097777    0.4029550
0           6-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.3307292   -0.8784809    0.0573020
0           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.0247289   -0.0502694    0.0943717
0           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.1277466   -0.3712248    0.0724990
1           0-24 months   iLiNS_DYADM_LNS            MALAWI       Control              NA                 0.1878788    0.0069159    0.3358660
1           0-24 months   ki1000304b-SAS-CompFeed    INDIA        Control              NA                -0.0100661   -0.2147732    0.1601448
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                -0.0399267   -0.4286323    0.2430189
1           0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0862795   -0.1497474   -0.0263151
1           0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                 0.2282004    0.0806500    0.3520697
1           0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0413515   -0.0598520   -0.0231739
1           0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0012740   -0.0756380    0.0679490
1           0-6 months    ki1000304b-SAS-CompFeed    INDIA        Control              NA                -0.0267145   -0.3356234    0.2107486
1           0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.1134621   -0.2173751   -0.0184190
1           0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0972634   -0.1240070   -0.0711561
1           0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0722053   -0.0509050    0.1808936
1           6-24 months   ki1000304b-SAS-CompFeed    INDIA        Control              NA                -0.0296628   -0.2967765    0.1824300
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.2235294   -0.4827491    0.5933860
1           6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.2201003   -0.4223556   -0.0466052
1           6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.0375915    0.0059519    0.0682240
1           6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0608880   -0.1810380    0.0470388
