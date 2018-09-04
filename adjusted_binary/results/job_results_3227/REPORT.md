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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        exclfeed6    s03rec24   n_cell      n
-------------------------  -----------------------------  ----------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                   0      167    229
ki0047075b-MAL-ED          BANGLADESH                     0                   1        5    229
ki0047075b-MAL-ED          BANGLADESH                     1                   0       54    229
ki0047075b-MAL-ED          BANGLADESH                     1                   1        3    229
ki0047075b-MAL-ED          BRAZIL                         0                   0      174    206
ki0047075b-MAL-ED          BRAZIL                         0                   1       15    206
ki0047075b-MAL-ED          BRAZIL                         1                   0       14    206
ki0047075b-MAL-ED          BRAZIL                         1                   1        3    206
ki0047075b-MAL-ED          INDIA                          0                   0      212    231
ki0047075b-MAL-ED          INDIA                          0                   1       13    231
ki0047075b-MAL-ED          INDIA                          1                   0        6    231
ki0047075b-MAL-ED          INDIA                          1                   1        0    231
ki0047075b-MAL-ED          NEPAL                          0                   0      208    234
ki0047075b-MAL-ED          NEPAL                          0                   1       11    234
ki0047075b-MAL-ED          NEPAL                          1                   0       15    234
ki0047075b-MAL-ED          NEPAL                          1                   1        0    234
ki0047075b-MAL-ED          PERU                           0                   0      228    256
ki0047075b-MAL-ED          PERU                           0                   1       19    256
ki0047075b-MAL-ED          PERU                           1                   0        9    256
ki0047075b-MAL-ED          PERU                           1                   1        0    256
ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      225    244
ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       19    244
ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0    244
ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      241    243
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        1    243
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1    243
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    243
ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0     19
ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     19
ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       19     19
ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0     19
ki1000108-IRC              INDIA                          0                   0       14     14
ki1000108-IRC              INDIA                          0                   1        0     14
ki1000108-IRC              INDIA                          1                   0        0     14
ki1000108-IRC              INDIA                          1                   1        0     14
ki1000109-EE               PAKISTAN                       0                   0      166    350
ki1000109-EE               PAKISTAN                       0                   1        0    350
ki1000109-EE               PAKISTAN                       1                   0      184    350
ki1000109-EE               PAKISTAN                       1                   1        0    350
ki1017093b-PROVIDE         BANGLADESH                     0                   0      461    690
ki1017093b-PROVIDE         BANGLADESH                     0                   1       16    690
ki1017093b-PROVIDE         BANGLADESH                     1                   0      207    690
ki1017093b-PROVIDE         BANGLADESH                     1                   1        6    690
ki1101329-Keneba           GAMBIA                         0                   0     1286   2093
ki1101329-Keneba           GAMBIA                         0                   1       47   2093
ki1101329-Keneba           GAMBIA                         1                   0      729   2093
ki1101329-Keneba           GAMBIA                         1                   1       31   2093
ki1113344-GMS-Nepal        NEPAL                          0                   0      286   1114
ki1113344-GMS-Nepal        NEPAL                          0                   1        4   1114
ki1113344-GMS-Nepal        NEPAL                          1                   0      800   1114
ki1113344-GMS-Nepal        NEPAL                          1                   1       24   1114


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
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fefdad4e-2063-4aec-bed9-2f679282748e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fefdad4e-2063-4aec-bed9-2f679282748e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fefdad4e-2063-4aec-bed9-2f679282748e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fefdad4e-2063-4aec-bed9-2f679282748e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.0335430   0.0173735   0.0497125
ki1017093b-PROVIDE   BANGLADESH   1                    NA                0.0281690   0.0059331   0.0504049
ki1101329-Keneba     GAMBIA       0                    NA                0.0351094   0.0255838   0.0446350
ki1101329-Keneba     GAMBIA       1                    NA                0.0402052   0.0278493   0.0525610


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0318841   0.0187654   0.0450027
ki1101329-Keneba     GAMBIA       NA                   NA                0.0372671   0.0291503   0.0453838


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
ki1017093b-PROVIDE   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE   BANGLADESH   1                    0                 0.8397887   0.3330277   2.117677
ki1101329-Keneba     GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba     GAMBIA       1                    0                 1.1451386   0.7684663   1.706441


### Parameter: PAR


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.0016589   -0.0101480   0.0068302
ki1101329-Keneba     GAMBIA       0                    NA                 0.0021577   -0.0036801   0.0079954


### Parameter: PAF


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1017093b-PROVIDE   BANGLADESH   0                    NA                -0.0520297   -0.3539694   0.1825764
ki1101329-Keneba     GAMBIA       0                    NA                 0.0578973   -0.1116731   0.2016021
