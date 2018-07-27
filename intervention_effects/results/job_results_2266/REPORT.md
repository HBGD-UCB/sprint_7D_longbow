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

* trth2o
* agecat
* studyid
* country

## Data Summary

trth2o   agecat        studyid              country      tr         ever_stunted   n_cell     n
-------  ------------  -------------------  -----------  --------  -------------  -------  ----
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control               0      138   626
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control               1       24   626
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Other                 0      399   626
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Other                 1       65   626
1        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control               0        4    14
1        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Other                 0       10    14
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               0      100   484
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               1       23   484
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 0      270   484
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 1       91   484
1        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               0        1    13
1        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               1        2    13
1        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 0        7    13
1        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 1        3    13
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               0      100   627
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               1       62   627
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 0      271   627
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 1      194   627
1        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               0        1    14
1        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               1        3    14
1        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 0        7    14
1        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 1        3    14


The following strata were considered:

* trth2o: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* trth2o: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* trth2o: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* trth2o: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* trth2o: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* trth2o: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* trth2o: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* trth2o: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* trth2o: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/19e8b2e1-c27c-4871-97ef-890d2982b8a5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/19e8b2e1-c27c-4871-97ef-890d2982b8a5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/19e8b2e1-c27c-4871-97ef-890d2982b8a5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/19e8b2e1-c27c-4871-97ef-890d2982b8a5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


trth2o   agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                0.3827160   0.3078098   0.4576223
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                NA                0.4172043   0.3723503   0.4620583
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control              NA                0.1481481   0.0934002   0.2028961
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Other                NA                0.1400862   0.1084808   0.1716916
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                0.1869919   0.1180150   0.2559687
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                NA                0.2520776   0.2072403   0.2969148


### Parameter: E(Y)


trth2o   agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.4082935   0.3697900   0.4467970
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.1421725   0.1147936   0.1695514
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.2355372   0.1976945   0.2733799


### Parameter: RR


trth2o   agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------  ------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                Control           1.0901145   0.8719491   1.362866
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Other                Control           0.9455819   0.6132820   1.457935
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                Control           1.3480670   0.8950733   2.030319


### Parameter: PAR


trth2o   agecat        studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  ------------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                 0.0255774   -0.0391839   0.0903387
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control              NA                -0.0059756   -0.0528329   0.0408817
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                 0.0485453   -0.0128685   0.1099591


### Parameter: PAF


trth2o   agecat        studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  ------------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0        0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                 0.0626447   -0.1102183   0.2085926
0        0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control              NA                -0.0420308   -0.4296014   0.2404679
0        6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                 0.2061047   -0.1010574   0.4275777
