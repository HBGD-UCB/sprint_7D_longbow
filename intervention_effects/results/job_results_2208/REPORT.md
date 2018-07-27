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

* vagbrth
* agecat
* studyid
* country

## Data Summary

vagbrth   agecat      studyid                    country                        tr          stunted   n_cell       n
--------  ----------  -------------------------  -----------------------------  ---------  --------  -------  ------
0         6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           0        0      13
0         6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           1        2      13
0         6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0        9      13
0         6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        2      13
1         6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           0        8      33
1         6 months    ki1017093b-PROVIDE         BANGLADESH                     Control           1        0      33
1         6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             0       19      33
1         6 months    ki1017093b-PROVIDE         BANGLADESH                     Other             1        6      33
0         24 months   ki1017093b-PROVIDE         BANGLADESH                     Other             0        2       2
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0      344    1528
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1       43    1528
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0      333    1528
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       42    1528
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      677    1528
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       89    1528
0         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0       32     160
0         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        4     160
0         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0       42     160
0         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        3     160
0         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0       74     160
0         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        5     160
1         24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        2       3
1         24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        0       3
1         24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0        0       3
1         24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       3
0         24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0        1       1
1         Birth       ki1119695-PROBIT           BELARUS                        Control           0     6045   12287
1         Birth       ki1119695-PROBIT           BELARUS                        Control           1       18   12287
1         Birth       ki1119695-PROBIT           BELARUS                        Maternal          0     6212   12287
1         Birth       ki1119695-PROBIT           BELARUS                        Maternal          1       12   12287
1         6 months    ki1119695-PROBIT           BELARUS                        Control           0     5898   12844
1         6 months    ki1119695-PROBIT           BELARUS                        Control           1      465   12844
1         6 months    ki1119695-PROBIT           BELARUS                        Maternal          0     6119   12844
1         6 months    ki1119695-PROBIT           BELARUS                        Maternal          1      362   12844
0         Birth       ki1119695-PROBIT           BELARUS                        Control           0      713    1597
0         Birth       ki1119695-PROBIT           BELARUS                        Control           1        3    1597
0         Birth       ki1119695-PROBIT           BELARUS                        Maternal          0      881    1597
0         Birth       ki1119695-PROBIT           BELARUS                        Maternal          1        0    1597
0         6 months    ki1119695-PROBIT           BELARUS                        Control           0      698    1656
0         6 months    ki1119695-PROBIT           BELARUS                        Control           1       51    1656
0         6 months    ki1119695-PROBIT           BELARUS                        Maternal          0      861    1656
0         6 months    ki1119695-PROBIT           BELARUS                        Maternal          1       46    1656
0         24 months   ki1119695-PROBIT           BELARUS                        Control           0       33      97
0         24 months   ki1119695-PROBIT           BELARUS                        Control           1        4      97
0         24 months   ki1119695-PROBIT           BELARUS                        Maternal          0       56      97
0         24 months   ki1119695-PROBIT           BELARUS                        Maternal          1        4      97
1         24 months   ki1119695-PROBIT           BELARUS                        Control           0      294     744
1         24 months   ki1119695-PROBIT           BELARUS                        Control           1       43     744
1         24 months   ki1119695-PROBIT           BELARUS                        Maternal          0      358     744
1         24 months   ki1119695-PROBIT           BELARUS                        Maternal          1       49     744
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           0     2797   12554
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           1      333   12554
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     8436   12554
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      988   12554
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           0     1464    7043
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           1      281    7043
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     4400    7043
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      898    7043
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           0      126     669
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       30     669
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0      438     669
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1       75     669
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           0      268    1162
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       20    1162
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0      805    1162
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1       69    1162
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           0        6      36
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           1        5      36
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0        8      36
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1       17      36
0         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1        1       1
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0      258     942
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       73     942
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0      479     942
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1      132     942
1         Birth       ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        1       1
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        6      71
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        7      71
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       43      71
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       15      71
0         24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        5       6
0         24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        1       6
1         24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        4      57
1         24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        7      57
1         24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       28      57
1         24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       18      57
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0     6411   19583
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1     3319   19583
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     6845   19583
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1     3008   19583
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0     5646   15609
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1     2090   15609
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0     5934   15609
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1     1939   15609
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           0      450    1076
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control           1       77    1076
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0      458    1076
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1       91    1076
0         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0        2      11
0         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1        1      11
0         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        7      11
0         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        1      11
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           0       13      61
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control           1       15      61
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0       10      61
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1       23      61
0         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           0        0       3
0         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control           1        1       3
0         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          0        2       3
0         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal          1        0       3
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           0      745    3690
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           1      233    3690
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               0      747    3690
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               1      258    3690
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             0     1243    3690
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             1      464    3690
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           0      155     821
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control           1       69     821
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               0      152     821
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       74     821
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             0      267     821
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other             1      104     821
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           0       56     451
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           1       57     451
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       70     451
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               1       55     451
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             0      116     451
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             1       97     451
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           0       57     330
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control           1       12     330
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               0       89     330
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS               1        8     330
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             0      131     330
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other             1       33     330
0         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           0       10      46
0         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control           1        3      46
0         24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               0        8      46
0         24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS               1        3      46
0         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             0       14      46
0         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other             1        8      46
0         Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS               0        1       1
1         6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0      258     626
1         6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       73     626
1         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0      232     626
1         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       63     626
1         Birth       iLiNS_DYADM_LNS            MALAWI                         LNS               1        1       1
0         6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0        6      47
0         6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1        7      47
0         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       26      47
0         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1        8      47
0         24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        3       3
1         24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        4      31
1         24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        7      31
1         24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0       12      31
1         24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        8      31


The following strata were considered:

* vagbrth: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* vagbrth: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 0, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* vagbrth: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 0, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 0, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 0, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 0, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* vagbrth: 1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* vagbrth: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 1, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* vagbrth: 1, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 1, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* vagbrth: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* vagbrth: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* vagbrth: 0, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 0, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* vagbrth: 0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* vagbrth: 1, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* vagbrth: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* vagbrth: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* vagbrth: 1, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* vagbrth: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* vagbrth: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/56343526-e514-45de-8a82-9c1be47cd5c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/56343526-e514-45de-8a82-9c1be47cd5c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/56343526-e514-45de-8a82-9c1be47cd5c5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/56343526-e514-45de-8a82-9c1be47cd5c5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


vagbrth   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.0694444   0.0621647   0.0767242
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.0789474   0.0654951   0.0923996
0         6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.5384615   0.4626957   0.6142273
0         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2352941   0.1310354   0.3395529
0         6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0680908   0.0481785   0.0880031
0         6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0507166   0.0352848   0.0661485
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1923077   0.1778756   0.2067398
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.1461988   0.1227373   0.1696603
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.5384615   0.4884900   0.5884331
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.2586207   0.1659087   0.3513326
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.1461101   0.1281476   0.1640725
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.1657559   0.1466793   0.1848325
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.1739130   0.0748919   0.2729342
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.0824742   0.0252494   0.1396990
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2012195   0.1379245   0.2645145
1         Birth       ki1119695-PROBIT           BELARUS                        Control              NA                0.0029688   0.0017151   0.0042225
1         Birth       ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0019280   0.0012029   0.0026532
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1063898   0.1036965   0.1090830
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.1048387   0.1001956   0.1094819
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.3411100   0.3358456   0.3463743
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.3052877   0.2999387   0.3106367
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3080357   0.2379793   0.3780922
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.3274336   0.2576156   0.3972517
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2803235   0.2295359   0.3311110
1         6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.2205438   0.1969076   0.2441800
1         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2135593   0.1915035   0.2356152
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1111111   0.0797900   0.1424322
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1120000   0.0800706   0.1439294
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1161880   0.0934874   0.1388885
1         6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0730787   0.0617952   0.0843623
1         6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0558556   0.0478029   0.0639083
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1610315   0.1567584   0.1653047
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.1694979   0.1618976   0.1770982
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2205438   0.2048407   0.2362469
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.2160393   0.1948624   0.2372162
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2701655   0.2641092   0.2762218
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.2462848   0.2404972   0.2520723
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2382413   0.2026215   0.2738611
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2567164   0.2284344   0.2849984
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2718219   0.2460402   0.2976036
1         24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1275964   0.0922272   0.1629656
1         24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.1203931   0.0854257   0.1553606
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.4545455   0.3633597   0.5457312
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.6800000   0.5512159   0.8087841
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.5357143   0.4490554   0.6223732
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             NA                0.6969697   0.6142454   0.7796940
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.5044248   0.3991705   0.6096790
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.4400000   0.3398171   0.5401829
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.4553991   0.3851761   0.5256220


### Parameter: E(Y)


vagbrth   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0765921   0.0612946   0.0918896
0         6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.3191489   0.1844414   0.4538565
0         6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0585749   0.0331645   0.0839852
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1569507   0.1293660   0.1845354
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3098592   0.2015288   0.4181895
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1561338   0.1299192   0.1823485
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1606061   0.1189146   0.2022975
1         Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0024416   0.0009778   0.0039054
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1052254   0.0998577   0.1105932
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3230864   0.3154240   0.3307487
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3008526   0.2652718   0.3364334
1         6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.2172524   0.1849227   0.2495821
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1138743   0.0979417   0.1298070
1         6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0643880   0.0497016   0.0790745
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1674003   0.1586807   0.1761199
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2176221   0.1912580   0.2439862
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2581203   0.2496870   0.2665536
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2588076   0.2417405   0.2758746
1         24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1236559   0.0742959   0.1730159
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6111111   0.4496058   0.7726165
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6229508   0.5010897   0.7448119
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4634146   0.4127492   0.5140801


### Parameter: RR


vagbrth   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           1.1368421   0.9307128   1.3886238
0         6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.4369748   0.2745055   0.6956035
0         6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.7448386   0.4873475   1.1383758
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.7602339   0.6368082   0.9075819
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           0.4802956   0.3316558   0.6955519
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.1344593   0.9586350   1.3425318
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.4742268   0.1932770   1.1635684
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.1570122   0.6037178   2.2173891
1         Birth       ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         Birth       ki1119695-PROBIT           BELARUS                        Maternal             Control           0.6494216   0.3686467   1.1440450
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.9854209   0.9364123   1.0369944
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.8949833   0.8743247   0.9161300
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0629729   0.7782715   1.4518217
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9100355   0.6804287   1.2171219
1         6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.9683306   0.8344205   1.1237310
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0080000   0.6750631   1.5051392
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0456919   0.7420786   1.4735252
1         6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.7643205   0.6194360   0.9430932
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           1.0525761   0.9991373   1.1088730
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           0.9795754   0.8678036   1.1057432
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           0.9116072   0.8824688   0.9417076
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0775479   0.8949867   1.2973482
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.1409521   0.9558282   1.3619305
1         24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.9435461   0.6300869   1.4129467
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           1.4960000   1.1353162   1.9712711
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Maternal             Control           1.3010101   1.0644951   1.5900752
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.8722807   0.6405246   1.1878913
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9028087   0.6965367   1.1701658


### Parameter: PAR


vagbrth   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0071476   -0.0063067    0.0206020
0         6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.2193126   -0.3306933   -0.1079319
0         6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0095159   -0.0250061    0.0059742
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0353570   -0.0588651   -0.0118490
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.2286024   -0.3247185   -0.1324863
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0100238   -0.0090703    0.0291179
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0133070   -0.0995819    0.0729680
1         Birth       ki1119695-PROBIT           BELARUS                        Control              NA                -0.0005272   -0.0012677    0.0002133
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0011644   -0.0058075    0.0034788
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0180236   -0.0236086   -0.0124386
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0071831   -0.0662986    0.0519324
1         6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0032914   -0.0253490    0.0187662
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0027632   -0.0244018    0.0299282
1         6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0086907   -0.0175735    0.0001921
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0063687   -0.0012320    0.0139695
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0029217   -0.0240991    0.0182556
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0120451   -0.0179371   -0.0061532
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0205663   -0.0092495    0.0503821
1         24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0039405   -0.0386957    0.0308147
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.1565657    0.0232647    0.2898666
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0872365    0.0015157    0.1729574
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0410101   -0.1310979    0.0490776


### Parameter: PAF


vagbrth   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0933208   -0.0810879    0.2395928
0         6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.6871795   -1.4234646   -0.1745889
0         6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.1624572   -0.5218390    0.1120568
0         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.2252747   -0.4246071   -0.0538332
0         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.7377622   -1.3875256   -0.2648315
0         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0641999   -0.0578034    0.1721317
0         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0828548   -0.7759860    0.3397614
1         Birth       ki1119695-PROBIT           BELARUS                        Control              NA                -0.2159327   -0.6707390    0.1150668
1         Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0110653   -0.0566793    0.0325797
1         Birth       kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0557858   -0.0742151   -0.0376726
1         Birth       kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0238758   -0.2403947    0.1548483
1         6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0151502   -0.1236465    0.0828700
1         6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0242656   -0.2459539    0.2358806
1         6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.1349737   -0.3061737    0.0137871
1         6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0380450   -0.0066504    0.0807558
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0134257   -0.1170077    0.0805510
1         6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0466648   -0.0708524   -0.0230236
1         6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0794655   -0.0439085    0.1882586
1         24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0318669   -0.3668265    0.2210063
1         24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.2561983    0.0693565    0.4055287
1         24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.1400376    0.0113336    0.2519870
1         24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0884956   -0.3011225    0.0893843
