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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid              country                        impsan    s03rec24   n_cell     n
-------------------  -----------------------------  -------  ---------  -------  ----
ki0047075b-MAL-ED    BANGLADESH                     0                0       33   234
ki0047075b-MAL-ED    BANGLADESH                     0                1        3   234
ki0047075b-MAL-ED    BANGLADESH                     1                0      193   234
ki0047075b-MAL-ED    BANGLADESH                     1                1        5   234
ki0047075b-MAL-ED    BRAZIL                         0                0        4   204
ki0047075b-MAL-ED    BRAZIL                         0                1        0   204
ki0047075b-MAL-ED    BRAZIL                         1                0      182   204
ki0047075b-MAL-ED    BRAZIL                         1                1       18   204
ki0047075b-MAL-ED    INDIA                          0                0      120   231
ki0047075b-MAL-ED    INDIA                          0                1        5   231
ki0047075b-MAL-ED    INDIA                          1                0       98   231
ki0047075b-MAL-ED    INDIA                          1                1        8   231
ki0047075b-MAL-ED    NEPAL                          0                0        1   235
ki0047075b-MAL-ED    NEPAL                          0                1        0   235
ki0047075b-MAL-ED    NEPAL                          1                0      223   235
ki0047075b-MAL-ED    NEPAL                          1                1       11   235
ki0047075b-MAL-ED    PERU                           0                0      175   250
ki0047075b-MAL-ED    PERU                           0                1       15   250
ki0047075b-MAL-ED    PERU                           1                0       58   250
ki0047075b-MAL-ED    PERU                           1                1        2   250
ki0047075b-MAL-ED    SOUTH AFRICA                   0                0      226   247
ki0047075b-MAL-ED    SOUTH AFRICA                   0                1       17   247
ki0047075b-MAL-ED    SOUTH AFRICA                   1                0        4   247
ki0047075b-MAL-ED    SOUTH AFRICA                   1                1        0   247
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                0      235   236
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                1        1   236
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                0        0   236
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                1        0   236
ki1017093b-PROVIDE   BANGLADESH                     0                0       32   688
ki1017093b-PROVIDE   BANGLADESH                     0                1        0   688
ki1017093b-PROVIDE   BANGLADESH                     1                0      634   688
ki1017093b-PROVIDE   BANGLADESH                     1                1       22   688
ki1114097-CONTENT    PERU                           0                0       14   214
ki1114097-CONTENT    PERU                           0                1        0   214
ki1114097-CONTENT    PERU                           1                0      186   214
ki1114097-CONTENT    PERU                           1                1       14   214


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9f724a8c-7003-46df-9f83-9edec1f1ab07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9f724a8c-7003-46df-9f83-9edec1f1ab07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9f724a8c-7003-46df-9f83-9edec1f1ab07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9f724a8c-7003-46df-9f83-9edec1f1ab07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   INDIA     0                    NA                0.0400000   0.0055729   0.0744271
ki0047075b-MAL-ED   INDIA     1                    NA                0.0754717   0.0250765   0.1258669


### Parameter: E(Y)


studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   INDIA     NA                   NA                0.0562771   0.0264938   0.0860603


### Parameter: RR


studyid             country   intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------  --------  -------------------  ---------------  ---------  ----------  ---------
ki0047075b-MAL-ED   INDIA     0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED   INDIA     1                    0                 1.886793   0.6347961   5.608078


### Parameter: PAR


studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   INDIA     0                    NA                0.0162771   -0.011822   0.0443761


### Parameter: PAF


studyid             country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   INDIA     0                    NA                0.2892308   -0.3912145   0.6368691
