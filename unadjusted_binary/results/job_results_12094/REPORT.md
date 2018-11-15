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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid               country                        earlybf    s03rec24   n_cell     n
--------------------  -----------------------------  --------  ---------  -------  ----
ki0047075b-MAL-ED     BANGLADESH                     0                 0       91   246
ki0047075b-MAL-ED     BANGLADESH                     0                 1        7   246
ki0047075b-MAL-ED     BANGLADESH                     1                 0      147   246
ki0047075b-MAL-ED     BANGLADESH                     1                 1        1   246
ki0047075b-MAL-ED     BRAZIL                         0                 0      107   223
ki0047075b-MAL-ED     BRAZIL                         0                 1       10   223
ki0047075b-MAL-ED     BRAZIL                         1                 0       98   223
ki0047075b-MAL-ED     BRAZIL                         1                 1        8   223
ki0047075b-MAL-ED     INDIA                          0                 0       93   245
ki0047075b-MAL-ED     INDIA                          0                 1        5   245
ki0047075b-MAL-ED     INDIA                          1                 0      139   245
ki0047075b-MAL-ED     INDIA                          1                 1        8   245
ki0047075b-MAL-ED     NEPAL                          0                 0      132   238
ki0047075b-MAL-ED     NEPAL                          0                 1        8   238
ki0047075b-MAL-ED     NEPAL                          1                 0       95   238
ki0047075b-MAL-ED     NEPAL                          1                 1        3   238
ki0047075b-MAL-ED     PERU                           0                 0       63   284
ki0047075b-MAL-ED     PERU                           0                 1        7   284
ki0047075b-MAL-ED     PERU                           1                 0      202   284
ki0047075b-MAL-ED     PERU                           1                 1       12   284
ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0      102   287
ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1        9   287
ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0      166   287
ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1       10   287
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0       42   253
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        0   253
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0      210   253
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        1   253
ki1000109-EE          PAKISTAN                       0                 0      137   175
ki1000109-EE          PAKISTAN                       0                 1        0   175
ki1000109-EE          PAKISTAN                       1                 0       38   175
ki1000109-EE          PAKISTAN                       1                 1        0   175
ki1113344-GMS-Nepal   NEPAL                          0                 0      374   542
ki1113344-GMS-Nepal   NEPAL                          0                 1        7   542
ki1113344-GMS-Nepal   NEPAL                          1                 0      154   542
ki1113344-GMS-Nepal   NEPAL                          1                 1        7   542


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
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/81e9cb2f-0bef-489b-bdfb-ec511c4e7236/0249a94a-ed57-47d6-b6bc-34e3bda22974/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/81e9cb2f-0bef-489b-bdfb-ec511c4e7236/0249a94a-ed57-47d6-b6bc-34e3bda22974/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/81e9cb2f-0bef-489b-bdfb-ec511c4e7236/0249a94a-ed57-47d6-b6bc-34e3bda22974/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/81e9cb2f-0bef-489b-bdfb-ec511c4e7236/0249a94a-ed57-47d6-b6bc-34e3bda22974/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid               country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED     BRAZIL         0                    NA                0.0854701   0.0346966   0.1362436
ki0047075b-MAL-ED     BRAZIL         1                    NA                0.0754717   0.0250725   0.1258709
ki0047075b-MAL-ED     INDIA          0                    NA                0.0510204   0.0073665   0.0946744
ki0047075b-MAL-ED     INDIA          1                    NA                0.0544218   0.0176756   0.0911680
ki0047075b-MAL-ED     PERU           0                    NA                0.1000000   0.0295978   0.1704022
ki0047075b-MAL-ED     PERU           1                    NA                0.0560748   0.0251960   0.0869535
ki0047075b-MAL-ED     SOUTH AFRICA   0                    NA                0.0810811   0.0302133   0.1319489
ki0047075b-MAL-ED     SOUTH AFRICA   1                    NA                0.0568182   0.0225579   0.0910785
ki1113344-GMS-Nepal   NEPAL          0                    NA                0.0183727   0.0048754   0.0318700
ki1113344-GMS-Nepal   NEPAL          1                    NA                0.0434783   0.0119486   0.0750079


### Parameter: E(Y)


studyid               country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED     BRAZIL         NA                   NA                0.0807175   0.0448848   0.1165502
ki0047075b-MAL-ED     INDIA          NA                   NA                0.0530612   0.0249356   0.0811869
ki0047075b-MAL-ED     PERU           NA                   NA                0.0669014   0.0377918   0.0960110
ki0047075b-MAL-ED     SOUTH AFRICA   NA                   NA                0.0662021   0.0373865   0.0950177
ki1113344-GMS-Nepal   NEPAL          NA                   NA                0.0258303   0.0124633   0.0391972


### Parameter: RR


studyid               country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
--------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED     BRAZIL         0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED     BRAZIL         1                    0                 0.8830189   0.3612498   2.158402
ki0047075b-MAL-ED     INDIA          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED     INDIA          1                    0                 1.0666667   0.3586487   3.172402
ki0047075b-MAL-ED     PERU           0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED     PERU           1                    0                 0.5607477   0.2293999   1.370697
ki0047075b-MAL-ED     SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED     SOUTH AFRICA   1                    0                 0.7007576   0.2935365   1.672914
ki1113344-GMS-Nepal   NEPAL          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal   NEPAL          1                    0                 2.3664596   0.8429262   6.643679


### Parameter: PAR


studyid               country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED     BRAZIL         0                    NA                -0.0047526   -0.0387647   0.0292595
ki0047075b-MAL-ED     INDIA          0                    NA                 0.0020408   -0.0321964   0.0362780
ki0047075b-MAL-ED     PERU           0                    NA                -0.0330986   -0.0910685   0.0248713
ki0047075b-MAL-ED     SOUTH AFRICA   0                    NA                -0.0148790   -0.0525136   0.0227556
ki1113344-GMS-Nepal   NEPAL          0                    NA                 0.0074576   -0.0027761   0.0176912


### Parameter: PAF


studyid               country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED     BRAZIL         0                    NA                -0.0588794   -0.5754307   0.2883054
ki0047075b-MAL-ED     INDIA          0                    NA                 0.0384615   -0.8804848   0.5083416
ki0047075b-MAL-ED     PERU           0                    NA                -0.4947368   -1.6311467   0.1508500
ki0047075b-MAL-ED     SOUTH AFRICA   0                    NA                -0.2247511   -0.9370836   0.2256322
ki1113344-GMS-Nepal   NEPAL          0                    NA                 0.2887139   -0.1934043   0.5760633
