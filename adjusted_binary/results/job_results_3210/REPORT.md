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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* hdlvry
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_hdlvry

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        parity    s03rec24   n_cell      n
-------------------------  -----------------------------  -------  ---------  -------  -----
ki1017093b-PROVIDE         BANGLADESH                     1                0      257    690
ki1017093b-PROVIDE         BANGLADESH                     1                1        9    690
ki1017093b-PROVIDE         BANGLADESH                     2                0      233    690
ki1017093b-PROVIDE         BANGLADESH                     2                1        9    690
ki1017093b-PROVIDE         BANGLADESH                     3+               0      178    690
ki1017093b-PROVIDE         BANGLADESH                     3+               1        4    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      770   2239
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1   2239
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      737   2239
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        1   2239
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0      730   2239
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        0   2239
ki1101329-Keneba           GAMBIA                         1                0      203   1889
ki1101329-Keneba           GAMBIA                         1                1       20   1889
ki1101329-Keneba           GAMBIA                         2                0      186   1889
ki1101329-Keneba           GAMBIA                         2                1       12   1889
ki1101329-Keneba           GAMBIA                         3+               0     1438   1889
ki1101329-Keneba           GAMBIA                         3+               1       30   1889
ki1113344-GMS-Nepal        NEPAL                          1                0      316   1188
ki1113344-GMS-Nepal        NEPAL                          1                1       20   1188
ki1113344-GMS-Nepal        NEPAL                          2                0      302   1188
ki1113344-GMS-Nepal        NEPAL                          2                1        2   1188
ki1113344-GMS-Nepal        NEPAL                          3+               0      540   1188
ki1113344-GMS-Nepal        NEPAL                          3+               1        8   1188


The following strata were considered:

* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cdc439ec-4fb5-42e5-9bbf-f2aed870d217/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cdc439ec-4fb5-42e5-9bbf-f2aed870d217/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cdc439ec-4fb5-42e5-9bbf-f2aed870d217/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cdc439ec-4fb5-42e5-9bbf-f2aed870d217/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    1                    NA                0.0781229   0.0441195   0.1121263
ki1101329-Keneba   GAMBIA    2                    NA                0.0616497   0.0278909   0.0954086
ki1101329-Keneba   GAMBIA    3+                   NA                0.0195726   0.0126221   0.0265231


### Parameter: E(Y)


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    NA                   NA                0.0328216   0.0247849   0.0408583


### Parameter: RR


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba   GAMBIA    1                    1                 1.0000000   1.0000000   1.0000000
ki1101329-Keneba   GAMBIA    2                    1                 0.7891377   0.3923469   1.5872137
ki1101329-Keneba   GAMBIA    3+                   1                 0.2505361   0.1429148   0.4392011


### Parameter: PAR


studyid            country   intervention_level   baseline_level      estimate     ci_lower     ci_upper
-----------------  --------  -------------------  ---------------  -----------  -----------  -----------
ki1101329-Keneba   GAMBIA    1                    NA                -0.0453013   -0.0761429   -0.0144597


### Parameter: PAF


studyid            country   intervention_level   baseline_level     estimate    ci_lower     ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  -----------
ki1101329-Keneba   GAMBIA    1                    NA                -1.380229   -2.479904   -0.6280585
