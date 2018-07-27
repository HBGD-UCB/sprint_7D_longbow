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

* perdiar6
* agecat
* studyid
* country

## Data Summary

perdiar6   agecat        studyid              country      tr         ever_stunted   n_cell     n
---------  ------------  -------------------  -----------  --------  -------------  -------  ----
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control               0      138   635
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control               1       23   635
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Other                 0      409   635
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Other                 1       65   635
Q2         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control               0        4     5
Q2         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control               1        1     5
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               0      100   495
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               1       24   495
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 0      277   495
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 1       94   495
Q2         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               0        1     2
Q2         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               1        1     2
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               0       99   636
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               1       62   636
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 0      278   636
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                 1      197   636
Q2         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               0        2     5
Q2         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control               1        3     5


The following strata were considered:

* perdiar6: Q1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar6: Q1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar6: Q1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar6: Q2, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar6: Q2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar6: Q2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* perdiar6: Q2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar6: Q2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* perdiar6: Q2, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/88fe6dba-8e29-4511-8cf1-d77338b1f1c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/88fe6dba-8e29-4511-8cf1-d77338b1f1c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/88fe6dba-8e29-4511-8cf1-d77338b1f1c6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/88fe6dba-8e29-4511-8cf1-d77338b1f1c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


perdiar6   agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                0.3850932   0.3098678   0.4603186
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                NA                0.4147368   0.3703959   0.4590778
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control              NA                0.1428571   0.0887624   0.1969519
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Other                NA                0.1371308   0.1061394   0.1681222
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                0.1935484   0.1239402   0.2631566
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                NA                0.2533693   0.2090666   0.2976720


### Parameter: E(Y)


perdiar6   agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.4072327   0.3690185   0.4454469
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.1385827   0.1116881   0.1654773
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.2383838   0.2008095   0.2759582


### Parameter: RR


perdiar6   agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  ------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                Control           1.0769779   0.8619758   1.345608
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Other                Control           0.9599156   0.6176166   1.491926
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              Control           1.0000000   1.0000000   1.000000
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Other                Control           1.3090746   0.8775904   1.952706


### Parameter: PAR


perdiar6   agecat        studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ------------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                 0.0221395   -0.0430844   0.0873635
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control              NA                -0.0042745   -0.0508116   0.0422626
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                 0.0448355   -0.0170482   0.1067191


### Parameter: PAF


perdiar6   agecat        studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ------------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Q1         0-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                 0.0543658   -0.1201898   0.2017210
Q1         0-6 months    ki1017093b-PROVIDE   BANGLADESH   Control              NA                -0.0308442   -0.4277548   0.2557267
Q1         6-24 months   ki1017093b-PROVIDE   BANGLADESH   Control              NA                 0.1880809   -0.1166696   0.4096619
