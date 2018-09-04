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

**Outcome Variable:** s03rec24

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        gagebrth             s03rec24   n_cell      n
-------------------------  -----------------------------  ------------------  ---------  -------  -----
ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0      205    348
ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1        8    348
ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       47    348
ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1        5    348
ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       79    348
ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1        4    348
ki1000108-IRC              INDIA                          Full or late term           0      233    390
ki1000108-IRC              INDIA                          Full or late term           1       17    390
ki1000108-IRC              INDIA                          Preterm                     0       39    390
ki1000108-IRC              INDIA                          Preterm                     1        3    390
ki1000108-IRC              INDIA                          Early term                  0       92    390
ki1000108-IRC              INDIA                          Early term                  1        6    390
ki1000109-EE               PAKISTAN                       Full or late term           0       32    350
ki1000109-EE               PAKISTAN                       Full or late term           1        0    350
ki1000109-EE               PAKISTAN                       Preterm                     0      210    350
ki1000109-EE               PAKISTAN                       Preterm                     1        0    350
ki1000109-EE               PAKISTAN                       Early term                  0      108    350
ki1000109-EE               PAKISTAN                       Early term                  1        0    350
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0     1336   2140
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        0   2140
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0      314   2140
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        1   2140
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0      489   2140
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        0   2140
ki1101329-Keneba           GAMBIA                         Full or late term           0      790   1624
ki1101329-Keneba           GAMBIA                         Full or late term           1       13   1624
ki1101329-Keneba           GAMBIA                         Preterm                     0      228   1624
ki1101329-Keneba           GAMBIA                         Preterm                     1       13   1624
ki1101329-Keneba           GAMBIA                         Early term                  0      565   1624
ki1101329-Keneba           GAMBIA                         Early term                  1       15   1624


The following strata were considered:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/aa8be1eb-fb42-4437-b0d0-db3fc0c30185/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aa8be1eb-fb42-4437-b0d0-db3fc0c30185/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aa8be1eb-fb42-4437-b0d0-db3fc0c30185/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aa8be1eb-fb42-4437-b0d0-db3fc0c30185/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    Full or late term    NA                0.0168175   0.0080394   0.0255957
ki1101329-Keneba   GAMBIA    Preterm              NA                0.0564305   0.0279945   0.0848666
ki1101329-Keneba   GAMBIA    Early term           NA                0.0265635   0.0136436   0.0394834


### Parameter: E(Y)


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    NA                   NA                0.0252463   0.0176144   0.0328782


### Parameter: RR


studyid            country   intervention_level   baseline_level       estimate    ci_lower   ci_upper
-----------------  --------  -------------------  ------------------  ---------  ----------  ---------
ki1101329-Keneba   GAMBIA    Full or late term    Full or late term    1.000000   1.0000000   1.000000
ki1101329-Keneba   GAMBIA    Preterm              Full or late term    3.355463   1.6238641   6.933545
ki1101329-Keneba   GAMBIA    Early term           Full or late term    1.579514   0.7736278   3.224889


### Parameter: PAR


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    Full or late term    NA                0.0084288   0.0007119   0.0161457


### Parameter: PAF


studyid            country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki1101329-Keneba   GAMBIA    Full or late term    NA                0.3338626   -0.0246396   0.5669316
