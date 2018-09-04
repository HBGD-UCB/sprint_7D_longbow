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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        feducyrs    s03rec24   n_cell      n
-------------------------  -----------------------------  ---------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     Low                0       38    140
ki0047075b-MAL-ED          BANGLADESH                     Low                1        1    140
ki0047075b-MAL-ED          BANGLADESH                     Medium             0       48    140
ki0047075b-MAL-ED          BANGLADESH                     Medium             1        2    140
ki0047075b-MAL-ED          BANGLADESH                     High               0       50    140
ki0047075b-MAL-ED          BANGLADESH                     High               1        1    140
ki0047075b-MAL-ED          INDIA                          Low                0       57    146
ki0047075b-MAL-ED          INDIA                          Low                1        1    146
ki0047075b-MAL-ED          INDIA                          Medium             0       43    146
ki0047075b-MAL-ED          INDIA                          Medium             1        1    146
ki0047075b-MAL-ED          INDIA                          High               0       40    146
ki0047075b-MAL-ED          INDIA                          High               1        4    146
ki0047075b-MAL-ED          NEPAL                          Low                0       27     96
ki0047075b-MAL-ED          NEPAL                          Low                1        0     96
ki0047075b-MAL-ED          NEPAL                          Medium             0       25     96
ki0047075b-MAL-ED          NEPAL                          Medium             1        2     96
ki0047075b-MAL-ED          NEPAL                          High               0       39     96
ki0047075b-MAL-ED          NEPAL                          High               1        3     96
ki0047075b-MAL-ED          PERU                           Low                0       60    236
ki0047075b-MAL-ED          PERU                           Low                1        5    236
ki0047075b-MAL-ED          PERU                           Medium             0       54    236
ki0047075b-MAL-ED          PERU                           Medium             1        4    236
ki0047075b-MAL-ED          PERU                           High               0      105    236
ki0047075b-MAL-ED          PERU                           High               1        8    236
ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       36    104
ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0    104
ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       26    104
ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        3    104
ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       37    104
ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        2    104
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       57    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        0    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       18    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        0    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0      128    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        1    204
ki1017093b-PROVIDE         BANGLADESH                     Low                0      228    690
ki1017093b-PROVIDE         BANGLADESH                     Low                1        6    690
ki1017093b-PROVIDE         BANGLADESH                     Medium             0      224    690
ki1017093b-PROVIDE         BANGLADESH                     Medium             1        3    690
ki1017093b-PROVIDE         BANGLADESH                     High               0      216    690
ki1017093b-PROVIDE         BANGLADESH                     High               1       13    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0     1195   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        2   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0      635   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        0   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      432   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0   2264
ki1113344-GMS-Nepal        NEPAL                          Low                0      492   1186
ki1113344-GMS-Nepal        NEPAL                          Low                1       18   1186
ki1113344-GMS-Nepal        NEPAL                          Medium             0      384   1186
ki1113344-GMS-Nepal        NEPAL                          Medium             1        6   1186
ki1113344-GMS-Nepal        NEPAL                          High               0      280   1186
ki1113344-GMS-Nepal        NEPAL                          High               1        6   1186


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b9d66ee3-c98b-4396-8507-f4572dcbafb5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b9d66ee3-c98b-4396-8507-f4572dcbafb5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b9d66ee3-c98b-4396-8507-f4572dcbafb5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b9d66ee3-c98b-4396-8507-f4572dcbafb5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki1113344-GMS-Nepal   NEPAL     Low                  NA                0.0352941    0.0126272   0.0579611
ki1113344-GMS-Nepal   NEPAL     Medium               NA                0.0153846   -0.0019045   0.0326738
ki1113344-GMS-Nepal   NEPAL     High                 NA                0.0209790   -0.0025300   0.0444881


### Parameter: E(Y)


studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1113344-GMS-Nepal   NEPAL     NA                   NA                0.0252951   0.0126465   0.0379437


### Parameter: RR


studyid               country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
--------------------  --------  -------------------  ---------------  ----------  ----------  ---------
ki1113344-GMS-Nepal   NEPAL     Low                  Low               1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal   NEPAL     Medium               Low               0.4358974   0.1194674   1.590447
ki1113344-GMS-Nepal   NEPAL     High                 Low               0.5944056   0.1633628   2.162781


### Parameter: PAR


studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki1113344-GMS-Nepal   NEPAL     Low                  NA                -0.009999   -0.0252273   0.0052293


### Parameter: PAF


studyid               country   intervention_level   baseline_level      estimate   ci_lower    ci_upper
--------------------  --------  -------------------  ---------------  -----------  ---------  ----------
ki1113344-GMS-Nepal   NEPAL     Low                  NA                -0.3952941   -1.10104   0.0733897
