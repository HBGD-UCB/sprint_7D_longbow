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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        hdlvry    s03rec24   n_cell      n
-------------------------  -----------------------------  -------  ---------  -------  -----
ki1000108-CMC-V-BCS-2002   INDIA                          0                0      344    367
ki1000108-CMC-V-BCS-2002   INDIA                          0                1       15    367
ki1000108-CMC-V-BCS-2002   INDIA                          1                0        7    367
ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1    367
ki1000108-IRC              INDIA                          0                0      374    410
ki1000108-IRC              INDIA                          0                1       28    410
ki1000108-IRC              INDIA                          1                0        8    410
ki1000108-IRC              INDIA                          1                1        0    410
ki1000109-EE               PAKISTAN                       0                0      240    346
ki1000109-EE               PAKISTAN                       0                1        0    346
ki1000109-EE               PAKISTAN                       1                0      106    346
ki1000109-EE               PAKISTAN                       1                1        0    346
ki1017093b-PROVIDE         BANGLADESH                     0                0      494    690
ki1017093b-PROVIDE         BANGLADESH                     0                1       18    690
ki1017093b-PROVIDE         BANGLADESH                     1                0      174    690
ki1017093b-PROVIDE         BANGLADESH                     1                1        4    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2125   2163
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1   2163
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       37   2163
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0   2163
ki1113344-GMS-Nepal        NEPAL                          0                0      270   1108
ki1113344-GMS-Nepal        NEPAL                          0                1        6   1108
ki1113344-GMS-Nepal        NEPAL                          1                0      812   1108
ki1113344-GMS-Nepal        NEPAL                          1                1       20   1108


The following strata were considered:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/dc6d7dc9-37ed-4b46-8124-bbc0832fd72f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc6d7dc9-37ed-4b46-8124-bbc0832fd72f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dc6d7dc9-37ed-4b46-8124-bbc0832fd72f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dc6d7dc9-37ed-4b46-8124-bbc0832fd72f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0217391   -0.0026137   0.0460920
ki1113344-GMS-Nepal   NEPAL     1                    NA                0.0240385    0.0093064   0.0387705


### Parameter: E(Y)


studyid               country   intervention_level   baseline_level     estimate   ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  ---------  ----------
ki1113344-GMS-Nepal   NEPAL     NA                   NA                0.0234657   0.010849   0.0360824


### Parameter: RR


studyid               country   intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------  --------  -------------------  ---------------  ---------  ----------  ---------
ki1113344-GMS-Nepal   NEPAL     0                    0                 1.000000   1.0000000   1.000000
ki1113344-GMS-Nepal   NEPAL     1                    0                 1.105769   0.3083959   3.964792


### Parameter: PAR


studyid               country   intervention_level   baseline_level     estimate     ci_lower   ci_upper
--------------------  --------  -------------------  ---------------  ----------  -----------  ---------
ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0017266   -0.0196459   0.023099


### Parameter: PAF


studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0735786   -1.473961   0.6530839
