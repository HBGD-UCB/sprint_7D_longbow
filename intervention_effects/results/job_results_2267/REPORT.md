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

* cleanck
* agecat
* studyid
* country

## Data Summary

cleanck   agecat        studyid                  country      tr          ever_stunted   n_cell      n
--------  ------------  -----------------------  -----------  ---------  -------------  -------  -----
0         0-6 months    ki1000111-WASH-Kenya     KENYA        Control                0       24     90
0         0-6 months    ki1000111-WASH-Kenya     KENYA        Control                1        2     90
0         0-6 months    ki1000111-WASH-Kenya     KENYA        LNS                    0       23     90
0         0-6 months    ki1000111-WASH-Kenya     KENYA        LNS                    1        0     90
0         0-6 months    ki1000111-WASH-Kenya     KENYA        Other                  0       36     90
0         0-6 months    ki1000111-WASH-Kenya     KENYA        Other                  1        5     90
1         0-6 months    ki1000111-WASH-Kenya     KENYA        Control                0        1      2
1         0-6 months    ki1000111-WASH-Kenya     KENYA        Other                  0        1      2
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control                0       29     74
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control                1       12     74
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal               0       26     74
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal               1        7     74
1         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control                0        6     23
1         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control                1        0     23
1         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal               0       15     23
1         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal               1        2     23
1         0-6 months    ki1000304-VITAMIN-A      INDIA        Control                0      112    316
1         0-6 months    ki1000304-VITAMIN-A      INDIA        Control                1       51    316
1         0-6 months    ki1000304-VITAMIN-A      INDIA        VitA                   0      100    316
1         0-6 months    ki1000304-VITAMIN-A      INDIA        VitA                   1       53    316
0         0-6 months    ki1000304-VITAMIN-A      INDIA        Control                0        6     18
0         0-6 months    ki1000304-VITAMIN-A      INDIA        Control                1        2     18
0         0-6 months    ki1000304-VITAMIN-A      INDIA        VitA                   0        9     18
0         0-6 months    ki1000304-VITAMIN-A      INDIA        VitA                   1        1     18
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control                0      115    529
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control                1       18    529
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                  0      351    529
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                  1       45    529
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control                0       27    111
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control                1        6    111
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                  0       58    111
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                  1       20    111
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control                0      121   1121
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control                1       56   1121
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                    0      672   1121
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                    1      272   1121
1         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                    0        6      7
1         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                    1        1      7
0         0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control                0        6     26
0         0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control                1        2     26
0         0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal               0       13     26
0         0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal               1        5     26
1         0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control                0        1      1
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Control                0     1684   5235
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Control                1      113   5235
0         6-24 months   ki1000111-WASH-Kenya     KENYA        LNS                    0     1133   5235
0         6-24 months   ki1000111-WASH-Kenya     KENYA        LNS                    1       65   5235
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Other                  0     2066   5235
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Other                  1      174   5235
1         6-24 months   ki1000111-WASH-Kenya     KENYA        Control                0       25     92
1         6-24 months   ki1000111-WASH-Kenya     KENYA        Control                1        1     92
1         6-24 months   ki1000111-WASH-Kenya     KENYA        LNS                    0       15     92
1         6-24 months   ki1000111-WASH-Kenya     KENYA        LNS                    1        1     92
1         6-24 months   ki1000111-WASH-Kenya     KENYA        Other                  0       50     92
1         6-24 months   ki1000111-WASH-Kenya     KENYA        Other                  1        0     92
0         6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control                0      178    321
0         6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control                1      123    321
0         6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal               0       20    321
0         6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal               1        0    321
1         6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control                0       32     53
1         6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control                1       12     53
1         6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal               0        9     53
1         6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal               1        0     53
1         6-24 months   ki1000304-VITAMIN-A      INDIA        Control                0      946   2068
1         6-24 months   ki1000304-VITAMIN-A      INDIA        Control                1       80   2068
1         6-24 months   ki1000304-VITAMIN-A      INDIA        VitA                   0      967   2068
1         6-24 months   ki1000304-VITAMIN-A      INDIA        VitA                   1       75   2068
0         6-24 months   ki1000304-VITAMIN-A      INDIA        Control                0       49     99
0         6-24 months   ki1000304-VITAMIN-A      INDIA        Control                1        4     99
0         6-24 months   ki1000304-VITAMIN-A      INDIA        VitA                   0       38     99
0         6-24 months   ki1000304-VITAMIN-A      INDIA        VitA                   1        8     99
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control                0       87    431
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control                1       18    431
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                  0      252    431
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                  1       74    431
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control                0       14     66
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control                1        7     66
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                  0       25     66
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                  1       20     66
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control                0      160   1162
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control                1       37   1162
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                    0      751   1162
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                    1      214   1162
1         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                    0        5      5
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control                0       65    286
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control                1       24    286
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal               0      134    286
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal               1       63    286
1         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control                0        1      1
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Control                0     1693   6594
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Control                1      573   6594
0         0-24 months   ki1000111-WASH-Kenya     KENYA        LNS                    0     1140   6594
0         0-24 months   ki1000111-WASH-Kenya     KENYA        LNS                    1      313   6594
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Other                  0     2081   6594
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Other                  1      794   6594
1         0-24 months   ki1000111-WASH-Kenya     KENYA        Control                0       25    102
1         0-24 months   ki1000111-WASH-Kenya     KENYA        Control                1        3    102
1         0-24 months   ki1000111-WASH-Kenya     KENYA        LNS                    0       15    102
1         0-24 months   ki1000111-WASH-Kenya     KENYA        LNS                    1        4    102
1         0-24 months   ki1000111-WASH-Kenya     KENYA        Other                  0       51    102
1         0-24 months   ki1000111-WASH-Kenya     KENYA        Other                  1        4    102
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control                0      193    575
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control                1      320    575
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal               0       46    575
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal               1       16    575
1         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control                0       37     91
1         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control                1       26     91
1         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal               0       24     91
1         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal               1        4     91
0         0-24 months   ki1000304-VITAMIN-A      INDIA        Control                0       48    176
0         0-24 months   ki1000304-VITAMIN-A      INDIA        Control                1       43    176
0         0-24 months   ki1000304-VITAMIN-A      INDIA        VitA                   0       36    176
0         0-24 months   ki1000304-VITAMIN-A      INDIA        VitA                   1       49    176
1         0-24 months   ki1000304-VITAMIN-A      INDIA        Control                0      930   3367
1         0-24 months   ki1000304-VITAMIN-A      INDIA        Control                1      768   3367
1         0-24 months   ki1000304-VITAMIN-A      INDIA        VitA                   0      956   3367
1         0-24 months   ki1000304-VITAMIN-A      INDIA        VitA                   1      713   3367
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control                0       86    530
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control                1       47    530
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                  0      253    530
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                  1      144    530
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control                0       15    111
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control                1       18    111
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                  0       25    111
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                  1       53    111
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control                0      152   1803
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control                1      149   1803
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                    0      745   1803
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                    1      757   1803
1         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                    0        8      9
1         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                    1        1      9
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control                0       64    363
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control                1       52    363
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal               0      128    363
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal               1      119    363
1         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control                0        1      1
0         0-6 months    iLiNS_DYADM_LNS          MALAWI       Control                0        6     16
0         0-6 months    iLiNS_DYADM_LNS          MALAWI       Control                1        2     16
0         0-6 months    iLiNS_DYADM_LNS          MALAWI       LNS                    0        6     16
0         0-6 months    iLiNS_DYADM_LNS          MALAWI       LNS                    1        2     16
1         0-6 months    iLiNS_DYADM_LNS          MALAWI       Control                0        1      1
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       Control                0       65    188
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       Control                1       24    188
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       LNS                    0       61    188
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       LNS                    1       38    188
1         6-24 months   iLiNS_DYADM_LNS          MALAWI       Control                0        1      1
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       Control                0       64    237
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       Control                1       52    237
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       LNS                    0       60    237
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       LNS                    1       61    237
1         0-24 months   iLiNS_DYADM_LNS          MALAWI       Control                0        1      1


The following strata were considered:

* cleanck: 0, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 0, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 0, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 0, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 0, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 0, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 0, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 0, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 1, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 1, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* cleanck: 0, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 0, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 0, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           ever_stunted
## tr         0
##   Control  0
##   LNS      5
##   Maternal 0
##   Other    0
##   VitA     0
```




# Results Detail

## Results Plots
![](/tmp/f4d3f422-22dc-4f94-8a84-aa9e544fe28a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f4d3f422-22dc-4f94-8a84-aa9e544fe28a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f4d3f422-22dc-4f94-8a84-aa9e544fe28a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f4d3f422-22dc-4f94-8a84-aa9e544fe28a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


cleanck   agecat        studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       Control              NA                0.4482759   0.4038863   0.4926654
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       LNS                  NA                0.5041322   0.4585531   0.5497113
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Control              NA                0.2528685   0.2349708   0.2707662
0         0-24 months   ki1000111-WASH-Kenya     KENYA        LNS                  NA                0.2154164   0.1942763   0.2365565
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Other                NA                0.2761739   0.2598295   0.2925184
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                0.6237817   0.5863488   0.6612146
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal             NA                0.2580645   0.2463101   0.2698189
0         0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.4725275   0.3696600   0.5753950
0         0-24 months   ki1000304-VITAMIN-A      INDIA        VitA                 NA                0.5764706   0.4711274   0.6818137
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.5454545   0.4947187   0.5961904
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.6794872   0.6063815   0.7525928
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.4950166   0.4855846   0.5044486
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.5039947   0.4829247   0.5250646
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                0.4482759   0.4193156   0.4772362
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal             NA                0.4817814   0.4393223   0.5242404
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                0.2926829   0.2149923   0.3703735
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal             NA                0.2121212   0.1494960   0.2747465
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.1818182   0.1425183   0.2211180
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.2564103   0.1880078   0.3248128
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.3163842   0.3055615   0.3272069
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.2881356   0.2637957   0.3124755
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       Control              NA                0.2696629   0.2258991   0.3134268
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       LNS                  NA                0.3838384   0.3332574   0.4344194
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Control              NA                0.0628826   0.0516578   0.0741074
0         6-24 months   ki1000111-WASH-Kenya     KENYA        LNS                  NA                0.0542571   0.0414286   0.0670856
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Other                NA                0.0776786   0.0665930   0.0887641
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.3333333   0.2686901   0.3979765
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.4444444   0.3446978   0.5441911
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.1878173   0.1785669   0.1970676
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.2217617   0.1999850   0.2435384
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                0.2696629   0.2409214   0.2984045
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal             NA                0.3197970   0.2748570   0.3647369
1         0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.4522968   0.4286197   0.4759739
1         0-24 months   ki1000304-VITAMIN-A      INDIA        VitA                 NA                0.4272019   0.4034662   0.4509376
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.3533835   0.3329776   0.3737893
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.3627204   0.3272612   0.3981796
1         0-6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                0.3128834   0.2415901   0.3841768
1         0-6 months    ki1000304-VITAMIN-A      INDIA        VitA                 NA                0.3464052   0.2708895   0.4219209
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.1353383   0.1207077   0.1499690
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.1136364   0.0902148   0.1370579
1         6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.0779727   0.0615622   0.0943832
1         6-24 months   ki1000304-VITAMIN-A      INDIA        VitA                 NA                0.0719770   0.0562807   0.0876732
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.1714286   0.1538462   0.1890109
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.2269939   0.1925603   0.2614275


### Parameter: E(Y)


cleanck   agecat        studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       NA                   NA                0.4767932   0.4130706   0.5405159
0         0-24 months   ki1000111-WASH-Kenya     KENYA        NA                   NA                0.2547771   0.2442592   0.2652950
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     NA                   NA                0.5843478   0.5440304   0.6246653
0         0-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.5227273   0.4487242   0.5967304
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.6396396   0.5499199   0.7293594
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.5024958   0.4794106   0.5255811
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.4710744   0.4196539   0.5224948
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     NA                   NA                0.2567568   0.1565463   0.3569672
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.2342342   0.1550890   0.3133795
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.2925959   0.2659514   0.3192404
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       NA                   NA                0.3297872   0.2624042   0.3971703
0         6-24 months   ki1000111-WASH-Kenya     KENYA        NA                   NA                0.0672397   0.0604551   0.0740244
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.4090909   0.2895651   0.5286167
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.2160069   0.1923356   0.2396782
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.3041958   0.2507829   0.3576087
1         0-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.4398574   0.4230889   0.4566260
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.3603774   0.3194644   0.4012903
1         0-6 months    ki1000304-VITAMIN-A      INDIA        NA                   NA                0.3291139   0.2772231   0.3810047
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.1190926   0.0914653   0.1467199
1         6-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.0749516   0.0636002   0.0863031
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.2134571   0.1747286   0.2521855


### Parameter: RR


cleanck   agecat        studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       LNS                  Control           1.1246027   0.9834795   1.2859761
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000111-WASH-Kenya     KENYA        LNS                  Control           0.8518910   0.7548065   0.9614626
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Other                Control           1.0921642   0.9959086   1.1977230
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Maternal             Control           0.4137097   0.3836868   0.4460818
0         0-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000304-VITAMIN-A      INDIA        VitA                 Control           1.2199726   0.9181464   1.6210195
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                Control           1.2457265   1.0805776   1.4361157
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.0181369   0.9724186   1.0660047
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal             Control           1.0747431   0.9634925   1.1988393
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal             Control           0.7247475   0.4872640   1.0779760
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                Control           1.4102564   1.0004255   1.9879772
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           0.9107143   0.8313842   0.9976140
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       LNS                  Control           1.4234007   1.1548784   1.7543575
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1000111-WASH-Kenya     KENYA        LNS                  Control           0.8628319   0.6415998   1.1603476
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Other                Control           1.2352955   0.9829192   1.5524725
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                Control           1.3333333   0.9911119   1.7937206
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.1807310   1.0578897   1.3178365
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal             Control           1.1859137   0.9941571   1.4146570
1         0-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304-VITAMIN-A      INDIA        VitA                 Control           0.9445167   0.8750983   1.0194420
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                Control           1.0264216   0.9162547   1.1498345
1         0-6 months    ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1000304-VITAMIN-A      INDIA        VitA                 Control           1.1071383   0.8076979   1.5175912
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                Control           0.8396465   0.6653023   1.0596780
1         6-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1000304-VITAMIN-A      INDIA        VitA                 Control           0.9231046   0.6817566   1.2498921
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                Control           1.3241309   1.1025694   1.5902151


### Parameter: PAR


cleanck   agecat        studyid                  country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       Control              NA                 0.0285174   -0.0172007    0.0742355
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Control              NA                 0.0019086   -0.0126102    0.0164274
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0394339   -0.0544097   -0.0244580
0         0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                 0.0501998   -0.0213245    0.1217241
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.0941851    0.0201885    0.1681817
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0074792   -0.0135913    0.0285498
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0227985   -0.0196910    0.0652881
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0359262   -0.0992216    0.0273692
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.0524161   -0.0162825    0.1211146
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0237883   -0.0481357    0.0005591
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       Control              NA                 0.0601243    0.0088876    0.1113610
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Control              NA                 0.0043572   -0.0048909    0.0136052
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.0757576   -0.0247794    0.1762945
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0281896    0.0064006    0.0499786
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0345329   -0.0104877    0.0795535
1         0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0124394   -0.0290634    0.0041846
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.0069939   -0.0284669    0.0424547
1         0-6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                 0.0162305   -0.0340866    0.0665476
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              NA                -0.0162457   -0.0396810    0.0071896
1         6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0030211   -0.0144639    0.0084218
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.0420285    0.0075212    0.0765358


### Parameter: PAF


cleanck   agecat        studyid                  country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0         0-24 months   iLiNS_DYADM_LNS          MALAWI       Control              NA                 0.0598108   -0.0349936    0.1459312
0         0-24 months   ki1000111-WASH-Kenya     KENYA        Control              NA                 0.0074912   -0.0511626    0.0628721
0         0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0674835   -0.0955432   -0.0401426
0         0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                 0.0960344   -0.0524617    0.2235786
0         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.1472471    0.0418900    0.2410188
0         0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0148842   -0.0273028    0.0553386
0         0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0483969   -0.0414814    0.1305188
0         0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.1399230   -0.4626676    0.1116065
0         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.2237762   -0.0449169    0.4233768
0         0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0813008   -0.1751819    0.0050805
0         6-24 months   iLiNS_DYADM_LNS          MALAWI       Control              NA                 0.1823124    0.0422034    0.3019259
0         6-24 months   ki1000111-WASH-Kenya     KENYA        Control              NA                 0.0648002   -0.0832116    0.1925875
0         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.1851852   -0.0445359    0.3643845
0         6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.1305034    0.0380226    0.2140934
0         6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.1135219   -0.0283893    0.2358502
1         0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0282805   -0.0667875    0.0088365
1         0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.0194072   -0.0819962    0.1113071
1         0-6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                 0.0493157   -0.1165349    0.1905308
1         0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              NA                -0.1364125   -0.3843217    0.0671003
1         6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0403069   -0.2046302    0.1016011
1         6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.1968944    0.0547949    0.3176311
