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

* fage
* agecat
* studyid
* country

## Data Summary

fage      agecat        studyid                    country     tr.x       ever_stunted   n_cell      n
--------  ------------  -------------------------  ----------  --------  -------------  -------  -----
<25       0-6 months    ki1000304-EU               INDIA       Zinc                  0        1      3
<25       0-6 months    ki1000304-EU               INDIA       Zinc                  1        2      3
[25-30)   0-6 months    ki1000304-EU               INDIA       Control               0        1      9
[25-30)   0-6 months    ki1000304-EU               INDIA       Control               1        4      9
[25-30)   0-6 months    ki1000304-EU               INDIA       Zinc                  0        3      9
[25-30)   0-6 months    ki1000304-EU               INDIA       Zinc                  1        1      9
[30-35)   0-6 months    ki1000304-EU               INDIA       Control               0        1      1
>=35      0-6 months    ki1000304-EU               INDIA       Zinc                  0        1      1
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control               0      129    325
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control               1       40    325
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                 0      113    325
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                 1       43    325
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control               0       68    226
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control               1       25    226
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                 0       98    226
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                 1       35    226
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control               0       43    158
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control               1       26    158
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                 0       60    158
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                 1       29    158
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control               0       24     80
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control               1       10     80
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                 0       33     80
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                 1       13     80
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control               0       22    128
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control               1       13    128
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       56    128
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       37    128
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control               0       18     99
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control               1        8     99
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       47     99
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       26     99
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control               0       13    115
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control               1       12    115
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       60    115
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       30    115
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control               0       10     74
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control               1        9     74
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       31     74
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       24     74
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Control               0     2627   5843
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Control               1      183   5843
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Other                 0     2856   5843
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Other                 1      177   5843
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Control               0      694   1565
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Control               1       51   1565
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Other                 0      772   1565
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Other                 1       48   1565
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Control               0     1351   2960
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Control               1       90   2960
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Other                 0     1431   2960
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Other                 1       88   2960
<25       0-6 months    ki1119695-PROBIT           BELARUS     Control               0     2341   5232
<25       0-6 months    ki1119695-PROBIT           BELARUS     Control               1      176   5232
<25       0-6 months    ki1119695-PROBIT           BELARUS     Other                 0     2532   5232
<25       0-6 months    ki1119695-PROBIT           BELARUS     Other                 1      183   5232
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Control               0       35    131
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Control               1       18    131
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Other                 0       56    131
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Other                 1       22    131
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control               0       17     61
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control               1       15     61
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Other                 0       22     61
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Other                 1        7     61
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control               0       21     58
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control               1       10     58
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Other                 0       18     58
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Other                 1        9     58
<25       0-6 months    ki1135781-COHORTS          GUATEMALA   Control               0       16     39
<25       0-6 months    ki1135781-COHORTS          GUATEMALA   Control               1        3     39
<25       0-6 months    ki1135781-COHORTS          GUATEMALA   Other                 0       14     39
<25       0-6 months    ki1135781-COHORTS          GUATEMALA   Other                 1        6     39
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control               0       21    237
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control               1       12    237
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      158    237
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                   1       46    237
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control               0       32    287
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control               1       15    287
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      172    287
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                   1       68    287
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control               0       48    349
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control               1       17    349
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      201    349
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                   1       83    349
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control               0       14    203
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control               1        9    203
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      118    203
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                   1       62    203
[30-35)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control               0        7     22
[30-35)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control               1        1     22
[30-35)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0        6     22
[30-35)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1        2     22
[30-35)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0        6     22
[30-35)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1        0     22
>=35      0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control               0        5     17
>=35      0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control               1        2     17
>=35      0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0        1     17
>=35      0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1        0     17
>=35      0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0        7     17
>=35      0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1        2     17
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control               0        4     12
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control               1        2     12
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0        3     12
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1        0     12
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0        2     12
[25-30)   0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1        1     12
<25       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control               0        1     16
<25       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control               1        0     16
<25       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0        4     16
<25       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1        3     16
<25       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0        5     16
<25       0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1        3     16
[30-35)   0-6 months    ki1148112-LCNI-5           MALAWI      Control               0        2      5
[30-35)   0-6 months    ki1148112-LCNI-5           MALAWI      Control               1        2      5
[30-35)   0-6 months    ki1148112-LCNI-5           MALAWI      LNS                   0        0      5
[30-35)   0-6 months    ki1148112-LCNI-5           MALAWI      LNS                   1        1      5
<25       0-6 months    ki1148112-LCNI-5           MALAWI      Control               0        1     10
<25       0-6 months    ki1148112-LCNI-5           MALAWI      Control               1        1     10
<25       0-6 months    ki1148112-LCNI-5           MALAWI      LNS                   0        4     10
<25       0-6 months    ki1148112-LCNI-5           MALAWI      LNS                   1        4     10
[25-30)   0-6 months    ki1148112-LCNI-5           MALAWI      Control               0        4     10
[25-30)   0-6 months    ki1148112-LCNI-5           MALAWI      Control               1        1     10
[25-30)   0-6 months    ki1148112-LCNI-5           MALAWI      LNS                   0        2     10
[25-30)   0-6 months    ki1148112-LCNI-5           MALAWI      LNS                   1        3     10
>=35      0-6 months    ki1148112-LCNI-5           MALAWI      Control               0        5     13
>=35      0-6 months    ki1148112-LCNI-5           MALAWI      Control               1        2     13
>=35      0-6 months    ki1148112-LCNI-5           MALAWI      LNS                   0        4     13
>=35      0-6 months    ki1148112-LCNI-5           MALAWI      LNS                   1        2     13
[30-35)   6-24 months   ki1000304-EU               INDIA       Control               0      123    277
[30-35)   6-24 months   ki1000304-EU               INDIA       Control               1        5    277
[30-35)   6-24 months   ki1000304-EU               INDIA       Zinc                  0      139    277
[30-35)   6-24 months   ki1000304-EU               INDIA       Zinc                  1       10    277
[25-30)   6-24 months   ki1000304-EU               INDIA       Control               0      241    504
[25-30)   6-24 months   ki1000304-EU               INDIA       Control               1       12    504
[25-30)   6-24 months   ki1000304-EU               INDIA       Zinc                  0      242    504
[25-30)   6-24 months   ki1000304-EU               INDIA       Zinc                  1        9    504
>=35      6-24 months   ki1000304-EU               INDIA       Control               0       85    174
>=35      6-24 months   ki1000304-EU               INDIA       Control               1        4    174
>=35      6-24 months   ki1000304-EU               INDIA       Zinc                  0       81    174
>=35      6-24 months   ki1000304-EU               INDIA       Zinc                  1        4    174
<25       6-24 months   ki1000304-EU               INDIA       Control               0       93    196
<25       6-24 months   ki1000304-EU               INDIA       Control               1        4    196
<25       6-24 months   ki1000304-EU               INDIA       Zinc                  0       92    196
<25       6-24 months   ki1000304-EU               INDIA       Zinc                  1        7    196
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               0       90    266
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               1       44    266
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 0       94    266
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 1       38    266
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               0       29    121
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               1       26    121
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 0       50    121
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 1       16    121
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               0       16     57
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               1        8     57
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 0       20     57
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 1       13     57
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               0       63    202
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               1       20    202
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 0       84    202
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 1       35    202
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               0        6     71
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               1       10     71
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       26     71
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       29     71
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               0        7     65
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               1        5     65
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       21     65
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       32     65
>=35      6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               0        3     53
>=35      6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               1       11     53
>=35      6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       17     53
>=35      6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       22     53
<25       6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               0        3     37
<25       6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               1        3     37
<25       6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       16     37
<25       6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       15     37
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Control               0     2693   5879
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Control               1      108   5879
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Other                 0     2964   5879
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Other                 1      114   5879
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Control               0      722   1586
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Control               1       27   1586
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Other                 0      813   1586
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Other                 1       24   1586
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Control               0     1378   2972
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Control               1       60   2972
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Other                 0     1476   2972
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Other                 1       58   2972
<25       6-24 months   ki1119695-PROBIT           BELARUS     Control               0     2421   5282
<25       6-24 months   ki1119695-PROBIT           BELARUS     Control               1       99   5282
<25       6-24 months   ki1119695-PROBIT           BELARUS     Other                 0     2656   5282
<25       6-24 months   ki1119695-PROBIT           BELARUS     Other                 1      106   5282
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Control               0       42    250
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Control               1       62    250
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Other                 0       73    250
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Other                 1       73    250
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control               0       20    122
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control               1       33    122
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                 0       37    122
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                 1       32    122
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control               0       23    135
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control               1       40    135
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                 0       26    135
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                 1       46    135
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Control               0       17    100
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Control               1       32    100
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Other                 0       26    100
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Other                 1       25    100
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               0       28    247
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               1        9    247
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      162    247
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   1       48    247
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               0       57    389
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               1       13    389
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      234    389
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   1       85    389
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               0       43    297
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               1        9    297
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      206    297
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   1       39    297
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               0       21    189
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               1        5    189
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      124    189
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   1       39    189
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               0       65    268
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               1       22    268
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0       63    268
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1       26    268
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0       64    268
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1       28    268
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               0       73    238
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               1       22    238
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0       47    238
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1       22    238
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0       53    238
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1       21    238
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               0       36    176
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               1        9    176
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0       49    176
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1       24    176
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0       41    176
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1       17    176
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               0       55    226
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               1       17    226
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0       53    226
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1       17    226
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0       64    226
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1       20    226
[30-35)   6-24 months   ki1148112-LCNI-5           MALAWI      Control               0        8     14
[30-35)   6-24 months   ki1148112-LCNI-5           MALAWI      Control               1        0     14
[30-35)   6-24 months   ki1148112-LCNI-5           MALAWI      LNS                   0        4     14
[30-35)   6-24 months   ki1148112-LCNI-5           MALAWI      LNS                   1        2     14
<25       6-24 months   ki1148112-LCNI-5           MALAWI      Control               0        2     13
<25       6-24 months   ki1148112-LCNI-5           MALAWI      Control               1        1     13
<25       6-24 months   ki1148112-LCNI-5           MALAWI      LNS                   0        8     13
<25       6-24 months   ki1148112-LCNI-5           MALAWI      LNS                   1        2     13
[25-30)   6-24 months   ki1148112-LCNI-5           MALAWI      Control               0       10     21
[25-30)   6-24 months   ki1148112-LCNI-5           MALAWI      Control               1        2     21
[25-30)   6-24 months   ki1148112-LCNI-5           MALAWI      LNS                   0        6     21
[25-30)   6-24 months   ki1148112-LCNI-5           MALAWI      LNS                   1        3     21
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      Control               0        6     31
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      Control               1        7     31
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      LNS                   0       12     31
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      LNS                   1        6     31
[30-35)   0-24 months   ki1000304-EU               INDIA       Control               0      122    474
[30-35)   0-24 months   ki1000304-EU               INDIA       Control               1      114    474
[30-35)   0-24 months   ki1000304-EU               INDIA       Zinc                  0      138    474
[30-35)   0-24 months   ki1000304-EU               INDIA       Zinc                  1      100    474
[25-30)   0-24 months   ki1000304-EU               INDIA       Control               0      231    872
[25-30)   0-24 months   ki1000304-EU               INDIA       Control               1      219    872
[25-30)   0-24 months   ki1000304-EU               INDIA       Zinc                  0      238    872
[25-30)   0-24 months   ki1000304-EU               INDIA       Zinc                  1      184    872
>=35      0-24 months   ki1000304-EU               INDIA       Control               0       83    310
>=35      0-24 months   ki1000304-EU               INDIA       Control               1       74    310
>=35      0-24 months   ki1000304-EU               INDIA       Zinc                  0       78    310
>=35      0-24 months   ki1000304-EU               INDIA       Zinc                  1       75    310
<25       0-24 months   ki1000304-EU               INDIA       Control               0       89    354
<25       0-24 months   ki1000304-EU               INDIA       Control               1       95    354
<25       0-24 months   ki1000304-EU               INDIA       Zinc                  0       90    354
<25       0-24 months   ki1000304-EU               INDIA       Zinc                  1       80    354
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               0       82    397
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               1      119    397
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 0       88    397
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 1      108    397
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               0       53    278
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               1       66    278
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 0       69    278
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 1       90    278
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               0       27    185
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               1       54    185
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 0       47    185
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 1       57    185
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               0       14     86
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control               1       22     86
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 0       20     86
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                 1       30     86
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               0        6    128
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               1       29    128
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       26    128
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       67    128
>=35      0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               0        4    100
>=35      0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               1       22    100
>=35      0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       19    100
>=35      0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       55    100
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               0        6    116
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               1       20    116
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       26    116
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       64    116
<25       0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               0        4     74
<25       0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control               1       15     74
<25       0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 0       15     74
<25       0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                 1       40     74
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Control               0     2478   6031
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Control               1      413   6031
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Other                 0     2784   6031
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Other                 1      356   6031
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Control               0      667   1623
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Control               1      105   1623
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Other                 0      760   1623
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Other                 1       91   1623
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Control               0     1288   3045
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Control               1      189   3045
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Other                 0     1379   3045
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Other                 1      189   3045
<25       0-24 months   ki1119695-PROBIT           BELARUS     Control               0     2252   5426
<25       0-24 months   ki1119695-PROBIT           BELARUS     Control               1      342   5426
<25       0-24 months   ki1119695-PROBIT           BELARUS     Other                 0     2485   5426
<25       0-24 months   ki1119695-PROBIT           BELARUS     Other                 1      347   5426
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Control               0       41    488
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Control               1      188    488
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Other                 0       76    488
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Other                 1      183    488
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control               0       21    264
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control               1      107    264
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                 0       39    264
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                 1       97    264
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control               0       22    255
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control               1      106    255
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                 0       27    255
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                 1      100    255
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Control               0       19    188
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Control               1       76    188
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Other                 0       27    188
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Other                 1       66    188
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               0       27    377
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               1       30    377
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      167    377
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   1      153    377
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               0       51    572
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               1       49    572
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      222    572
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   1      250    572
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               0       39    455
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               1       40    455
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      201    455
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   1      175    455
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               0       19    308
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control               1       25    308
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   0      121    308
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                   1      143    308
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               0       61    337
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               1       49    337
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0       61    337
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1       48    337
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0       60    337
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1       58    337
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               0       70    290
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               1       44    290
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0       45    290
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1       43    290
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0       52    290
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1       36    290
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               0       35    218
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               1       23    218
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0       48    218
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1       39    218
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0       37    218
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1       36    218
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               0       53    274
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control               1       36    274
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   0       49    274
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                   1       42    274
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 0       59    274
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                 1       35    274
[30-35)   0-24 months   ki1148112-LCNI-5           MALAWI      Control               0        6     20
[30-35)   0-24 months   ki1148112-LCNI-5           MALAWI      Control               1        6     20
[30-35)   0-24 months   ki1148112-LCNI-5           MALAWI      LNS                   0        4     20
[30-35)   0-24 months   ki1148112-LCNI-5           MALAWI      LNS                   1        4     20
<25       0-24 months   ki1148112-LCNI-5           MALAWI      Control               0        2     23
<25       0-24 months   ki1148112-LCNI-5           MALAWI      Control               1        5     23
<25       0-24 months   ki1148112-LCNI-5           MALAWI      LNS                   0        8     23
<25       0-24 months   ki1148112-LCNI-5           MALAWI      LNS                   1        8     23
[25-30)   0-24 months   ki1148112-LCNI-5           MALAWI      Control               0       10     27
[25-30)   0-24 months   ki1148112-LCNI-5           MALAWI      Control               1        4     27
[25-30)   0-24 months   ki1148112-LCNI-5           MALAWI      LNS                   0        6     27
[25-30)   0-24 months   ki1148112-LCNI-5           MALAWI      LNS                   1        7     27
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      Control               0        5     36
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      Control               1        9     36
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      LNS                   0       10     36
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      LNS                   1       12     36


The following strata were considered:

* fage: [25-30), agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* fage: [25-30), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [25-30), agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [25-30), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [25-30), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [25-30), agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [25-30), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [25-30), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [25-30), agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* fage: [25-30), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [25-30), agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [25-30), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [25-30), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [25-30), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [25-30), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [25-30), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [25-30), agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* fage: [25-30), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [25-30), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [25-30), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [25-30), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [25-30), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [25-30), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [25-30), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [30-35), agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* fage: [30-35), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [30-35), agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [30-35), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [30-35), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [30-35), agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [30-35), agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [30-35), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [30-35), agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* fage: [30-35), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [30-35), agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [30-35), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [30-35), agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [30-35), agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [30-35), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [30-35), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [30-35), agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* fage: [30-35), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [30-35), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [30-35), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [30-35), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [30-35), agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [30-35), agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [30-35), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* fage: <25, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: <25, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: <25, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: <25, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: <25, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: <25, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: <25, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* fage: <25, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: <25, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: <25, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: <25, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: <25, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: <25, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: <25, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* fage: <25, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: <25, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: <25, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: <25, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: <25, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: <25, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: <25, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* fage: >=35, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: >=35, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: >=35, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: >=35, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: >=35, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: >=35, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: >=35, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* fage: >=35, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: >=35, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: >=35, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: >=35, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: >=35, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: >=35, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: >=35, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* fage: >=35, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: >=35, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: >=35, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: >=35, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: >=35, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: >=35, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: >=35, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* fage: <25, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* fage: [25-30), agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* fage: [30-35), agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* fage: >=35, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* fage: <25, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [30-35), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: >=35, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [25-30), agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: <25, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [30-35), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [25-30), agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* fage: <25, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* fage: >=35, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: <25, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [30-35), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [25-30), agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: <25, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [30-35), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [25-30), agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6293aca4-dec0-4b30-866b-22b926db5be4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 71 rows containing missing values (geom_errorbar).
```

![](/tmp/6293aca4-dec0-4b30-866b-22b926db5be4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/6293aca4-dec0-4b30-866b-22b926db5be4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6293aca4-dec0-4b30-866b-22b926db5be4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


fage      agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
>=35      0-24 months   ki1000304-EU               INDIA       Control              NA                0.4713376   0.3931289   0.5495463
>=35      0-24 months   ki1000304-EU               INDIA       Zinc                 NA                0.4901961   0.4108564   0.5695358
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.6111111   0.5446430   0.6775793
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.6000000   0.5704401   0.6295599
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.1360104   0.1207624   0.1512583
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Other                NA                0.1069330   0.0898988   0.1239672
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.8209607   0.7976354   0.8442860
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.7065637   0.6771021   0.7360253
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.4900000   0.4728559   0.5071441
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.5296610   0.4924726   0.5668494
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.4454545   0.3521592   0.5387499
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  NA                0.4403670   0.3470944   0.5336395
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                NA                0.4915254   0.4009203   0.5821305
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      Control              NA                0.6428571   0.5438640   0.7418503
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      LNS                  NA                0.5454545   0.4164984   0.6744107
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2941176   0.2785505   0.3096848
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2826087   0.2338908   0.3313266
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.3076923   0.2608636   0.3545210
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.3561644   0.2747518   0.4375770
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0684564   0.0595073   0.0774054
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Other                NA                0.0585366   0.0436563   0.0734169
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                0.3396226   0.2878413   0.3914040
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Other                NA                0.2820513   0.2223617   0.3417409
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.2615385   0.2416118   0.2814651
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.2922535   0.2491489   0.3353581
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.3333333   0.2346315   0.4320351
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.3939394   0.3311948   0.4566840
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.0360481   0.0284971   0.0435991
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Other                NA                0.0286738   0.0205195   0.0368282
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.5961538   0.5568457   0.6354620
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.5000000   0.4525403   0.5474597
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.1857143   0.1693002   0.2021284
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.2664577   0.2266213   0.3062940
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.2528736   0.1610243   0.3447228
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  NA                0.2921348   0.1973486   0.3869211
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                NA                0.3043478   0.2097952   0.3989005
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      Control              NA                0.5384615   0.4229409   0.6539822
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      LNS                  NA                0.3333333   0.2047938   0.4618728
<25       0-24 months   ki1000304-EU               INDIA       Control              NA                0.5163043   0.4439953   0.5886134
<25       0-24 months   ki1000304-EU               INDIA       Zinc                 NA                0.4705882   0.3954510   0.5457255
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.5546218   0.5284330   0.5808107
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.5660377   0.5126962   0.6193793
<25       0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.1318427   0.1165149   0.1471705
<25       0-24 months   ki1119695-PROBIT           BELARUS     Other                NA                0.1225282   0.1095892   0.1354673
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.8000000   0.7592460   0.8407540
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.7096774   0.6639201   0.7554348
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.5681818   0.5472395   0.5891241
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.5416667   0.4900652   0.5932682
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.3965517   0.2703683   0.5227352
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  NA                0.4482759   0.3435339   0.5530178
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                NA                0.4931507   0.3781993   0.6081021
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2688172   0.2170134   0.3206210
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2631579   0.2195003   0.3068154
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.4736842   0.4156458   0.5317226
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.4363636   0.3382847   0.5344426
<25       0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0699245   0.0567729   0.0830761
<25       0-6 months    ki1119695-PROBIT           BELARUS     Other                NA                0.0674033   0.0586771   0.0761295
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.3913043   0.3686503   0.4139584
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.3444444   0.2827388   0.4061501
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2409639   0.1889569   0.2929709
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2941176   0.2622233   0.3260120
<25       6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.0392857   0.0302340   0.0483374
<25       6-24 months   ki1119695-PROBIT           BELARUS     Other                NA                0.0383780   0.0326574   0.0440986
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.6530612   0.5874268   0.7186957
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.4901961   0.4198723   0.5605198
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.1923077   0.1714125   0.2132029
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.2392638   0.1826285   0.2958992
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.2000000   0.0827969   0.3172031
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  NA                0.3287671   0.2206972   0.4368370
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                NA                0.2931034   0.1756246   0.4105823
[25-30)   0-24 months   ki1000304-EU               INDIA       Control              NA                0.4866667   0.4404598   0.5328735
[25-30)   0-24 months   ki1000304-EU               INDIA       Zinc                 NA                0.4360190   0.3886792   0.4833587
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.5920398   0.5501772   0.6339024
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.5510204   0.5060977   0.5959431
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.8285714   0.7942961   0.8628468
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.7204301   0.6538991   0.7869611
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.1428571   0.1279928   0.1577215
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Other                NA                0.1133758   0.1027907   0.1239609
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.8281250   0.7952534   0.8609966
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.7874016   0.7518924   0.8229108
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.5063291   0.4871661   0.5254921
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.4654255   0.4237158   0.5071353
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.3859649   0.2964457   0.4754841
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  NA                0.4886364   0.3840164   0.5932563
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                NA                0.4090909   0.3061881   0.5119937
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2366864   0.2121347   0.2612381
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2756410   0.2588783   0.2924037
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.3714286   0.3274855   0.4153716
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.3978495   0.3252899   0.4704090
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0651246   0.0564645   0.0737846
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Other                NA                0.0583581   0.0521170   0.0645991
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                0.3225806   0.2338598   0.4113014
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Other                NA                0.3333333   0.2498361   0.4168306
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.3191489   0.2972866   0.3410112
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.2833333   0.2355763   0.3310903
[25-30)   6-24 months   ki1000304-EU               INDIA       Control              NA                0.0474308   0.0212129   0.0736487
[25-30)   6-24 months   ki1000304-EU               INDIA       Zinc                 NA                0.0358566   0.0128317   0.0588815
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.3283582   0.2907067   0.3660097
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2878788   0.2537795   0.3219781
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.6250000   0.5711624   0.6788376
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.5272727   0.4243351   0.6302104
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.0385577   0.0273951   0.0497202
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Other                NA                0.0370370   0.0325465   0.0415276
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.6349206   0.5792338   0.6906075
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.6388889   0.5794969   0.6982809
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.1730769   0.1550435   0.1911103
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.1591837   0.1213301   0.1970372
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.2315789   0.1465729   0.3165850
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  NA                0.3188406   0.2086488   0.4290323
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                NA                0.2837838   0.1808489   0.3867186
[30-35)   0-24 months   ki1000304-EU               INDIA       Control              NA                0.4830508   0.4192288   0.5468729
[30-35)   0-24 months   ki1000304-EU               INDIA       Zinc                 NA                0.4201681   0.3573939   0.4829422
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.6666667   0.5955717   0.7377616
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.5480769   0.4976008   0.5985531
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.7692308   0.7327743   0.8056872
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.7111111   0.6381443   0.7840780
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.1279621   0.1137139   0.1422103
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Other                NA                0.1205357   0.1067481   0.1343233
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.8359375   0.8047727   0.8671023
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.7132353   0.6740054   0.7524652
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.5263158   0.5066917   0.5459398
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.4781250   0.4316079   0.5246421
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.4044944   0.3023425   0.5066462
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  NA                0.4615385   0.3589254   0.5641515
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                NA                0.3723404   0.2744342   0.4702466
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.3768116   0.3120237   0.4415995
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.3258427   0.2755545   0.3761308
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.4800000   0.4372399   0.5227601
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.3333333   0.2567804   0.4098863
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0624566   0.0513442   0.0735691
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Other                NA                0.0579329   0.0471843   0.0686814
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                0.4687500   0.3772960   0.5602040
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Other                NA                0.2413793   0.1667226   0.3160360
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.3636364   0.3407350   0.3865377
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.2254902   0.1760238   0.2749566
[30-35)   6-24 months   ki1000304-EU               INDIA       Control              NA                0.0390625   0.0054380   0.0726870
[30-35)   6-24 months   ki1000304-EU               INDIA       Zinc                 NA                0.0671141   0.0268645   0.1073637
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.4727273   0.3605748   0.5848797
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2424242   0.2175898   0.2672587
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.4166667   0.3647694   0.4685640
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.6037736   0.4955684   0.7119788
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.0417246   0.0348795   0.0485698
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Other                NA                0.0378096   0.0303029   0.0453163
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.6226415   0.5657157   0.6795674
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.4637681   0.3969450   0.5305912
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.2432432   0.2224926   0.2639939
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.2285714   0.1801876   0.2769553
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.2361111   0.1377965   0.3344257
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  NA                0.2428571   0.1421810   0.3435332
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                NA                0.2380952   0.1468107   0.3293798


### Parameter: E(Y)


fage      agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
>=35      0-24 months   ki1000304-EU               INDIA       NA                   NA                0.4806452   0.4249377   0.5363526
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.6046512   0.5312697   0.6780326
>=35      0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1207640   0.0972993   0.1442287
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7602459   0.7223281   0.7981637
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.5227273   0.4817587   0.5636959
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.4599407   0.4065591   0.5133222
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      NA                   NA                0.5833333   0.4200030   0.7466637
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2875000   0.2366284   0.3383716
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3434343   0.2494196   0.4374491
>=35      0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0632588   0.0458471   0.0806704
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.3053435   0.2261744   0.3845126
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.2865330   0.2390287   0.3340372
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3684211   0.2497838   0.4870583
>=35      6-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0321564   0.0210267   0.0432860
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.5400000   0.4780952   0.6019048
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.2519280   0.2087322   0.2951239
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.2835821   0.2293546   0.3378096
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      NA                   NA                0.4193548   0.2427780   0.5959317
<25       0-24 months   ki1000304-EU               INDIA       NA                   NA                0.4943503   0.4421944   0.5465061
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.5611511   0.5014059   0.6208963
<25       0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1269812   0.1063691   0.1475933
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7553191   0.6937033   0.8169350
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.5454545   0.4897556   0.6011535
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.4495413   0.3833554   0.5157272
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2654867   0.1975213   0.3334522
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4459459   0.3319200   0.5599719
<25       0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0686162   0.0527120   0.0845204
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.3497537   0.2839890   0.4155183
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2722772   0.2045041   0.3400504
<25       6-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0388111   0.0280578   0.0495643
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.5700000   0.4724781   0.6675219
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.2328042   0.1723930   0.2932155
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.2840909   0.2172740   0.3509079
[25-30)   0-24 months   ki1000304-EU               INDIA       NA                   NA                0.4621560   0.4290458   0.4952661
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.5717884   0.5083367   0.6352402
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.7500000   0.6746910   0.8253090
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1275079   0.1074634   0.1475524
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8078431   0.7593899   0.8562964
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.4725275   0.4266041   0.5184508
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.4241379   0.3671593   0.4811166
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2553846   0.2228569   0.2879124
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3906250   0.3057717   0.4754783
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0616122   0.0506940   0.0725304
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.3275862   0.2057457   0.4494267
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.2891986   0.2366529   0.3417443
[25-30)   6-24 months   ki1000304-EU               INDIA       NA                   NA                0.0416667   0.0242038   0.0591296
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3082707   0.2549266   0.3616147
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.5492958   0.4327362   0.6658554
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0377615   0.0256377   0.0498854
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.6370370   0.5556211   0.7184529
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.1616162   0.1196822   0.2035501
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.2731092   0.2163840   0.3298345
[30-35)   0-24 months   ki1000304-EU               INDIA       NA                   NA                0.4514768   0.4066299   0.4963237
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.6000000   0.5101535   0.6898465
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.7241379   0.6424504   0.8058255
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1241379   0.1041075   0.1441684
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7727273   0.7220799   0.8233747
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.4854111   0.4348939   0.5359283
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.4124088   0.3540147   0.4708028
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3481013   0.2667706   0.4294319
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3652174   0.2768313   0.4536035
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0601351   0.0445903   0.0756800
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.3606557   0.2391529   0.4821585
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.2447257   0.1898748   0.2995767
[30-35)   6-24 months   ki1000304-EU               INDIA       NA                   NA                0.0541516   0.0274517   0.0808516
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3471074   0.2167430   0.4774719
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.5692308   0.4479129   0.6905486
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0397039   0.0295006   0.0499072
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.5327869   0.4438894   0.6216844
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.2307692   0.1781193   0.2834192
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.2389381   0.1832183   0.2946578


### Parameter: RR


fage      agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
>=35      0-24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-24 months   ki1000304-EU               INDIA       Zinc                 Control           1.0400106   0.8248415   1.3113090
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.9818182   0.8714547   1.1061584
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Other                Control           0.7862123   0.6470055   0.9553703
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.8606547   0.8183062   0.9051949
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           1.0809409   0.9993856   1.1691515
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  Control           0.9885789   0.7339190   1.3316023
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                Control           1.1034244   0.8347806   1.4585215
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      LNS                  Control           0.8484848   0.6398957   1.1250686
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.9608696   0.8027089   1.1501933
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           1.1575342   0.8795711   1.5233397
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Other                Control           0.8550933   0.6425224   1.1379906
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Other                Control           0.8304843   0.6398151   1.0779742
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           1.1174399   0.9465165   1.3192289
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.1818182   0.8423172   1.6581571
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Other                Control           0.7954334   0.5586874   1.1325014
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.8387097   0.7471687   0.9414660
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           1.4347721   1.2060266   1.7069035
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  Control           1.1552605   0.7098433   1.8801709
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                Control           1.2035573   0.7462604   1.9410787
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      LNS                  Control           0.6190476   0.3981791   0.9624311
<25       0-24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<25       0-24 months   ki1000304-EU               INDIA       Zinc                 Control           0.9114551   0.7370505   1.1271281
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.0205832   0.9178901   1.1347655
<25       0-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
<25       0-24 months   ki1119695-PROBIT           BELARUS     Other                Control           0.9293517   0.7952411   1.0860789
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.8870968   0.8171164   0.9630705
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.9533333   0.8607624   1.0558598
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  Control           1.1304348   0.7617230   1.6776215
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                Control           1.2435974   0.8382527   1.8449502
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.9789474   0.7608235   1.2596062
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.9212121   0.7131553   1.1899678
<25       0-6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
<25       0-6 months    ki1119695-PROBIT           BELARUS     Other                Control           0.9639440   0.7676312   1.2104615
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.8802469   0.7291902   1.0625960
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.2205882   0.9591255   1.5533272
<25       6-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
<25       6-24 months   ki1119695-PROBIT           BELARUS     Other                Control           0.9768942   0.7429582   1.2844899
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.7506127   0.6300051   0.8943094
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           1.2441718   0.9588858   1.6143356
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  Control           1.6438356   0.8395577   3.2185941
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                Control           1.4655172   0.7205318   2.9807718
[25-30)   0-24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000304-EU               INDIA       Zinc                 Control           0.8959294   0.7755948   1.0349341
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.9307151   0.8355040   1.0367762
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.8694846   0.7858061   0.9620739
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Other                Control           0.7936306   0.6909132   0.9116189
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.9508245   0.8953833   1.0096987
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.9192154   0.8340056   1.0131311
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  Control           1.2660124   0.9233202   1.7358955
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                Control           1.0599174   0.7527973   1.4923338
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.1645833   1.0326139   1.3134187
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           1.0711332   0.8618496   1.3312371
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Other                Control           0.8960992   0.7558753   1.0623363
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Other                Control           1.0333333   0.7123269   1.4989997
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.8877778   0.7400954   1.0649294
[25-30)   6-24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1000304-EU               INDIA       Zinc                 Control           0.7559761   0.3239950   1.7639159
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.8767218   0.7434857   1.0338343
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.8436364   0.6815269   1.0443056
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Other                Control           0.9605624   0.7027820   1.3128966
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           1.0062500   0.8855245   1.1434343
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.9197279   0.7094250   1.1923732
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  Control           1.3768116   0.8316080   2.2794515
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                Control           1.2254300   0.7314255   2.0530848
[30-35)   0-24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-24 months   ki1000304-EU               INDIA       Zinc                 Control           0.8698216   0.7125464   1.0618111
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.8221154   0.7146901   0.9456878
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.9244444   0.8256467   1.0350644
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Other                Control           0.9419643   0.8031085   1.1048280
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.8532161   0.7983650   0.9118356
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.9084375   0.8185508   1.0081948
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  Control           1.1410256   0.8150258   1.5974212
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                Control           0.9205083   0.6392816   1.3254494
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.8647364   0.6872611   1.0880422
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.6944444   0.5428218   0.8884188
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Other                Control           0.9275693   0.7173100   1.1994602
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Other                Control           0.5149425   0.3572262   0.7422911
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.6200980   0.4935596   0.7790783
[30-35)   6-24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6-24 months   ki1000304-EU               INDIA       Zinc                 Control           1.7181208   0.6017746   4.9053898
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.5128205   0.3960803   0.6639685
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           1.4490566   1.1649360   1.8024724
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Other                Control           0.9061712   0.7004420   1.1723258
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.7448397   0.6279894   0.8834323
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.9396825   0.7479374   1.1805845
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      LNS                  Control           1.0285714   0.5715554   1.8510177
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Other                Control           1.0084034   0.5725546   1.7760355


### Parameter: PAR


fage      agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
>=35      0-24 months   ki1000304-EU               INDIA       Control              NA                 0.0093076   -0.0456869    0.0643021
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0064599   -0.0364560    0.0235361
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0152463   -0.0332147    0.0027221
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0607148   -0.0906095   -0.0308201
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.0327273   -0.0044816    0.0699362
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0144861   -0.0621394    0.0911116
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      Control              NA                -0.0595238   -0.1894359    0.0703883
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0066176   -0.0550082    0.0417729
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.0357420   -0.0457800    0.1172641
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0051976   -0.0201500    0.0097548
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0342791   -0.0941661    0.0256078
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.0249945   -0.0181284    0.0681174
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0350877   -0.0283599    0.0985354
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0038917   -0.0121619    0.0043785
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0561538   -0.1039772   -0.0083305
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.0662137    0.0262580    0.1061695
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0307085   -0.0461004    0.1075175
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      Control              NA                -0.1191067   -0.2526520    0.0144386
<25       0-24 months   ki1000304-EU               INDIA       Control              NA                -0.0219541   -0.0720884    0.0281803
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0065292   -0.0477412    0.0607996
<25       0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0048615   -0.0180344    0.0083114
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0446809   -0.0908937    0.0015320
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0227273   -0.0743392    0.0288847
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0529896   -0.0557783    0.1617574
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0033305   -0.0466696    0.0400086
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0277383   -0.1258885    0.0704120
<25       0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0013083   -0.0100608    0.0074442
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0415507   -0.1032903    0.0201890
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0313134   -0.0116243    0.0742510
<25       6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0004747   -0.0062218    0.0052724
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0830612   -0.1551905   -0.0109319
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.0404965   -0.0161860    0.0971791
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0840909   -0.0216290    0.1898108
[25-30)   0-24 months   ki1000304-EU               INDIA       Control              NA                -0.0245107   -0.0565689    0.0075475
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0202514   -0.0679333    0.0274305
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0785714   -0.1456285   -0.0115144
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0153493   -0.0277341   -0.0029644
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0202819   -0.0558793    0.0153155
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0338016   -0.0755357    0.0079325
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0381730   -0.0322531    0.1085991
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0186982   -0.0025397    0.0399362
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.0191964   -0.0533920    0.0917849
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0035124   -0.0099264    0.0029017
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0050056   -0.0785033    0.0885144
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0299503   -0.0777320    0.0178314
[25-30)   6-24 months   ki1000304-EU               INDIA       Control              NA                -0.0057642   -0.0231488    0.0116205
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0200875   -0.0577492    0.0175741
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0757042   -0.1790853    0.0276769
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0007961   -0.0053298    0.0037375
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0021164   -0.0572766    0.0615094
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0114608   -0.0493191    0.0263976
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0415303   -0.0268445    0.1099051
[30-35)   0-24 months   ki1000304-EU               INDIA       Control              NA                -0.0315741   -0.0766122    0.0134641
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0666667   -0.1315238   -0.0018095
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0450928   -0.1181940    0.0280083
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0038242   -0.0176947    0.0100463
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0632102   -0.1031340   -0.0232864
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0409046   -0.0874544    0.0056451
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0079144   -0.0761446    0.0919734
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0287103   -0.0812018    0.0237811
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1147826   -0.1921368   -0.0374284
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0023215   -0.0131004    0.0084574
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1080943   -0.1880886   -0.0280999
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.1189106   -0.1687519   -0.0690693
[30-35)   6-24 months   ki1000304-EU               INDIA       Control              NA                 0.0150891   -0.0131704    0.0433486
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.1256198   -0.2143119   -0.0369278
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.1525641    0.0429070    0.2622212
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0020207   -0.0095661    0.0055247
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0898546   -0.1581351   -0.0215742
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0124740   -0.0608623    0.0359143
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0028269   -0.0784857    0.0841396


### Parameter: PAF


fage      agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
>=35      0-24 months   ki1000304-EU               INDIA       Control              NA                 0.0193648   -0.1020159    0.1273760
>=35      0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0106838   -0.0621223    0.0382637
>=35      0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.1262491   -0.3076491    0.0299868
>=35      0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0798621   -0.1232443   -0.0381554
>=35      0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.0626087   -0.0065831    0.1270443
>=35      0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0314956   -0.1503286    0.1845802
>=35      0-24 months   ki1148112-LCNI-5           MALAWI      Control              NA                -0.1020408   -0.3777116    0.1184701
>=35      0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0230179   -0.2105557    0.1354668
>=35      0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.1040724   -0.1365590    0.2937575
>=35      0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0821639   -0.3710214    0.1458348
>=35      0-6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1122642   -0.3542840    0.0865051
>=35      0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.0872308   -0.0611714    0.2148793
>=35      6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0952381   -0.0765284    0.2395983
>=35      6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.1210241   -0.4511613    0.1340073
>=35      6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1039886   -0.2065396   -0.0101540
>=35      6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.2628280    0.1346681    0.3720068
>=35      6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.1082880   -0.2079129    0.3417155
>=35      6-24 months   ki1148112-LCNI-5           MALAWI      Control              NA                -0.2840237   -0.7757629    0.0715445
<25       0-24 months   ki1000304-EU               INDIA       Control              NA                -0.0444099   -0.1510359    0.0523387
<25       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0116354   -0.0887416    0.1027581
<25       0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0382853   -0.1520988    0.0642848
<25       0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0591549   -0.1260644    0.0037789
<25       0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0416667   -0.1450592    0.0523901
<25       0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.1178747   -0.1608746    0.3296908
<25       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0125448   -0.1921514    0.1400027
<25       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0622010   -0.3238836    0.1477568
<25       0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0190670   -0.1578309    0.1030663
<25       0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.1187998   -0.3349764    0.0623708
<25       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.1150055   -0.0379210    0.2453999
<25       6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0122300   -0.1738389    0.1271294
<25       6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1457214   -0.3013756   -0.0086847
<25       6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.1739510   -0.0545440    0.3529366
<25       6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.2960000   -0.1894902    0.5833375
[25-30)   0-24 months   ki1000304-EU               INDIA       Control              NA                -0.0530356   -0.1248278    0.0141745
[25-30)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0354176   -0.1255067    0.0474605
[25-30)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1047619   -0.2082151   -0.0101668
[25-30)   0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.1203790   -0.2367950   -0.0149209
[25-30)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0251062   -0.0712993    0.0190951
[25-30)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0715337   -0.1705263    0.0190870
[25-30)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0900014   -0.0923376    0.2419034
[25-30)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0732159   -0.0074691    0.1474392
[25-30)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.0491429   -0.1451389    0.2104632
[25-30)   0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0570077   -0.1735460    0.0479578
[25-30)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0152801   -0.2706879    0.2368911
[25-30)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.1035632   -0.3020208    0.0646450
[25-30)   6-24 months   ki1000304-EU               INDIA       Control              NA                -0.1383399   -0.6370479    0.2084424
[25-30)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0651620   -0.2038816    0.0575734
[25-30)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1378205   -0.3739575    0.0577325
[25-30)   6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0210832   -0.1516436    0.0946758
[25-30)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0033223   -0.0940712    0.0920459
[25-30)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0709135   -0.3537480    0.1528293
[25-30)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.1520648   -0.1382021    0.3683071
[30-35)   0-24 months   ki1000304-EU               INDIA       Control              NA                -0.0699351   -0.1746929    0.0254806
[30-35)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.1111111   -0.2368582    0.0018517
[30-35)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0622711   -0.1751567    0.0397708
[30-35)   0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0308057   -0.1527823    0.0782645
[30-35)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0818015   -0.1392654   -0.0272359
[30-35)   0-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0842680   -0.1934572    0.0149314
[30-35)   0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0191906   -0.2073675    0.2032360
[30-35)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0824769   -0.2586092    0.0690070
[30-35)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.3142857   -0.6273272   -0.0614626
[30-35)   0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0386046   -0.2427307    0.1319926
[30-35)   0-6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.2997159   -0.6348104   -0.0333072
[30-35)   0-6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.4858934   -0.8257014   -0.2093321
[30-35)   6-24 months   ki1000304-EU               INDIA       Control              NA                 0.2786458   -0.4527243    0.6418096
[30-35)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.3619048   -0.7575823   -0.0553045
[30-35)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.2680180    0.1099587    0.3980081
[30-35)   6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0508946   -0.2711118    0.1311705
[30-35)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1686502   -0.3296700   -0.0271295
[30-35)   6-24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0540541   -0.3000166    0.1453725
[30-35)   6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0118313   -0.3944175    0.2997238
