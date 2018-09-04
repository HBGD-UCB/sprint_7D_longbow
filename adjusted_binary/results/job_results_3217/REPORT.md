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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_parity
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country        cleanck    s03rec24   n_cell      n
-------------------------  -------------  --------  ---------  -------  -----
ki0047075b-MAL-ED          PERU           0                 0        0      1
ki0047075b-MAL-ED          PERU           0                 1        0      1
ki0047075b-MAL-ED          PERU           1                 0        1      1
ki0047075b-MAL-ED          PERU           1                 1        0      1
ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        1      2
ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0      2
ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        0      2
ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        1      2
ki1000108-CMC-V-BCS-2002   INDIA          0                 0      201    370
ki1000108-CMC-V-BCS-2002   INDIA          0                 1        9    370
ki1000108-CMC-V-BCS-2002   INDIA          1                 0      152    370
ki1000108-CMC-V-BCS-2002   INDIA          1                 1        8    370
ki1000108-IRC              INDIA          0                 0      156    400
ki1000108-IRC              INDIA          0                 1       13    400
ki1000108-IRC              INDIA          1                 0      217    400
ki1000108-IRC              INDIA          1                 1       14    400
ki1017093b-PROVIDE         BANGLADESH     0                 0      125    690
ki1017093b-PROVIDE         BANGLADESH     0                 1        2    690
ki1017093b-PROVIDE         BANGLADESH     1                 0      543    690
ki1017093b-PROVIDE         BANGLADESH     1                 1       20    690
ki1113344-GMS-Nepal        NEPAL          0                 0     1012   1060
ki1113344-GMS-Nepal        NEPAL          0                 1       30   1060
ki1113344-GMS-Nepal        NEPAL          1                 0       18   1060
ki1113344-GMS-Nepal        NEPAL          1                 1        0   1060


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ce424061-3e8d-4648-af1d-2570c8093984/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ce424061-3e8d-4648-af1d-2570c8093984/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ce424061-3e8d-4648-af1d-2570c8093984/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ce424061-3e8d-4648-af1d-2570c8093984/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA     0                    NA                0.0428571   0.0154271   0.0702872
ki1000108-CMC-V-BCS-2002   INDIA     1                    NA                0.0500000   0.0161840   0.0838160
ki1000108-IRC              INDIA     0                    NA                0.0847304   0.0423466   0.1271143
ki1000108-IRC              INDIA     1                    NA                0.0583986   0.0284497   0.0883475


### Parameter: E(Y)


studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA     NA                   NA                0.0459459   0.0245838   0.0673081
ki1000108-IRC              INDIA     NA                   NA                0.0675000   0.0428828   0.0921172


### Parameter: RR


studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
ki1000108-CMC-V-BCS-2002   INDIA     0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA     1                    0                 1.1666666   0.4597805   2.960349
ki1000108-IRC              INDIA     0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA     1                    0                 0.6892281   0.3372658   1.408489


### Parameter: PAR


studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA     0                    NA                 0.0030888   -0.0157438   0.0219214
ki1000108-IRC              INDIA     0                    NA                -0.0172304   -0.0483860   0.0139252


### Parameter: PAF


studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA     0                    NA                 0.0672269   -0.4458083   0.3982150
ki1000108-IRC              INDIA     0                    NA                -0.2552658   -0.8074060   0.1282023
