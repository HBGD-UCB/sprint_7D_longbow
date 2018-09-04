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

**Intervention Variable:** predfeed36

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

studyid               country                        predfeed36    s03rec24   n_cell      n
--------------------  -----------------------------  -----------  ---------  -------  -----
ki0047075b-MAL-ED     BANGLADESH                     0                    0      109    239
ki0047075b-MAL-ED     BANGLADESH                     0                    1        3    239
ki0047075b-MAL-ED     BANGLADESH                     1                    0      122    239
ki0047075b-MAL-ED     BANGLADESH                     1                    1        5    239
ki0047075b-MAL-ED     BRAZIL                         0                    0      166    217
ki0047075b-MAL-ED     BRAZIL                         0                    1       13    217
ki0047075b-MAL-ED     BRAZIL                         1                    0       33    217
ki0047075b-MAL-ED     BRAZIL                         1                    1        5    217
ki0047075b-MAL-ED     INDIA                          0                    0      207    239
ki0047075b-MAL-ED     INDIA                          0                    1       12    239
ki0047075b-MAL-ED     INDIA                          1                    0       19    239
ki0047075b-MAL-ED     INDIA                          1                    1        1    239
ki0047075b-MAL-ED     NEPAL                          0                    0      195    237
ki0047075b-MAL-ED     NEPAL                          0                    1       11    237
ki0047075b-MAL-ED     NEPAL                          1                    0       31    237
ki0047075b-MAL-ED     NEPAL                          1                    1        0    237
ki0047075b-MAL-ED     PERU                           0                    0      140    270
ki0047075b-MAL-ED     PERU                           0                    1       10    270
ki0047075b-MAL-ED     PERU                           1                    0      111    270
ki0047075b-MAL-ED     PERU                           1                    1        9    270
ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      254    274
ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1       17    274
ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0        1    274
ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        2    274
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      245    248
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        1    248
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0        2    248
ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0    248
ki1000109-EE          PAKISTAN                       0                    0      154    342
ki1000109-EE          PAKISTAN                       0                    1        0    342
ki1000109-EE          PAKISTAN                       1                    0      188    342
ki1000109-EE          PAKISTAN                       1                    1        0    342
ki1113344-GMS-Nepal   NEPAL                          0                    0      202   1044
ki1113344-GMS-Nepal   NEPAL                          0                    1        4   1044
ki1113344-GMS-Nepal   NEPAL                          1                    0      816   1044
ki1113344-GMS-Nepal   NEPAL                          1                    1       22   1044


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
![](/tmp/03f2df35-ac17-49f4-9ccf-c51a9b571164/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03f2df35-ac17-49f4-9ccf-c51a9b571164/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03f2df35-ac17-49f4-9ccf-c51a9b571164/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03f2df35-ac17-49f4-9ccf-c51a9b571164/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   BRAZIL    0                    NA                0.0726257   0.0345194   0.1107320
ki0047075b-MAL-ED   BRAZIL    1                    NA                0.1315789   0.0238537   0.2393042
ki0047075b-MAL-ED   PERU      0                    NA                0.0666667   0.0266739   0.1066594
ki0047075b-MAL-ED   PERU      1                    NA                0.0750000   0.0277867   0.1222133


### Parameter: E(Y)


studyid             country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   BRAZIL    NA                   NA                0.0829493   0.0461682   0.1197304
ki0047075b-MAL-ED   PERU      NA                   NA                0.0703704   0.0398055   0.1009352


### Parameter: RR


studyid             country   intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------  --------  -------------------  ---------------  ---------  ----------  ---------
ki0047075b-MAL-ED   BRAZIL    0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED   BRAZIL    1                    0                 1.811741   0.6851424   4.790837
ki0047075b-MAL-ED   PERU      0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED   PERU      1                    0                 1.125000   0.4715228   2.684122


### Parameter: PAR


studyid             country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   BRAZIL    0                    NA                0.0103236   -0.0099081   0.0305553
ki0047075b-MAL-ED   PERU      0                    NA                0.0037037   -0.0238008   0.0312082


### Parameter: PAF


studyid             country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   BRAZIL    0                    NA                0.1244569   -0.1498096   0.3333019
ki0047075b-MAL-ED   PERU      0                    NA                0.0526316   -0.4303151   0.3725110
