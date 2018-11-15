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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        nchldlt5    s03rec24   n_cell      n
-------------------------  -----------------------------  ---------  ---------  -------  -----
ki1000108-IRC              INDIA                          1                  0       80    291
ki1000108-IRC              INDIA                          1                  1        9    291
ki1000108-IRC              INDIA                          2+                 0      191    291
ki1000108-IRC              INDIA                          2+                 1       11    291
ki1017093b-PROVIDE         BANGLADESH                     1                  0      484    517
ki1017093b-PROVIDE         BANGLADESH                     1                  1       21    517
ki1017093b-PROVIDE         BANGLADESH                     2+                 0       12    517
ki1017093b-PROVIDE         BANGLADESH                     2+                 1        0    517
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1550   1626
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        2   1626
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0       74   1626
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1        0   1626


The following strata were considered:

* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/516f403a-6209-4013-a436-c20774f7c336/e6c7fb47-959d-4228-98d5-4c798d1d3c31/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/516f403a-6209-4013-a436-c20774f7c336/e6c7fb47-959d-4228-98d5-4c798d1d3c31/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/516f403a-6209-4013-a436-c20774f7c336/e6c7fb47-959d-4228-98d5-4c798d1d3c31/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/516f403a-6209-4013-a436-c20774f7c336/e6c7fb47-959d-4228-98d5-4c798d1d3c31/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC   INDIA     1                    NA                0.1011236   0.0383789   0.1638683
ki1000108-IRC   INDIA     2+                   NA                0.0544554   0.0231095   0.0858014


### Parameter: E(Y)


studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC   INDIA     NA                   NA                0.0687285   0.0396109   0.0978461


### Parameter: RR


studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
--------------  --------  -------------------  ---------------  ----------  ----------  ---------
ki1000108-IRC   INDIA     1                    1                 1.0000000   1.0000000   1.000000
ki1000108-IRC   INDIA     2+                   1                 0.5385039   0.2310027   1.255338


### Parameter: PAR


studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------  --------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-IRC   INDIA     1                    NA                -0.0323951   -0.0811454   0.0163553


### Parameter: PAF


studyid         country   intervention_level   baseline_level      estimate    ci_lower    ci_upper
--------------  --------  -------------------  ---------------  -----------  ----------  ----------
ki1000108-IRC   INDIA     1                    NA                -0.4713483   -1.346842   0.0775411
