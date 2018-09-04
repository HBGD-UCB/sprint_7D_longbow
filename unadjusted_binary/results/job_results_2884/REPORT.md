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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        single    s03rec24   n_cell      n
-------------------------  -----------------------------  -------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                0      239    247
ki0047075b-MAL-ED          BANGLADESH                     0                1        8    247
ki0047075b-MAL-ED          BANGLADESH                     1                0        0    247
ki0047075b-MAL-ED          BANGLADESH                     1                1        0    247
ki0047075b-MAL-ED          BRAZIL                         0                0      177    223
ki0047075b-MAL-ED          BRAZIL                         0                1       15    223
ki0047075b-MAL-ED          BRAZIL                         1                0       28    223
ki0047075b-MAL-ED          BRAZIL                         1                1        3    223
ki0047075b-MAL-ED          INDIA                          0                0      232    244
ki0047075b-MAL-ED          INDIA                          0                1       12    244
ki0047075b-MAL-ED          INDIA                          1                0        0    244
ki0047075b-MAL-ED          INDIA                          1                1        0    244
ki0047075b-MAL-ED          NEPAL                          0                0      227    238
ki0047075b-MAL-ED          NEPAL                          0                1       11    238
ki0047075b-MAL-ED          NEPAL                          1                0        0    238
ki0047075b-MAL-ED          NEPAL                          1                1        0    238
ki0047075b-MAL-ED          PERU                           0                0      235    284
ki0047075b-MAL-ED          PERU                           0                1       18    284
ki0047075b-MAL-ED          PERU                           1                0       30    284
ki0047075b-MAL-ED          PERU                           1                1        1    284
ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      159    302
ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        8    302
ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      124    302
ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       11    302
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      242    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        1    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       10    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0    253
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2040   2256
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        2   2256
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      214   2256
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0   2256


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/11c05404-e4bd-4da5-8e3c-cc3508891b74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/11c05404-e4bd-4da5-8e3c-cc3508891b74/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/11c05404-e4bd-4da5-8e3c-cc3508891b74/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/11c05404-e4bd-4da5-8e3c-cc3508891b74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0479042   0.0154600   0.0803484
ki0047075b-MAL-ED   SOUTH AFRICA   1                    NA                0.0814815   0.0352567   0.1277063


### Parameter: E(Y)


studyid             country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED   SOUTH AFRICA   NA                   NA                0.0629139   0.0354838   0.090344


### Parameter: RR


studyid             country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED   SOUTH AFRICA   1                    0                 1.700926   0.7030659   4.115047


### Parameter: PAR


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0150097   -0.0103058   0.0403252


### Parameter: PAF


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.2385755   -0.2709954   0.5438478
