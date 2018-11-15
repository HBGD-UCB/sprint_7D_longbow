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

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid               country                        predfeed6    s03rec24   n_cell     n
--------------------  -----------------------------  ----------  ---------  -------  ----
ki0047075b-MAL-ED     BANGLADESH                     0                   0      104   229
ki0047075b-MAL-ED     BANGLADESH                     0                   1        3   229
ki0047075b-MAL-ED     BANGLADESH                     1                   0      117   229
ki0047075b-MAL-ED     BANGLADESH                     1                   1        5   229
ki0047075b-MAL-ED     BRAZIL                         0                   0      156   206
ki0047075b-MAL-ED     BRAZIL                         0                   1       14   206
ki0047075b-MAL-ED     BRAZIL                         1                   0       32   206
ki0047075b-MAL-ED     BRAZIL                         1                   1        4   206
ki0047075b-MAL-ED     INDIA                          0                   0      200   231
ki0047075b-MAL-ED     INDIA                          0                   1       12   231
ki0047075b-MAL-ED     INDIA                          1                   0       18   231
ki0047075b-MAL-ED     INDIA                          1                   1        1   231
ki0047075b-MAL-ED     NEPAL                          0                   0      195   234
ki0047075b-MAL-ED     NEPAL                          0                   1       11   234
ki0047075b-MAL-ED     NEPAL                          1                   0       28   234
ki0047075b-MAL-ED     NEPAL                          1                   1        0   234
ki0047075b-MAL-ED     PERU                           0                   0      136   256
ki0047075b-MAL-ED     PERU                           0                   1       12   256
ki0047075b-MAL-ED     PERU                           1                   0      101   256
ki0047075b-MAL-ED     PERU                           1                   1        7   256
ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      224   244
ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1       17   244
ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0        1   244
ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        2   244
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0      240   243
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1        1   243
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0        2   243
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1        0   243
ki1000109-EE          PAKISTAN                       0                   0       83   175
ki1000109-EE          PAKISTAN                       0                   1        0   175
ki1000109-EE          PAKISTAN                       1                   0       92   175
ki1000109-EE          PAKISTAN                       1                   1        0   175
ki1113344-GMS-Nepal   NEPAL                          0                   0      143   557
ki1113344-GMS-Nepal   NEPAL                          0                   1        2   557
ki1113344-GMS-Nepal   NEPAL                          1                   0      400   557
ki1113344-GMS-Nepal   NEPAL                          1                   1       12   557


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/460d91a4-d9ce-46c0-b0d5-69d2b27d3fdf/b4c1fed2-d551-457a-aa5a-4b45f061d438/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/460d91a4-d9ce-46c0-b0d5-69d2b27d3fdf/b4c1fed2-d551-457a-aa5a-4b45f061d438/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/460d91a4-d9ce-46c0-b0d5-69d2b27d3fdf/b4c1fed2-d551-457a-aa5a-4b45f061d438/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/460d91a4-d9ce-46c0-b0d5-69d2b27d3fdf/b4c1fed2-d551-457a-aa5a-4b45f061d438/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   PERU      0                    NA                0.0810811   0.0370190   0.1251432
ki0047075b-MAL-ED   PERU      1                    NA                0.0648148   0.0182913   0.1113383


### Parameter: E(Y)


studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   PERU      NA                   NA                0.0742188   0.0420459   0.1063916


### Parameter: RR


studyid             country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED   PERU      0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED   PERU      1                    0                 0.7993827   0.3249068   1.966757


### Parameter: PAR


studyid             country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------------  --------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED   PERU      0                    NA                -0.0068623   -0.0339129   0.0201883


### Parameter: PAF


studyid             country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------------  --------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED   PERU      0                    NA                -0.0924609   -0.5225534   0.2161386
