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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
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
editor_options: 
  chunk_output_type: console
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

* agecat
* studyid
* country
* intXnchldlt5

## Data Summary

agecat        studyid                    country                        intXnchldlt5      ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS            MALAWI                         1_0-6 months                 0        1       1
0-6 months    iLiNS_DYADM_LNS            MALAWI                         1_0-6 months                 1        0       1
0-6 months    iLiNS_DYADM_LNS            MALAWI                         2+_0-6 months                0        1       2
0-6 months    iLiNS_DYADM_LNS            MALAWI                         2+_0-6 months                1        1       2
0-6 months    ki1000107-Serrinha-VitA    BRAZIL                         1_0-6 months                 0        6       6
0-6 months    ki1000107-Serrinha-VitA    BRAZIL                         1_0-6 months                 1        0       6
0-6 months    ki1000107-Serrinha-VitA    BRAZIL                         2+_0-6 months                0        0       1
0-6 months    ki1000107-Serrinha-VitA    BRAZIL                         2+_0-6 months                1        1       1
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1_0-6 months                 0      401     469
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1_0-6 months                 1       68     469
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+_0-6 months                0        9      10
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+_0-6 months                1        1      10
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months                 0     1419    1521
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months                 1      102    1521
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months                0       63      70
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months                1        7      70
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_0-6 months                 0      386     534
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_0-6 months                 1      148     534
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_0-6 months                0       53      96
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_0-6 months                1       43      96
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_0-6 months                 0        1       1
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_0-6 months                 1        0       1
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_0-6 months                0        1       2
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_0-6 months                1        1       2
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months                 0       81     122
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months                 1       41     122
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months                0       13      23
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months                1       10      23
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_0-6 months                 0    18048   24748
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_0-6 months                 1     6700   24748
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_0-6 months                0      702     904
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_0-6 months                1      202     904
6-24 months   iLiNS_DYADM_LNS            MALAWI                         1_6-24 months                0       20      38
6-24 months   iLiNS_DYADM_LNS            MALAWI                         1_6-24 months                1       18      38
6-24 months   iLiNS_DYADM_LNS            MALAWI                         2+_6-24 months               0       19      31
6-24 months   iLiNS_DYADM_LNS            MALAWI                         2+_6-24 months               1       12      31
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   1_6-24 months                0      569     811
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   1_6-24 months                1      242     811
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   2+_6-24 months               0      389     624
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   2+_6-24 months               1      235     624
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_6-24 months                0      167     206
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_6-24 months                1       39     206
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_6-24 months               0       61     104
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_6-24 months               1       43     104
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1_6-24 months                0      233     257
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1_6-24 months                1       24     257
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+_6-24 months               0        7       8
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+_6-24 months               1        1       8
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months                0     1008    1226
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months                1      218    1226
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months               0       48      61
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months               1       13      61
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1_6-24 months                0      744    1073
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1_6-24 months                1      329    1073
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+_6-24 months               0      516     843
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+_6-24 months               1      327     843
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_6-24 months                0      396     660
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_6-24 months                1      264     660
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_6-24 months               0       60      99
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_6-24 months               1       39      99
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1_6-24 months                0       31      50
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1_6-24 months                1       19      50
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6-24 months               0       24      44
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6-24 months               1       20      44
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months                0      172     343
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months                1      171     343
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months               0       28      52
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months               1       24      52
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_6-24 months                0     9507   11434
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_6-24 months                1     1927   11434
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_6-24 months               0      313     375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_6-24 months               1       62     375


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO, intXnchldlt5: 2+_6-24 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 2+_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 2+_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 2+_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO, intXnchldlt5: 2+_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 2+_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 2+_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 2+_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_0-6 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 2+_6-24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c95ad85b-4cf0-486d-819f-a517c3140f4b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c95ad85b-4cf0-486d-819f-a517c3140f4b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c95ad85b-4cf0-486d-819f-a517c3140f4b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c95ad85b-4cf0-486d-819f-a517c3140f4b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intXnchldlt5     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1_0-6 months     Control              NA                0.1610169    0.0946300   0.2274039
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1_0-6 months     Other                NA                0.1396011    0.1033057   0.1758966
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Control              NA                0.0678851    0.0426844   0.0930859
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Other                NA                0.0542636    0.0316861   0.0768410
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Zinc                 NA                0.0732357    0.0545969   0.0918744
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months    Control              NA                0.1052632   -0.0337262   0.2442525
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months    Other                NA                0.0000000    0.0000000   0.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months    Zinc                 NA                0.1428571    0.0260912   0.2596231
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_0-6 months     Control              NA                0.2619048    0.1677931   0.3560164
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_0-6 months     LNS                  NA                0.2800000    0.2384765   0.3215235
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_0-6 months    Control              NA                0.6428571    0.3905462   0.8951681
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_0-6 months    LNS                  NA                0.4146341    0.3074424   0.5218259
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months     Control              NA                0.3793103    0.2019850   0.5566357
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months     LNS                  NA                0.3559322    0.2332564   0.4786080
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months     Other                NA                0.2647059    0.1158013   0.4136105
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months    Control              NA                0.2500000   -0.0568007   0.5568007
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months    LNS                  NA                0.3000000    0.0095908   0.5904092
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months    Other                NA                1.0000000    1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_0-6 months     Control              NA                0.2890638    0.2754375   0.3026901
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_0-6 months     Maternal             NA                0.2529084    0.2411028   0.2647140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_0-6 months    Control              NA                0.2657658    0.2008231   0.3307084
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_0-6 months    Maternal             NA                0.1826087    0.1250401   0.2401773
6-24 months   iLiNS_DYADM_LNS            MALAWI                         1_6-24 months    Control              NA                0.3750000    0.1345999   0.6154001
6-24 months   iLiNS_DYADM_LNS            MALAWI                         1_6-24 months    LNS                  NA                0.5454545    0.3345939   0.7563152
6-24 months   iLiNS_DYADM_LNS            MALAWI                         2+_6-24 months   Control              NA                0.4375000    0.1904080   0.6845920
6-24 months   iLiNS_DYADM_LNS            MALAWI                         2+_6-24 months   LNS                  NA                0.3333333    0.0908307   0.5758359
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   1_6-24 months    Control              NA                0.3297872    0.2237215   0.4358530
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   1_6-24 months    Zinc                 NA                0.2889246    0.1979569   0.3798923
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   2+_6-24 months   Control              NA                0.3375000    0.2161961   0.4588039
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   2+_6-24 months   Zinc                 NA                0.3900862    0.3235808   0.4565916
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_6-24 months    Control              NA                0.1212121    0.0567652   0.1856591
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_6-24 months    VitA                 NA                0.2523364    0.1698361   0.3348368
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_6-24 months   Control              NA                0.4166667    0.2913170   0.5420164
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_6-24 months   VitA                 NA                0.4090909    0.2631120   0.5550698
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1_6-24 months    Control              NA                0.0952381    0.0226113   0.1678649
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1_6-24 months    Other                NA                0.0927835    0.0518777   0.1336893
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Control              NA                0.1797386    0.1366996   0.2227775
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Other                NA                0.1538462    0.1146041   0.1930882
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Zinc                 NA                0.1899160    0.1583868   0.2214451
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months   Control              NA                0.2352941    0.0319809   0.4386074
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months   Other                NA                0.1875000   -0.0053367   0.3803367
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months   Zinc                 NA                0.2142857    0.0610404   0.3675311
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1_6-24 months    Control              NA                0.3320611    0.2526171   0.4115050
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1_6-24 months    LNS                  NA                0.2983970    0.2291186   0.3676755
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+_6-24 months   Control              NA                0.4200913    0.3188552   0.5213274
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+_6-24 months   LNS                  NA                0.3766026    0.3258934   0.4273117
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_6-24 months    Control              NA                0.4537037    0.3597388   0.5476686
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_6-24 months    LNS                  NA                0.3894928    0.3487826   0.4302029
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_6-24 months   Control              NA                0.1764706   -0.0056688   0.3586100
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_6-24 months   LNS                  NA                0.4390244    0.3310646   0.5469842
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1_6-24 months    Control              NA                0.3750000    0.1353758   0.6146242
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1_6-24 months    Maternal             NA                0.3823529    0.2173476   0.5473583
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6-24 months   Control              NA                0.4375000    0.1916159   0.6833841
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6-24 months   Maternal             NA                0.4642857    0.2774239   0.6511475
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months    Control              NA                0.4651163    0.3595456   0.5706870
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months    LNS                  NA                0.5254237    0.4517516   0.5990959
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months    Other                NA                0.4750000    0.3654119   0.5845881
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months   Control              NA                0.3125000    0.0831673   0.5418327
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months   LNS                  NA                0.5185185    0.3282115   0.7088255
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months   Other                NA                0.5555556    0.2277503   0.8833608
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_6-24 months    Control              NA                0.1645179    0.1455799   0.1834559
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_6-24 months    Maternal             NA                0.1722625    0.1572741   0.1872510
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_6-24 months   Control              NA                0.2043011    0.1164767   0.2921254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_6-24 months   Maternal             NA                0.1269841    0.0632322   0.1907361


### Parameter: E(Y)


agecat        studyid                    country                        intXnchldlt5     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1_0-6 months     NA                   NA                0.1449893   0.1130902   0.1768885
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months     NA                   NA                0.0670611   0.0544867   0.0796356
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months    NA                   NA                0.1000000   0.0292144   0.1707856
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_0-6 months     NA                   NA                0.2771536   0.2391549   0.3151522
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_0-6 months    NA                   NA                0.4479167   0.3479196   0.5479137
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months     NA                   NA                0.3360656   0.2519009   0.4202303
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months    NA                   NA                0.4347826   0.2276347   0.6419305
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_0-6 months     NA                   NA                0.2707289   0.2616040   0.2798539
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_0-6 months    NA                   NA                0.2234513   0.1799227   0.2669799
6-24 months   iLiNS_DYADM_LNS            MALAWI                         1_6-24 months    NA                   NA                0.4736842   0.3127995   0.6345690
6-24 months   iLiNS_DYADM_LNS            MALAWI                         2+_6-24 months   NA                   NA                0.3870968   0.2127985   0.5613951
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   1_6-24 months    NA                   NA                0.2983970   0.2269583   0.3698358
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   2+_6-24 months   NA                   NA                0.3766026   0.3248322   0.4283729
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_6-24 months    NA                   NA                0.1893204   0.1356920   0.2429487
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_6-24 months   NA                   NA                0.4134615   0.3183583   0.5085648
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1_6-24 months    NA                   NA                0.0933852   0.0577419   0.1290286
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months    NA                   NA                0.1778140   0.1564025   0.1992256
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months   NA                   NA                0.2131148   0.1094968   0.3167327
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1_6-24 months    NA                   NA                0.3066170   0.2508978   0.3623361
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+_6-24 months   NA                   NA                0.3879004   0.3426651   0.4331356
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_6-24 months    NA                   NA                0.4000000   0.3625966   0.4374034
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_6-24 months   NA                   NA                0.3939394   0.2971990   0.4906798
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1_6-24 months    NA                   NA                0.3800000   0.2440943   0.5159057
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6-24 months   NA                   NA                0.4545455   0.3057184   0.6033725
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months    NA                   NA                0.4985423   0.4455511   0.5515334
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months   NA                   NA                0.4615385   0.3247201   0.5983568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_6-24 months    NA                   NA                0.1685324   0.1565567   0.1805082
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_6-24 months   NA                   NA                0.1653333   0.1108090   0.2198577


### Parameter: RR


agecat        studyid                    country                        intXnchldlt5     intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------  -------------------  ---------------  ----------  ----------  -----------
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1_0-6 months     Other                Control           0.8669966   0.5325125    1.4115782
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Other                Control           0.7993441   0.4576875    1.3960421
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Zinc                 Control           1.0788180   0.6878226    1.6920762
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months    Other                Control           0.0000000   0.0000000    0.0000001
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months    Zinc                 Control           1.3571429   0.2872134    6.4127808
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_0-6 months     LNS                  Control           1.0690909   0.7247521    1.5770293
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_0-6 months    LNS                  Control           0.6449864   0.4031280    1.0319490
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months     LNS                  Control           0.9383667   0.5249640    1.6773191
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months     Other                Control           0.6978610   0.3358250    1.4501895
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months    LNS                  Control           1.2000000   0.2513966    5.7280006
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months    Other                Control           4.0000000   1.1724454   13.6466907
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_0-6 months     Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_0-6 months     Maternal             Control           0.8749224   0.8187427    0.9349569
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_0-6 months    Maternal             Control           0.6871039   0.4610642    1.0239611
6-24 months   iLiNS_DYADM_LNS            MALAWI                         1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS            MALAWI                         1_6-24 months    LNS                  Control           1.4545455   0.6880378    3.0749800
6-24 months   iLiNS_DYADM_LNS            MALAWI                         2+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS            MALAWI                         2+_6-24 months   LNS                  Control           0.7619048   0.3033293    1.9137582
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   1_6-24 months    Zinc                 Control           0.8760938   0.5502653    1.3948553
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   2+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   2+_6-24 months   Zinc                 Control           1.1558110   0.7504498    1.7801312
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_6-24 months    VitA                 Control           2.0817757   1.1152224    3.8860321
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_6-24 months   VitA                 Control           0.9818182   0.6156483    1.5657753
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1_6-24 months    Other                Control           0.9742268   0.4037486    2.3507644
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Other                Control           0.8559441   0.6032597    1.2144690
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Zinc                 Control           1.0566234   0.7895467    1.4140429
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months   Other                Control           0.7968750   0.2079773    3.0532650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months   Zinc                 Control           0.9107143   0.2966617    2.7957785
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1_6-24 months    LNS                  Control           0.8986210   0.6442465    1.2534327
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+_6-24 months   LNS                  Control           0.8964778   0.6820383    1.1783393
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_6-24 months    LNS                  Control           0.8584738   0.6807328    1.0826235
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_6-24 months   LNS                  Control           2.4878048   0.8610414    7.1880080
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1_6-24 months    Maternal             Control           1.0196078   0.4715848    2.2044820
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6-24 months   Maternal             Control           1.0612245   0.5316106    2.1184632
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months    LNS                  Control           1.1296610   0.8651297    1.4750782
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months    Other                Control           1.0212500   0.7388811    1.4115283
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months   LNS                  Control           1.6592593   0.7304066    3.7693270
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months   Other                Control           1.7777778   0.6933005    4.5586204
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_6-24 months    Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_6-24 months    Maternal             Control           1.0470748   0.9064386    1.2095310
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_6-24 months   Maternal             Control           0.6215539   0.3209313    1.2037754


### Parameter: PAR


agecat        studyid                    country                        intXnchldlt5     intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1_0-6 months     Control              NA                -0.0160276   -0.0726587    0.0406034
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Control              NA                -0.0008240   -0.0225808    0.0209328
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months    Control              NA                -0.0052632   -0.1229139    0.1123876
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_0-6 months     Control              NA                 0.0152488   -0.0714370    0.1019346
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_0-6 months    Control              NA                -0.1949405   -0.4296584    0.0397774
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months     Control              NA                -0.0432448   -0.1967995    0.1103100
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months    Control              NA                 0.1847826   -0.0827197    0.4522850
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_0-6 months     Control              NA                -0.0183348   -0.0276520   -0.0090177
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_0-6 months    Control              NA                -0.0423144   -0.0866035    0.0019747
6-24 months   iLiNS_DYADM_LNS            MALAWI                         1_6-24 months    Control              NA                 0.0986842   -0.0884227    0.2857911
6-24 months   iLiNS_DYADM_LNS            MALAWI                         2+_6-24 months   Control              NA                -0.0504032   -0.2189571    0.1181506
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   1_6-24 months    Control              NA                -0.0313902   -0.1419478    0.0791674
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   2+_6-24 months   Control              NA                 0.0391026   -0.0727944    0.1509995
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_6-24 months    Control              NA                 0.0681083    0.0129966    0.1232200
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_6-24 months   Control              NA                -0.0032051   -0.0846134    0.0782032
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1_6-24 months    Control              NA                -0.0018529   -0.0647741    0.0610684
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Control              NA                -0.0019245   -0.0391554    0.0353064
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months   Control              NA                -0.0221794   -0.1925703    0.1482115
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1_6-24 months    Control              NA                -0.0254441   -0.1051086    0.0542204
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+_6-24 months   Control              NA                -0.0321910   -0.1170863    0.0527043
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_6-24 months    Control              NA                -0.0537037   -0.1393705    0.0319631
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_6-24 months   Control              NA                 0.2174688    0.0410032    0.3939344
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1_6-24 months    Control              NA                 0.0050000   -0.1928420    0.2028420
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6-24 months   Control              NA                 0.0170455   -0.1795208    0.2136117
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months    Control              NA                 0.0334260   -0.0580311    0.1248831
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months   Control              NA                 0.1490385   -0.0483128    0.3463897
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_6-24 months    Control              NA                 0.0040146   -0.0085114    0.0165406
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_6-24 months   Control              NA                -0.0389677   -0.0941334    0.0161979


### Parameter: PAF


agecat        studyid                    country                        intXnchldlt5     intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1_0-6 months     Control              NA                -0.1105434   -0.5779598    0.2184170
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_0-6 months     Control              NA                -0.0122869   -0.3947284    0.2652872
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_0-6 months    Control              NA                -0.0526316   -2.2173123    0.6556028
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_0-6 months     Control              NA                 0.0550193   -0.3156946    0.3212798
0-6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_0-6 months    Control              NA                -0.4352159   -1.0848125    0.0119760
0-6 months    ki1148112-LCNI-5           MALAWI                         1_0-6 months     Control              NA                -0.1286796   -0.6921809    0.2471741
0-6 months    ki1148112-LCNI-5           MALAWI                         2+_0-6 months    Control              NA                 0.4250000   -0.6651526    0.8014446
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_0-6 months     Control              NA                -0.0677239   -0.1025613   -0.0339873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_0-6 months    Control              NA                -0.1893676   -0.4050163   -0.0068177
6-24 months   iLiNS_DYADM_LNS            MALAWI                         1_6-24 months    Control              NA                 0.2083333   -0.3082989    0.5209534
6-24 months   iLiNS_DYADM_LNS            MALAWI                         2+_6-24 months   Control              NA                -0.1302083   -0.6638905    0.2322987
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   1_6-24 months    Control              NA                -0.1051961   -0.5599759    0.2170018
6-24 months   iLiNS-Zinc_ZvLNS           BURKINA FASO                   2+_6-24 months   Control              NA                 0.1038298   -0.2481161    0.3565334
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_6-24 months    Control              NA                 0.3597514    0.0111318    0.5854672
6-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_6-24 months   Control              NA                -0.0077519   -0.2252015    0.1711045
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1_6-24 months    Control              NA                -0.0198413   -0.9744448    0.4732310
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6-24 months    Control              NA                -0.0108233   -0.2434653    0.1782933
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6-24 months   Control              NA                -0.1040724   -1.2763737    0.4645098
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1_6-24 months    Control              NA                -0.0829834   -0.3838917    0.1524966
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+_6-24 months   Control              NA                -0.0829877   -0.3242531    0.1143215
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_6-24 months    Control              NA                -0.1342593   -0.3702079    0.0610593
6-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_6-24 months   Control              NA                 0.5520362   -0.1943685    0.8319852
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1_6-24 months    Control              NA                 0.0131579   -0.6725311    0.4177344
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6-24 months   Control              NA                 0.0375000   -0.5086007    0.3859169
6-24 months   ki1148112-LCNI-5           MALAWI                         1_6-24 months    Control              NA                 0.0670475   -0.1358243    0.2336839
6-24 months   ki1148112-LCNI-5           MALAWI                         2+_6-24 months   Control              NA                 0.3229167   -0.2764738    0.6408529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_6-24 months    Control              NA                 0.0238207   -0.0537810    0.0957077
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_6-24 months   Control              NA                -0.2356920   -0.6016369    0.0466411
