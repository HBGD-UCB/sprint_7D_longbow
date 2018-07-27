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

* fage
* agecat
* studyid
* country

## Data Summary

fage      agecat      studyid                    country     tr          stunted   n_cell      n
--------  ----------  -------------------------  ----------  ---------  --------  -------  -----
[30-35)   24 months   ki1000304-EU               INDIA       Control           0       13     64
[30-35)   24 months   ki1000304-EU               INDIA       Control           1       19     64
[30-35)   24 months   ki1000304-EU               INDIA       Zinc              0       16     64
[30-35)   24 months   ki1000304-EU               INDIA       Zinc              1       16     64
<25       6 months    ki1000304-EU               INDIA       Control           0       30     89
<25       6 months    ki1000304-EU               INDIA       Control           1       15     89
<25       6 months    ki1000304-EU               INDIA       Zinc              0       28     89
<25       6 months    ki1000304-EU               INDIA       Zinc              1       16     89
[25-30)   24 months   ki1000304-EU               INDIA       Control           0       22    106
[25-30)   24 months   ki1000304-EU               INDIA       Control           1       35    106
[25-30)   24 months   ki1000304-EU               INDIA       Zinc              0       17    106
[25-30)   24 months   ki1000304-EU               INDIA       Zinc              1       32    106
>=35      24 months   ki1000304-EU               INDIA       Control           0        5     43
>=35      24 months   ki1000304-EU               INDIA       Control           1       14     43
>=35      24 months   ki1000304-EU               INDIA       Zinc              0        9     43
>=35      24 months   ki1000304-EU               INDIA       Zinc              1       15     43
[25-30)   6 months    ki1000304-EU               INDIA       Control           0       49    152
[25-30)   6 months    ki1000304-EU               INDIA       Control           1       31    152
[25-30)   6 months    ki1000304-EU               INDIA       Zinc              0       53    152
[25-30)   6 months    ki1000304-EU               INDIA       Zinc              1       19    152
<25       24 months   ki1000304-EU               INDIA       Control           0        6     39
<25       24 months   ki1000304-EU               INDIA       Control           1       11     39
<25       24 months   ki1000304-EU               INDIA       Zinc              0       12     39
<25       24 months   ki1000304-EU               INDIA       Zinc              1       10     39
[30-35)   6 months    ki1000304-EU               INDIA       Control           0       25     67
[30-35)   6 months    ki1000304-EU               INDIA       Control           1       12     67
[30-35)   6 months    ki1000304-EU               INDIA       Zinc              0       22     67
[30-35)   6 months    ki1000304-EU               INDIA       Zinc              1        8     67
>=35      6 months    ki1000304-EU               INDIA       Control           0       25     55
>=35      6 months    ki1000304-EU               INDIA       Control           1       11     55
>=35      6 months    ki1000304-EU               INDIA       Zinc              0       14     55
>=35      6 months    ki1000304-EU               INDIA       Zinc              1        5     55
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control           0      103    264
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control           1       33    264
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other             0       91    264
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other             1       37    264
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Control           0       57    172
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Control           1       21    172
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Other             0       71    172
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Other             1       23    172
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control           0       35    124
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control           1       20    124
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other             0       48    124
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other             1       21    124
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control           0       20     58
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control           1        6     58
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other             0       20     58
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other             1       12     58
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Control           0       18     55
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Control           1        7     55
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Other             0       20     55
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Other             1       10     55
<25       Birth       ki1000304b-SAS-CompFeed    INDIA       Control           0       14     46
<25       Birth       ki1000304b-SAS-CompFeed    INDIA       Control           1        9     46
<25       Birth       ki1000304b-SAS-CompFeed    INDIA       Other             0       19     46
<25       Birth       ki1000304b-SAS-CompFeed    INDIA       Other             1        4     46
[30-35)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control           0       15     26
[30-35)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control           1        1     26
[30-35)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other             0        7     26
[30-35)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other             1        3     26
>=35      Birth       ki1000304b-SAS-CompFeed    INDIA       Control           0        4     14
>=35      Birth       ki1000304b-SAS-CompFeed    INDIA       Control           1        1     14
>=35      Birth       ki1000304b-SAS-CompFeed    INDIA       Other             0        7     14
>=35      Birth       ki1000304b-SAS-CompFeed    INDIA       Other             1        2     14
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           0       12    109
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           1       15    109
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             0       50    109
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             1       32    109
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           0       14     86
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           1        9     86
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             0       37     86
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             1       26     86
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           0       11     97
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           1       14     97
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             0       46     97
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             1       26     97
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           0        6     63
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           1        9     63
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             0       28     63
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             1       20     63
[25-30)   Birth       ki1119695-PROBIT           BELARUS     Control           0     2437   5061
[25-30)   Birth       ki1119695-PROBIT           BELARUS     Control           1       10   5061
[25-30)   Birth       ki1119695-PROBIT           BELARUS     Maternal          0     2612   5061
[25-30)   Birth       ki1119695-PROBIT           BELARUS     Maternal          1        2   5061
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Control           0     2370   5244
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Control           1      192   5244
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Maternal          0     2543   5244
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Maternal          1      139   5244
>=35      Birth       ki1119695-PROBIT           BELARUS     Control           0      663   1352
>=35      Birth       ki1119695-PROBIT           BELARUS     Control           1        0   1352
>=35      Birth       ki1119695-PROBIT           BELARUS     Maternal          0      688   1352
>=35      Birth       ki1119695-PROBIT           BELARUS     Maternal          1        1   1352
>=35      6 months    ki1119695-PROBIT           BELARUS     Control           0      626   1396
>=35      6 months    ki1119695-PROBIT           BELARUS     Control           1       56   1396
>=35      6 months    ki1119695-PROBIT           BELARUS     Maternal          0      671   1396
>=35      6 months    ki1119695-PROBIT           BELARUS     Maternal          1       43   1396
[30-35)   Birth       ki1119695-PROBIT           BELARUS     Control           0     1269   2568
[30-35)   Birth       ki1119695-PROBIT           BELARUS     Control           1        1   2568
[30-35)   Birth       ki1119695-PROBIT           BELARUS     Maternal          0     1296   2568
[30-35)   Birth       ki1119695-PROBIT           BELARUS     Maternal          1        2   2568
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Control           0     1232   2634
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Control           1       82   2634
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Maternal          0     1241   2634
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Maternal          1       79   2634
<25       Birth       ki1119695-PROBIT           BELARUS     Control           0     2135   4409
<25       Birth       ki1119695-PROBIT           BELARUS     Control           1        9   4409
<25       Birth       ki1119695-PROBIT           BELARUS     Maternal          0     2259   4409
<25       Birth       ki1119695-PROBIT           BELARUS     Maternal          1        6   4409
<25       6 months    ki1119695-PROBIT           BELARUS     Control           0     2126   4698
<25       6 months    ki1119695-PROBIT           BELARUS     Control           1      151   4698
<25       6 months    ki1119695-PROBIT           BELARUS     Maternal          0     2293   4698
<25       6 months    ki1119695-PROBIT           BELARUS     Maternal          1      128   4698
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Control           0      125    301
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Control           1       23    301
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Maternal          0      131    301
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Maternal          1       22    301
[30-35)   24 months   ki1119695-PROBIT           BELARUS     Control           0       59    151
[30-35)   24 months   ki1119695-PROBIT           BELARUS     Control           1        4    151
[30-35)   24 months   ki1119695-PROBIT           BELARUS     Maternal          0       77    151
[30-35)   24 months   ki1119695-PROBIT           BELARUS     Maternal          1       11    151
<25       24 months   ki1119695-PROBIT           BELARUS     Control           0       93    270
<25       24 months   ki1119695-PROBIT           BELARUS     Control           1       13    270
<25       24 months   ki1119695-PROBIT           BELARUS     Maternal          0      149    270
<25       24 months   ki1119695-PROBIT           BELARUS     Maternal          1       15    270
>=35      24 months   ki1119695-PROBIT           BELARUS     Control           0       39     93
>=35      24 months   ki1119695-PROBIT           BELARUS     Control           1        6     93
>=35      24 months   ki1119695-PROBIT           BELARUS     Maternal          0       44     93
>=35      24 months   ki1119695-PROBIT           BELARUS     Maternal          1        4     93
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Control           0       93    368
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Control           1       83    368
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Other             0      128    368
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Other             1       64    368
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Control           0      147    335
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Control           1        8    335
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Other             0      169    335
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Other             1       11    335
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Control           0       83    178
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Control           1        5    178
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Other             0       84    178
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Other             1        6    178
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Control           0       47    213
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Control           1       54    213
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Other             0       65    213
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Other             1       47    213
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Control           0        6     72
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Control           1       30     72
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Other             0        9     72
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Other             1       27     72
<25       24 months   ki1135781-COHORTS          GUATEMALA   Control           0        2     51
<25       24 months   ki1135781-COHORTS          GUATEMALA   Control           1       23     51
<25       24 months   ki1135781-COHORTS          GUATEMALA   Other             0        6     51
<25       24 months   ki1135781-COHORTS          GUATEMALA   Other             1       20     51
[25-30)   Birth       ki1135781-COHORTS          GUATEMALA   Control           0       78    181
[25-30)   Birth       ki1135781-COHORTS          GUATEMALA   Control           1        4    181
[25-30)   Birth       ki1135781-COHORTS          GUATEMALA   Other             0       90    181
[25-30)   Birth       ki1135781-COHORTS          GUATEMALA   Other             1        9    181
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Control           0       51    186
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Control           1       40    186
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Other             0       60    186
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Other             1       35    186
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Control           0       13    124
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Control           1       52    124
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Other             0       15    124
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Other             1       44    124
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Control           0        8     60
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Control           1       22     60
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Other             0        9     60
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Other             1       21     60
<25       6 months    ki1135781-COHORTS          GUATEMALA   Control           0       42    134
<25       6 months    ki1135781-COHORTS          GUATEMALA   Control           1       24    134
<25       6 months    ki1135781-COHORTS          GUATEMALA   Other             0       43    134
<25       6 months    ki1135781-COHORTS          GUATEMALA   Other             1       25    134
<25       Birth       ki1135781-COHORTS          GUATEMALA   Control           0       63    129
<25       Birth       ki1135781-COHORTS          GUATEMALA   Control           1        2    129
<25       Birth       ki1135781-COHORTS          GUATEMALA   Other             0       59    129
<25       Birth       ki1135781-COHORTS          GUATEMALA   Other             1        5    129
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control           0       37    377
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control           1       20    377
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS               0      238    377
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS               1       82    377
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control           0       13    153
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control           1       10    153
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS               0       64    153
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS               1       66    153
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      Control           0       71    571
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      Control           1       29    571
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS               0      332    571
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS               1      139    571
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control           0       51    455
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control           1       28    455
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS               0      267    455
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS               1      109    455
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control           0       15    192
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control           1       19    192
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS               0       79    192
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS               1       79    192
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      Control           0       28    308
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      Control           1       16    308
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS               0      178    308
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS               1       86    308
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      Control           0        6    139
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      Control           1       12    139
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS               0       52    139
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS               1       69    139
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      Control           0       25    261
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      Control           1       22    261
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS               0      115    261
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS               1       99    261
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control           0       74    304
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control           1       26    304
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          0      155    304
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          1       49    304
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control           0       85    254
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control           1       18    254
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          0      120    254
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          1       31    254
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control           0       37    190
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control           1       14    190
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          0      110    190
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          1       29    190
<25       Birth       ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          1        1      1
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control           0       64    252
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control           1       20    252
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          0      133    252
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          1       35    252
[25-30)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control           0        4     23
[25-30)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control           1        5     23
[25-30)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          0        9     23
[25-30)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          1        5     23
>=35      24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          0        8     17
>=35      24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          1        9     17
<25       24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          0        8     12
<25       24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          1        4     12
[30-35)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control           0        1     13
[30-35)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Control           1        2     13
[30-35)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          0        8     13
[30-35)   24 months   ki1148112-iLiNS-DYAD-M     MALAWI      Maternal          1        2     13
[30-35)   6 months    ki1148112-LCNI-5           MALAWI      Control           0        3     20
[30-35)   6 months    ki1148112-LCNI-5           MALAWI      Control           1        2     20
[30-35)   6 months    ki1148112-LCNI-5           MALAWI      LNS               0        6     20
[30-35)   6 months    ki1148112-LCNI-5           MALAWI      LNS               1        2     20
[30-35)   6 months    ki1148112-LCNI-5           MALAWI      Other             0        3     20
[30-35)   6 months    ki1148112-LCNI-5           MALAWI      Other             1        4     20
[30-35)   24 months   ki1148112-LCNI-5           MALAWI      Control           0        1     10
[30-35)   24 months   ki1148112-LCNI-5           MALAWI      Control           1        1     10
[30-35)   24 months   ki1148112-LCNI-5           MALAWI      LNS               0        3     10
[30-35)   24 months   ki1148112-LCNI-5           MALAWI      LNS               1        0     10
[30-35)   24 months   ki1148112-LCNI-5           MALAWI      Other             0        4     10
[30-35)   24 months   ki1148112-LCNI-5           MALAWI      Other             1        1     10
<25       6 months    ki1148112-LCNI-5           MALAWI      Control           0        2     23
<25       6 months    ki1148112-LCNI-5           MALAWI      Control           1        0     23
<25       6 months    ki1148112-LCNI-5           MALAWI      LNS               0       10     23
<25       6 months    ki1148112-LCNI-5           MALAWI      LNS               1        6     23
<25       6 months    ki1148112-LCNI-5           MALAWI      Other             0        1     23
<25       6 months    ki1148112-LCNI-5           MALAWI      Other             1        4     23
[25-30)   6 months    ki1148112-LCNI-5           MALAWI      Control           0        6     27
[25-30)   6 months    ki1148112-LCNI-5           MALAWI      Control           1        2     27
[25-30)   6 months    ki1148112-LCNI-5           MALAWI      LNS               0        9     27
[25-30)   6 months    ki1148112-LCNI-5           MALAWI      LNS               1        4     27
[25-30)   6 months    ki1148112-LCNI-5           MALAWI      Other             0        5     27
[25-30)   6 months    ki1148112-LCNI-5           MALAWI      Other             1        1     27
>=35      6 months    ki1148112-LCNI-5           MALAWI      Control           0        9     36
>=35      6 months    ki1148112-LCNI-5           MALAWI      Control           1        1     36
>=35      6 months    ki1148112-LCNI-5           MALAWI      LNS               0       17     36
>=35      6 months    ki1148112-LCNI-5           MALAWI      LNS               1        5     36
>=35      6 months    ki1148112-LCNI-5           MALAWI      Other             0        2     36
>=35      6 months    ki1148112-LCNI-5           MALAWI      Other             1        2     36
>=35      24 months   ki1148112-LCNI-5           MALAWI      Control           0        3     20
>=35      24 months   ki1148112-LCNI-5           MALAWI      Control           1        1     20
>=35      24 months   ki1148112-LCNI-5           MALAWI      LNS               0        9     20
>=35      24 months   ki1148112-LCNI-5           MALAWI      LNS               1        5     20
>=35      24 months   ki1148112-LCNI-5           MALAWI      Other             0        1     20
>=35      24 months   ki1148112-LCNI-5           MALAWI      Other             1        1     20
<25       24 months   ki1148112-LCNI-5           MALAWI      Control           0        2     11
<25       24 months   ki1148112-LCNI-5           MALAWI      Control           1        0     11
<25       24 months   ki1148112-LCNI-5           MALAWI      LNS               0        5     11
<25       24 months   ki1148112-LCNI-5           MALAWI      LNS               1        2     11
<25       24 months   ki1148112-LCNI-5           MALAWI      Other             0        1     11
<25       24 months   ki1148112-LCNI-5           MALAWI      Other             1        1     11
[25-30)   24 months   ki1148112-LCNI-5           MALAWI      Control           0        3     10
[25-30)   24 months   ki1148112-LCNI-5           MALAWI      Control           1        1     10
[25-30)   24 months   ki1148112-LCNI-5           MALAWI      LNS               0        2     10
[25-30)   24 months   ki1148112-LCNI-5           MALAWI      LNS               1        1     10
[25-30)   24 months   ki1148112-LCNI-5           MALAWI      Other             0        2     10
[25-30)   24 months   ki1148112-LCNI-5           MALAWI      Other             1        1     10
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      Control           0       85    177
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      Control           1       18    177
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      LNS               0       59    177
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      LNS               1       15    177
<25       6 months    iLiNS_DYADM_LNS            MALAWI      Control           0       37    127
<25       6 months    iLiNS_DYADM_LNS            MALAWI      Control           1       14    127
<25       6 months    iLiNS_DYADM_LNS            MALAWI      LNS               0       62    127
<25       6 months    iLiNS_DYADM_LNS            MALAWI      LNS               1       14    127
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      Control           0       74    196
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      Control           1       26    196
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      LNS               0       75    196
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      LNS               1       21    196
<25       Birth       iLiNS_DYADM_LNS            MALAWI      LNS               1        1      1
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      Control           0       64    164
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      Control           1       20    164
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      LNS               0       60    164
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      LNS               1       20    164
[25-30)   24 months   iLiNS_DYADM_LNS            MALAWI      Control           0        4     16
[25-30)   24 months   iLiNS_DYADM_LNS            MALAWI      Control           1        5     16
[25-30)   24 months   iLiNS_DYADM_LNS            MALAWI      LNS               0        4     16
[25-30)   24 months   iLiNS_DYADM_LNS            MALAWI      LNS               1        3     16
>=35      24 months   iLiNS_DYADM_LNS            MALAWI      LNS               0        3      4
>=35      24 months   iLiNS_DYADM_LNS            MALAWI      LNS               1        1      4
<25       24 months   iLiNS_DYADM_LNS            MALAWI      LNS               0        4      7
<25       24 months   iLiNS_DYADM_LNS            MALAWI      LNS               1        3      7
[30-35)   24 months   iLiNS_DYADM_LNS            MALAWI      Control           0        1      8
[30-35)   24 months   iLiNS_DYADM_LNS            MALAWI      Control           1        2      8
[30-35)   24 months   iLiNS_DYADM_LNS            MALAWI      LNS               0        4      8
[30-35)   24 months   iLiNS_DYADM_LNS            MALAWI      LNS               1        1      8


The following strata were considered:

* fage: [25-30), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: [25-30), agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* fage: [25-30), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [25-30), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [25-30), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [25-30), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [25-30), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [25-30), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: [25-30), agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* fage: [25-30), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [25-30), agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [25-30), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [25-30), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [25-30), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [25-30), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [25-30), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [25-30), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [25-30), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [25-30), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [30-35), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: [30-35), agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* fage: [30-35), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [30-35), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [30-35), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [30-35), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [30-35), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [30-35), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: [30-35), agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* fage: [30-35), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [30-35), agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: [30-35), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [30-35), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [30-35), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: [30-35), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [30-35), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [30-35), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [30-35), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [30-35), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: <25, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: <25, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* fage: <25, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: <25, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: <25, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: <25, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: <25, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: <25, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* fage: <25, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: <25, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: <25, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: <25, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: <25, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: <25, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: <25, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: <25, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: <25, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fage: <25, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: <25, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: >=35, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: >=35, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* fage: >=35, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: >=35, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: >=35, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: >=35, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: >=35, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: >=35, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* fage: >=35, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: >=35, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fage: >=35, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: >=35, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: >=35, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* fage: >=35, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: >=35, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: >=35, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fage: >=35, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* fage: <25, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [30-35), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: >=35, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fage: [25-30), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fage: >=35, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [30-35), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fage: [30-35), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: >=35, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fage: <25, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: [25-30), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: <25, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fage: <25, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [25-30), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: <25, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [30-35), agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* fage: [30-35), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [30-35), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [25-30), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: >=35, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: [25-30), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* fage: <25, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: [25-30), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: >=35, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: <25, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* fage: [30-35), agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr         0 1
##   Control  0 0
##   LNS      0 0
##   Maternal 8 9
##   Other    0 0
##   Zinc     0 0
```




# Results Detail

## Results Plots
![](/tmp/ec1c008c-00af-4f71-b366-5f42768dd2b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ec1c008c-00af-4f71-b366-5f42768dd2b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ec1c008c-00af-4f71-b366-5f42768dd2b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ec1c008c-00af-4f71-b366-5f42768dd2b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


fage      agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Control              NA                0.0516129   0.0354734   0.0677524
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Other                NA                0.0611111   0.0422809   0.0799414
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                0.2600000   0.2160251   0.3039749
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      LNS                  NA                0.2187500   0.1781424   0.2593576
>=35      6 months    ki1000304-EU               INDIA       Control              NA                0.3055556   0.1536949   0.4574162
>=35      6 months    ki1000304-EU               INDIA       Zinc                 NA                0.2631579   0.0633323   0.4629835
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2800000   0.2356396   0.3243604
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.3333333   0.2914784   0.3751883
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.3913043   0.3376493   0.4449594
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.4126984   0.3231193   0.5022775
>=35      6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0821114   0.0660530   0.0981699
>=35      6 months    ki1119695-PROBIT           BELARUS     Maternal             NA                0.0602241   0.0464291   0.0740191
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                0.4715909   0.4362713   0.5069105
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Other                NA                0.3333333   0.2984968   0.3681699
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.2900000   0.2744109   0.3055891
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.2951168   0.2611105   0.3291230
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.2600000   0.2316735   0.2883265
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal             NA                0.2401961   0.2007922   0.2795999
>=35      24 months   ki1000304-EU               INDIA       Control              NA                0.7368421   0.5364981   0.9371861
>=35      24 months   ki1000304-EU               INDIA       Zinc                 NA                0.6250000   0.4290218   0.8209782
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.8000000   0.7488199   0.8511801
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.7457627   0.6926827   0.7988427
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.4680851   0.4423472   0.4938230
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.4626168   0.4077385   0.5174951
<25       Birth       ki1119695-PROBIT           BELARUS     Control              NA                0.0041978   0.0010451   0.0073504
<25       Birth       ki1119695-PROBIT           BELARUS     Maternal             NA                0.0026490   0.0016365   0.0036615
<25       6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                0.2745098   0.2251310   0.3238886
<25       6 months    iLiNS_DYADM_LNS            MALAWI      LNS                  NA                0.1842105   0.1318488   0.2365723
<25       6 months    ki1000304-EU               INDIA       Control              NA                0.3333333   0.1948207   0.4718459
<25       6 months    ki1000304-EU               INDIA       Zinc                 NA                0.3636364   0.2206937   0.5065790
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2692308   0.2380916   0.3003699
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2446809   0.1945581   0.2948036
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.6000000   0.5404978   0.6595022
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.4166667   0.3095504   0.5237829
<25       6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0663153   0.0528598   0.0797709
<25       6 months    ki1119695-PROBIT           BELARUS     Maternal             NA                0.0528707   0.0444673   0.0612741
<25       6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                0.3636364   0.3062606   0.4210121
<25       6 months    ki1135781-COHORTS          GUATEMALA   Other                NA                0.3676471   0.3092730   0.4260211
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.3636364   0.3432980   0.3839747
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.3257576   0.2772219   0.3742932
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.2745098   0.2415473   0.3074723
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal             NA                0.2086331   0.1590848   0.2581813
<25       24 months   ki1000304-EU               INDIA       Control              NA                0.6470588   0.4169214   0.8771962
<25       24 months   ki1000304-EU               INDIA       Zinc                 NA                0.4545455   0.2437578   0.6653331
<25       24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.1226415   0.0801438   0.1651392
<25       24 months   ki1119695-PROBIT           BELARUS     Maternal             NA                0.0914634   0.0693219   0.1136049
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.6666667   0.6383638   0.6949696
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.5702479   0.4931869   0.6473089
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2307692   0.1362583   0.3252802
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.3750000   0.2472950   0.5027050
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                0.1747573   0.1319584   0.2175561
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      LNS                  NA                0.2027027   0.1643001   0.2411053
[25-30)   6 months    ki1000304-EU               INDIA       Control              NA                0.3875000   0.2803912   0.4946088
[25-30)   6 months    ki1000304-EU               INDIA       Zinc                 NA                0.2638889   0.1617485   0.3660293
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2426471   0.2043337   0.2809604
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2890625   0.2590510   0.3190740
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.5555556   0.5089135   0.6021976
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.3902439   0.3104488   0.4700390
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0749415   0.0636053   0.0862776
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Maternal             NA                0.0518270   0.0445790   0.0590750
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                0.4395604   0.3895339   0.4895869
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Other                NA                0.3684211   0.3187443   0.4180979
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.3544304   0.3360961   0.3727647
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.2898936   0.2519543   0.3278329
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.1747573   0.1449585   0.2045560
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal             NA                0.2052980   0.1669225   0.2436735
[25-30)   24 months   ki1000304-EU               INDIA       Control              NA                0.6140351   0.4870539   0.7410163
[25-30)   24 months   ki1000304-EU               INDIA       Zinc                 NA                0.6530612   0.5191516   0.7869708
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.1554054   0.1067968   0.2040140
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Maternal             NA                0.1437908   0.1049160   0.1826657
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.8333333   0.7720366   0.8946301
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.7500000   0.6787796   0.8212204
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.5588235   0.5291913   0.5884557
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.5000000   0.4356751   0.5643249
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Control              NA                0.0568182   0.0328390   0.0807974
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Other                NA                0.0666667   0.0405363   0.0927970
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                0.2380952   0.1913004   0.2848901
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      LNS                  NA                0.2500000   0.2035722   0.2964278
[30-35)   6 months    ki1000304-EU               INDIA       Control              NA                0.3243243   0.1723495   0.4762991
[30-35)   6 months    ki1000304-EU               INDIA       Zinc                 NA                0.2666667   0.1072301   0.4261032
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.3636364   0.2817907   0.4454820
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.3043478   0.2463367   0.3623589
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.5600000   0.5095900   0.6104100
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.3611111   0.2783310   0.4438912
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0624049   0.0507072   0.0741025
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Maternal             NA                0.0598485   0.0468877   0.0728092
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                0.5346535   0.4884180   0.5808890
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Other                NA                0.4196429   0.3714717   0.4678140
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.3508772   0.3321203   0.3696341
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.2562500   0.2155959   0.2969041
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                0.2380952   0.2076740   0.2685164
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal             NA                0.2083333   0.1673114   0.2493553
[30-35)   24 months   ki1000304-EU               INDIA       Control              NA                0.5937500   0.4222393   0.7652607
[30-35)   24 months   ki1000304-EU               INDIA       Zinc                 NA                0.5000000   0.3253925   0.6746075
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.7333333   0.6535445   0.8131222
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.7000000   0.6173169   0.7826831
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                0.4347826   0.4042272   0.4653380
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  NA                0.5076923   0.4344316   0.5809530


### Parameter: E(Y)


fage      agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
>=35      Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                0.0567164   0.0319108   0.0815221
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      NA                   NA                0.2397959   0.1798697   0.2997221
>=35      6 months    ki1000304-EU               INDIA       NA                   NA                0.2909091   0.1697710   0.4120472
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3090909   0.2416294   0.3765525
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4069767   0.3025386   0.5114149
>=35      6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0709169   0.0490128   0.0928210
>=35      6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.3994565   0.3493468   0.4495662
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.2942207   0.2568112   0.3316301
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.2467105   0.1981703   0.2952507
>=35      24 months   ki1000304-EU               INDIA       NA                   NA                0.6744186   0.5327029   0.8161343
>=35      24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7741935   0.7003031   0.8480840
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.4636015   0.4029869   0.5242162
<25       Birth       ki1119695-PROBIT           BELARUS     NA                   NA                0.0034021   0.0000492   0.0067551
<25       6 months    iLiNS_DYADM_LNS            MALAWI      NA                   NA                0.2204724   0.1480863   0.2928586
<25       6 months    ki1000304-EU               INDIA       NA                   NA                0.3483146   0.2487714   0.4478578
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2558140   0.1975358   0.3140921
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4603175   0.3362522   0.5843827
<25       6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0593870   0.0427849   0.0759890
<25       6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.3656716   0.2838205   0.4475228
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.3311688   0.2785233   0.3838144
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.2263158   0.1666595   0.2859721
<25       24 months   ki1000304-EU               INDIA       NA                   NA                0.5384615   0.3799585   0.6969646
<25       24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1037037   0.0555155   0.1518919
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.5827338   0.5004622   0.6650055
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3103448   0.1480972   0.4725924
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      NA                   NA                0.1864407   0.1289024   0.2439789
[25-30)   6 months    ki1000304-EU               INDIA       NA                   NA                0.3289474   0.2540095   0.4038852
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2651515   0.2135475   0.3167556
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4311927   0.3377910   0.5245943
[25-30)   6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0631198   0.0486839   0.0775556
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4032258   0.3325385   0.4739131
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.3010989   0.2589018   0.3432960
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.1929134   0.1442918   0.2415350
[25-30)   24 months   ki1000304-EU               INDIA       NA                   NA                0.6320755   0.5398359   0.7243150
[25-30)   24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1495017   0.0876193   0.2113841
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7916667   0.6972020   0.8861314
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.5104167   0.4395230   0.5813103
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                0.0617978   0.0263249   0.0972706
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      NA                   NA                0.2439024   0.1779773   0.3098276
[30-35)   6 months    ki1000304-EU               INDIA       NA                   NA                0.2985075   0.1881084   0.4089065
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3306452   0.2296543   0.4316360
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4123711   0.3139002   0.5108421
[30-35)   6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0611238   0.0435086   0.0787389
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4741784   0.4069628   0.5413940
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.2705570   0.2256536   0.3154604
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      NA                   NA                0.2182540   0.1671535   0.2693545
[30-35)   24 months   ki1000304-EU               INDIA       NA                   NA                0.5468750   0.4239526   0.6697974
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7166667   0.6016848   0.8316486
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      NA                   NA                0.4967320   0.4172467   0.5762174


### Parameter: RR


fage      agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Other                Control           1.1840278   0.7633139   1.8366256
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      LNS                  Control           0.8413462   0.6545005   1.0815322
>=35      6 months    ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=35      6 months    ki1000304-EU               INDIA       Zinc                 Control           0.8612440   0.3475308   2.1343178
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.1904762   0.9738518   1.4552867
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           1.0546737   0.8158635   1.3633857
>=35      6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=35      6 months    ki1119695-PROBIT           BELARUS     Maternal             Control           0.7334434   0.5429382   0.9907926
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Other                Control           0.7068273   0.6215470   0.8038086
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           1.0176440   0.8961374   1.1556257
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal             Control           0.9238311   0.7586941   1.1249117
>=35      24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=35      24 months   ki1000304-EU               INDIA       Zinc                 Control           0.8482143   0.5600931   1.2845498
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.9322034   0.8471261   1.0258250
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.9883178   0.8671869   1.1263685
<25       Birth       ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
<25       Birth       ki1119695-PROBIT           BELARUS     Maternal             Control           0.6310523   0.2720561   1.4637680
<25       6 months    iLiNS_DYADM_LNS            MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
<25       6 months    iLiNS_DYADM_LNS            MALAWI      LNS                  Control           0.6710526   0.4793654   0.9393913
<25       6 months    ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<25       6 months    ki1000304-EU               INDIA       Zinc                 Control           1.0909091   0.6156993   1.9328959
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.9088146   0.7175331   1.1510882
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.6944444   0.5271939   0.9147547
<25       6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
<25       6 months    ki1119695-PROBIT           BELARUS     Maternal             Control           0.7972624   0.6171652   1.0299144
<25       6 months    ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
<25       6 months    ki1135781-COHORTS          GUATEMALA   Other                Control           1.0110294   0.8082578   1.2646713
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.8958333   0.7640317   1.0503719
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal             Control           0.7600206   0.5824393   0.9917449
<25       24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<25       24 months   ki1000304-EU               INDIA       Zinc                 Control           0.7024793   0.3915823   1.2602133
<25       24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
<25       24 months   ki1119695-PROBIT           BELARUS     Maternal             Control           0.7457786   0.4856431   1.1452560
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.8553719   0.7424003   0.9855345
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.6250000   0.9537566   2.7686571
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      LNS                  Control           1.1599099   0.8510473   1.5808651
[25-30)   6 months    ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1000304-EU               INDIA       Zinc                 Control           0.6810036   0.4232425   1.0957450
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.1912879   0.9860460   1.4392501
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.7024390   0.5631348   0.8762034
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Maternal             Control           0.6915665   0.5630522   0.8494136
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Other                Control           0.8381579   0.7025796   0.9998990
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.8179141   0.7105446   0.9415081
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal             Control           1.1747609   0.9121503   1.5129777
[25-30)   24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1000304-EU               INDIA       Zinc                 Control           1.0635569   0.7948486   1.4231052
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Maternal             Control           0.9252629   0.6100372   1.4033757
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.9000000   0.7981353   1.0148656
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.8947368   0.7785088   1.0283173
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Other                Control           1.1733333   0.6596003   2.0871898
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      LNS                  Control           1.0500000   0.8012283   1.3760123
[30-35)   6 months    ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6 months    ki1000304-EU               INDIA       Zinc                 Control           0.8222222   0.3846663   1.7574959
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.8369565   0.6233086   1.1238353
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.6448413   0.5040755   0.8249166
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Maternal             Control           0.9590355   0.7211615   1.2753718
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Other                Control           0.7848876   0.6798152   0.9061999
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           0.7303125   0.6177343   0.8634074
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Maternal             Control           0.8750000   0.6919386   1.1064927
[30-35)   24 months   ki1000304-EU               INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   24 months   ki1000304-EU               INDIA       Zinc                 Control           0.8421053   0.5352339   1.3249184
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.9545455   0.8129278   1.1208339
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              Control           1.0000000   1.0000000   1.0000000
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      LNS                  Control           1.1676923   0.9945396   1.3709915


### Parameter: PAR


fage      agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0051035   -0.0137336    0.0239406
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                -0.0202041   -0.0609147    0.0205065
>=35      6 months    ki1000304-EU               INDIA       Control              NA                -0.0146465   -0.1015159    0.0722230
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0290909   -0.0191575    0.0773393
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.0156724   -0.0739293    0.1052741
>=35      6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0111945   -0.0259308    0.0035418
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0721344   -0.1076803   -0.0365885
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.0042207   -0.0297859    0.0382273
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                -0.0132895   -0.0527073    0.0261283
>=35      24 months   ki1000304-EU               INDIA       Control              NA                -0.0624235   -0.2197465    0.0948995
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0258065   -0.0791018    0.0274889
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0044836   -0.0593625    0.0503953
<25       Birth       ki1119695-PROBIT           BELARUS     Control              NA                -0.0007956   -0.0018573    0.0002660
<25       6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                -0.0540374   -0.1069665   -0.0011082
<25       6 months    ki1000304-EU               INDIA       Control              NA                 0.0149813   -0.0834732    0.1134357
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0134168   -0.0626832    0.0358496
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1396825   -0.2485479   -0.0308172
<25       6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0069284   -0.0158327    0.0019760
<25       6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0020353   -0.0563397    0.0604103
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0324675   -0.0810258    0.0160908
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                -0.0481940   -0.0979167    0.0015287
<25       24 months   ki1000304-EU               INDIA       Control              NA                -0.1085973   -0.2872404    0.0700458
<25       24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0189378   -0.0438258    0.0059502
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0839329   -0.1611829   -0.0066828
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0795756   -0.0521389    0.2112901
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                 0.0116834   -0.0267732    0.0501400
[25-30)   6 months    ki1000304-EU               INDIA       Control              NA                -0.0585526   -0.1293472    0.0122420
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0225045   -0.0127012    0.0577101
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1243629   -0.2052850   -0.0434408
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0118217   -0.0204513   -0.0031921
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0363346   -0.0862750    0.0136058
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0533315   -0.0913374   -0.0153256
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0181561   -0.0202638    0.0565761
[25-30)   24 months   ki1000304-EU               INDIA       Control              NA                 0.0180404   -0.0673482    0.1034290
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0059037   -0.0445907    0.0327832
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0416667   -0.1135435    0.0302102
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0484069   -0.1128106    0.0159969
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0049796   -0.0211609    0.0311200
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                 0.0058072   -0.0406296    0.0522440
[30-35)   6 months    ki1000304-EU               INDIA       Control              NA                -0.0258169   -0.1246849    0.0730512
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0329912   -0.0923902    0.0264078
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1476289   -0.2322182   -0.0630395
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0012811   -0.0142780    0.0117158
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0604751   -0.1092626   -0.0116876
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0803202   -0.1211184   -0.0395220
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                -0.0198413   -0.0608999    0.0212174
[30-35)   24 months   ki1000304-EU               INDIA       Control              NA                -0.0468750   -0.1697974    0.0760474
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0166667   -0.0994591    0.0661257
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.0619494   -0.0114283    0.1353271


### Parameter: PAF


fage      agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
>=35      Birth       ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0899830   -0.2700108    0.3479340
>=35      6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                -0.0842553   -0.2856474    0.0855894
>=35      6 months    ki1000304-EU               INDIA       Control              NA                -0.0503472   -0.3955993    0.2094942
>=35      6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0941176   -0.0587350    0.2249025
>=35      6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.0385093   -0.1983638    0.2285612
>=35      6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.1578542   -0.4289681    0.0618221
>=35      6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1805813   -0.2917716   -0.0789619
>=35      6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.0143452   -0.1064265    0.1219342
>=35      6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                -0.0538667   -0.2365770    0.1018473
>=35      24 months   ki1000304-EU               INDIA       Control              NA                -0.0925590   -0.3561279    0.1197843
>=35      24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0333333   -0.1070100    0.0354398
>=35      24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0096712   -0.1365542    0.1030469
<25       Birth       ki1119695-PROBIT           BELARUS     Control              NA                -0.2338619   -0.7722253    0.1409584
<25       6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                -0.2450980   -0.5893107    0.0245651
<25       6 months    ki1000304-EU               INDIA       Control              NA                 0.0430108   -0.2858328    0.2877547
<25       6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0524476   -0.2760890    0.1319995
<25       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.3034483   -0.6543709   -0.0269628
<25       6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.1166645   -0.3016412    0.0420250
<25       6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0055659   -0.1665595    0.1522942
<25       6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0980392   -0.2715740    0.0518129
<25       6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                -0.2129503   -0.5132260    0.0277404
<25       24 months   ki1000304-EU               INDIA       Control              NA                -0.2016807   -0.5962670    0.0953666
<25       24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.1826146   -0.5112140    0.0745340
<25       24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.1440329   -0.3063873   -0.0018555
[25-30)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.2564103   -0.1511585    0.5196789
[25-30)   6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                 0.0626655   -0.1527175    0.2378046
[25-30)   6 months    ki1000304-EU               INDIA       Control              NA                -0.1780000   -0.4148386    0.0191927
[25-30)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0848739   -0.0460025    0.1993750
[25-30)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.2884161   -0.5568113   -0.0662923
[25-30)   6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.1872900   -0.3662395   -0.0317791
[25-30)   6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0901099   -0.2343624    0.0372847
[25-30)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.1771228   -0.3359320   -0.0371920
[25-30)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                 0.0941153   -0.1062310    0.2581775
[25-30)   24 months   ki1000304-EU               INDIA       Control              NA                 0.0285415   -0.1165674    0.1547921
[25-30)   24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0394895   -0.3467554    0.1976728
[25-30)   24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0526316   -0.1527698    0.0388079
[25-30)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.0948379   -0.2422015    0.0350438
[30-35)   Birth       ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0805785   -0.4054448    0.3985279
[30-35)   6 months    iLiNS_DYADM_LNS            MALAWI      Control              NA                 0.0238095   -0.1809872    0.1930922
[30-35)   6 months    ki1000304-EU               INDIA       Control              NA                -0.0864865   -0.4735658    0.1989140
[30-35)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0997783   -0.3179651    0.0822881
[30-35)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.3580000   -0.6713943   -0.1033686
[30-35)   6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0209592   -0.2629747    0.1746805
[30-35)   6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1275365   -0.2504620   -0.0166951
[30-35)   6 months    ki1148112-iLiNS-DOSE       MALAWI      Control              NA                -0.2968696   -0.5091997   -0.1144124
[30-35)   6 months    ki1148112-iLiNS-DYAD-M     MALAWI      Control              NA                -0.0909091   -0.3171797    0.0964918
[30-35)   24 months   ki1000304-EU               INDIA       Control              NA                -0.0857143   -0.3370880    0.1184010
[30-35)   24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0232558   -0.1485973    0.0884077
[30-35)   24 months   ki1148112-iLiNS-DOSE       MALAWI      Control              NA                 0.1247140   -0.0148858    0.2451115
