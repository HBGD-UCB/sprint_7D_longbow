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

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* single
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_single
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid               country                        predfeed3    s03rec24   n_cell     n
--------------------  -----------------------------  ----------  ---------  -------  ----
ki0047075b-MAL-ED     BANGLADESH                     0                   0       33   236
ki0047075b-MAL-ED     BANGLADESH                     0                   1        0   236
ki0047075b-MAL-ED     BANGLADESH                     1                   0      195   236
ki0047075b-MAL-ED     BANGLADESH                     1                   1        8   236
ki0047075b-MAL-ED     BRAZIL                         0                   0       90   217
ki0047075b-MAL-ED     BRAZIL                         0                   1        7   217
ki0047075b-MAL-ED     BRAZIL                         1                   0      109   217
ki0047075b-MAL-ED     BRAZIL                         1                   1       11   217
ki0047075b-MAL-ED     INDIA                          0                   0       52   236
ki0047075b-MAL-ED     INDIA                          0                   1        4   236
ki0047075b-MAL-ED     INDIA                          1                   0      171   236
ki0047075b-MAL-ED     INDIA                          1                   1        9   236
ki0047075b-MAL-ED     NEPAL                          0                   0       93   234
ki0047075b-MAL-ED     NEPAL                          0                   1        8   234
ki0047075b-MAL-ED     NEPAL                          1                   0      130   234
ki0047075b-MAL-ED     NEPAL                          1                   1        3   234
ki0047075b-MAL-ED     PERU                           0                   0       75   269
ki0047075b-MAL-ED     PERU                           0                   1        8   269
ki0047075b-MAL-ED     PERU                           1                   0      175   269
ki0047075b-MAL-ED     PERU                           1                   1       11   269
ki0047075b-MAL-ED     SOUTH AFRICA                   0                   0      161   268
ki0047075b-MAL-ED     SOUTH AFRICA                   0                   1       13   268
ki0047075b-MAL-ED     SOUTH AFRICA                   1                   0       88   268
ki0047075b-MAL-ED     SOUTH AFRICA                   1                   1        6   268
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   0      153   243
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                   1        1   243
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   0       89   243
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                   1        0   243
ki1000109-EE          PAKISTAN                       0                   0       28   348
ki1000109-EE          PAKISTAN                       0                   1        0   348
ki1000109-EE          PAKISTAN                       1                   0      320   348
ki1000109-EE          PAKISTAN                       1                   1        0   348
ki1113344-GMS-Nepal   NEPAL                          0                   0      160   942
ki1113344-GMS-Nepal   NEPAL                          0                   1        4   942
ki1113344-GMS-Nepal   NEPAL                          1                   0      762   942
ki1113344-GMS-Nepal   NEPAL                          1                   1       16   942


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
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
![](/tmp/a50faf85-a02b-494a-8133-043bcd83d68a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a50faf85-a02b-494a-8133-043bcd83d68a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a50faf85-a02b-494a-8133-043bcd83d68a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a50faf85-a02b-494a-8133-043bcd83d68a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   BRAZIL         0                    NA                0.0721649   0.0205514   0.1237785
ki0047075b-MAL-ED   BRAZIL         1                    NA                0.0916667   0.0399192   0.1434141
ki0047075b-MAL-ED   PERU           0                    NA                0.0963855   0.0327770   0.1599941
ki0047075b-MAL-ED   PERU           1                    NA                0.0591398   0.0251770   0.0931025
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0747126   0.0355727   0.1138526
ki0047075b-MAL-ED   SOUTH AFRICA   1                    NA                0.0638298   0.0143207   0.1133389


### Parameter: E(Y)


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   BRAZIL         NA                   NA                0.0829493   0.0461682   0.1197304
ki0047075b-MAL-ED   PERU           NA                   NA                0.0706320   0.0399576   0.1013063
ki0047075b-MAL-ED   SOUTH AFRICA   NA                   NA                0.0708955   0.0401109   0.1016802


### Parameter: RR


studyid             country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED   BRAZIL         0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED   BRAZIL         1                    0                 1.2702381   0.5107083   3.159347
ki0047075b-MAL-ED   PERU           0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED   PERU           1                    0                 0.6135753   0.2558215   1.471630
ki0047075b-MAL-ED   SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED   SOUTH AFRICA   1                    0                 0.8543372   0.3350710   2.178320


### Parameter: PAR


studyid             country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED   BRAZIL         0                    NA                 0.0107844   -0.0296533   0.0512220
ki0047075b-MAL-ED   PERU           0                    NA                -0.0257536   -0.0756549   0.0241478
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                -0.0038171   -0.0259621   0.0183278


### Parameter: PAF


studyid             country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED   BRAZIL         0                    NA                 0.1300115   -0.5185616   0.5015809
ki0047075b-MAL-ED   PERU           0                    NA                -0.3646164   -1.2663908   0.1783510
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                -0.0538415   -0.4164395   0.2159341
