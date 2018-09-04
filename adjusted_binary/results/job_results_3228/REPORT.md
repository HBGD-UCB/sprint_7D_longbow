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

**Intervention Variable:** exclfeed36

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

studyid                    country                        exclfeed36    s03rec24   n_cell      n
-------------------------  -----------------------------  -----------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                    0      171    239
ki0047075b-MAL-ED          BANGLADESH                     0                    1        5    239
ki0047075b-MAL-ED          BANGLADESH                     1                    0       60    239
ki0047075b-MAL-ED          BANGLADESH                     1                    1        3    239
ki0047075b-MAL-ED          BRAZIL                         0                    0      185    217
ki0047075b-MAL-ED          BRAZIL                         0                    1       14    217
ki0047075b-MAL-ED          BRAZIL                         1                    0       14    217
ki0047075b-MAL-ED          BRAZIL                         1                    1        4    217
ki0047075b-MAL-ED          INDIA                          0                    0      219    239
ki0047075b-MAL-ED          INDIA                          0                    1       13    239
ki0047075b-MAL-ED          INDIA                          1                    0        7    239
ki0047075b-MAL-ED          INDIA                          1                    1        0    239
ki0047075b-MAL-ED          NEPAL                          0                    0      211    237
ki0047075b-MAL-ED          NEPAL                          0                    1       11    237
ki0047075b-MAL-ED          NEPAL                          1                    0       15    237
ki0047075b-MAL-ED          NEPAL                          1                    1        0    237
ki0047075b-MAL-ED          PERU                           0                    0      237    270
ki0047075b-MAL-ED          PERU                           0                    1       19    270
ki0047075b-MAL-ED          PERU                           1                    0       14    270
ki0047075b-MAL-ED          PERU                           1                    1        0    270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      255    274
ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       19    274
ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0    274
ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    274
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        1    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    248
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      9
ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      9
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        9      9
ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0      9
ki1000108-IRC              INDIA                          0                    0        4      4
ki1000108-IRC              INDIA                          0                    1        0      4
ki1000108-IRC              INDIA                          1                    0        0      4
ki1000108-IRC              INDIA                          1                    1        0      4
ki1000109-EE               PAKISTAN                       0                    0      154    342
ki1000109-EE               PAKISTAN                       0                    1        0    342
ki1000109-EE               PAKISTAN                       1                    0      188    342
ki1000109-EE               PAKISTAN                       1                    1        0    342
ki1017093b-PROVIDE         BANGLADESH                     0                    0      450    634
ki1017093b-PROVIDE         BANGLADESH                     0                    1       16    634
ki1017093b-PROVIDE         BANGLADESH                     1                    0      162    634
ki1017093b-PROVIDE         BANGLADESH                     1                    1        6    634
ki1101329-Keneba           GAMBIA                         0                    0     1237   1862
ki1101329-Keneba           GAMBIA                         0                    1       47   1862
ki1101329-Keneba           GAMBIA                         1                    0      551   1862
ki1101329-Keneba           GAMBIA                         1                    1       27   1862
ki1113344-GMS-Nepal        NEPAL                          0                    0      202   1044
ki1113344-GMS-Nepal        NEPAL                          0                    1        4   1044
ki1113344-GMS-Nepal        NEPAL                          1                    0      816   1044
ki1113344-GMS-Nepal        NEPAL                          1                    1       22   1044


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
![](/tmp/46147e39-90e4-4589-a559-11fce596727f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/46147e39-90e4-4589-a559-11fce596727f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/46147e39-90e4-4589-a559-11fce596727f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/46147e39-90e4-4589-a559-11fce596727f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.0343348   0.0177893   0.0508802
ki1017093b-PROVIDE   BANGLADESH   1                    NA                0.0357143   0.0076302   0.0637984
ki1101329-Keneba     GAMBIA       0                    NA                0.0368470   0.0268445   0.0468496
ki1101329-Keneba     GAMBIA       1                    NA                0.0460146   0.0303504   0.0616787


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0347003   0.0204428   0.0489578
ki1101329-Keneba     GAMBIA       NA                   NA                0.0397422   0.0308667   0.0486178


### Parameter: RR


studyid              country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1017093b-PROVIDE   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
ki1017093b-PROVIDE   BANGLADESH   1                    0                 1.040179   0.4135945   2.616020
ki1101329-Keneba     GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba     GAMBIA       1                    0                 1.248800   0.8177168   1.907142


### Parameter: PAR


studyid              country      intervention_level   baseline_level     estimate     ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ---------
ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.0003656   -0.0082719   0.009003
ki1101329-Keneba     GAMBIA       0                    NA                0.0028952   -0.0029616   0.008752


### Parameter: PAF


studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1017093b-PROVIDE   BANGLADESH   0                    NA                0.0105345   -0.2724437   0.2305813
ki1101329-Keneba     GAMBIA       0                    NA                0.0728493   -0.0855366   0.2081258
