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

**Intervention Variable:** impfloor

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
* cleanck
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        impfloor    s03rec24   n_cell     n
-------------------------  -----------------------------  ---------  ---------  -------  ----
ki0047075b-MAL-ED          BANGLADESH                     0                  0       18   234
ki0047075b-MAL-ED          BANGLADESH                     0                  1        0   234
ki0047075b-MAL-ED          BANGLADESH                     1                  0      208   234
ki0047075b-MAL-ED          BANGLADESH                     1                  1        8   234
ki0047075b-MAL-ED          BRAZIL                         0                  0        2   204
ki0047075b-MAL-ED          BRAZIL                         0                  1        0   204
ki0047075b-MAL-ED          BRAZIL                         1                  0      184   204
ki0047075b-MAL-ED          BRAZIL                         1                  1       18   204
ki0047075b-MAL-ED          INDIA                          0                  0       14   233
ki0047075b-MAL-ED          INDIA                          0                  1        1   233
ki0047075b-MAL-ED          INDIA                          1                  0      206   233
ki0047075b-MAL-ED          INDIA                          1                  1       12   233
ki0047075b-MAL-ED          NEPAL                          0                  0      121   228
ki0047075b-MAL-ED          NEPAL                          0                  1        5   228
ki0047075b-MAL-ED          NEPAL                          1                  0       96   228
ki0047075b-MAL-ED          NEPAL                          1                  1        6   228
ki0047075b-MAL-ED          PERU                           0                  0      188   258
ki0047075b-MAL-ED          PERU                           0                  1       15   258
ki0047075b-MAL-ED          PERU                           1                  0       51   258
ki0047075b-MAL-ED          PERU                           1                  1        4   258
ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       19   253
ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2   253
ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      215   253
ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       17   253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      228   243
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1   243
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       14   243
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0   243
ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0   258
ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0   258
ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      246   258
ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       12   258
ki1000108-IRC              INDIA                          0                  0        0   306
ki1000108-IRC              INDIA                          0                  1        0   306
ki1000108-IRC              INDIA                          1                  0      284   306
ki1000108-IRC              INDIA                          1                  1       22   306
ki1017093b-PROVIDE         BANGLADESH                     0                  0       59   690
ki1017093b-PROVIDE         BANGLADESH                     0                  1        1   690
ki1017093b-PROVIDE         BANGLADESH                     1                  0      609   690
ki1017093b-PROVIDE         BANGLADESH                     1                  1       21   690
ki1113344-GMS-Nepal        NEPAL                          0                  0      748   934
ki1113344-GMS-Nepal        NEPAL                          0                  1       18   934
ki1113344-GMS-Nepal        NEPAL                          1                  0      162   934
ki1113344-GMS-Nepal        NEPAL                          1                  1        6   934
ki1114097-CONTENT          PERU                           0                  0       14   214
ki1114097-CONTENT          PERU                           0                  1        0   214
ki1114097-CONTENT          PERU                           1                  0      186   214
ki1114097-CONTENT          PERU                           1                  1       14   214


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1b2931cc-3f67-4d0b-9a09-e3be8cbd174a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1b2931cc-3f67-4d0b-9a09-e3be8cbd174a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1b2931cc-3f67-4d0b-9a09-e3be8cbd174a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1b2931cc-3f67-4d0b-9a09-e3be8cbd174a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED     NEPAL     0                    NA                0.0396825    0.0055220   0.0738431
ki0047075b-MAL-ED     NEPAL     1                    NA                0.0588235    0.0130606   0.1045864
ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0234987    0.0083117   0.0386857
ki1113344-GMS-Nepal   NEPAL     1                    NA                0.0357143   -0.0040138   0.0754424


### Parameter: E(Y)


studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED     NEPAL     NA                   NA                0.0482456   0.0203699   0.0761214
ki1113344-GMS-Nepal   NEPAL     NA                   NA                0.0256959   0.0113300   0.0400619


### Parameter: RR


studyid               country   intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------  --------  -------------------  ---------------  ---------  ----------  ---------
ki0047075b-MAL-ED     NEPAL     0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED     NEPAL     1                    0                 1.482353   0.4645589   4.730015
ki1113344-GMS-Nepal   NEPAL     0                    0                 1.000000   1.0000000   1.000000
ki1113344-GMS-Nepal   NEPAL     1                    0                 1.519841   0.4198323   5.502001


### Parameter: PAR


studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED     NEPAL     0                    NA                0.0085631   -0.0170147   0.0341408
ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0021972   -0.0054649   0.0098594


### Parameter: PAF


studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED     NEPAL     0                    NA                0.1774892   -0.5496297   0.5634286
ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0855091   -0.2619595   0.3373055
