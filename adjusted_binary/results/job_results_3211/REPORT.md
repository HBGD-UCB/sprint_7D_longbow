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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* single
* W_nrooms
* impfloor
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_single
* delta_W_nrooms
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        meducyrs    s03rec24   n_cell      n
-------------------------  -----------------------------  ---------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     Low                0       62    202
ki0047075b-MAL-ED          BANGLADESH                     Low                1        3    202
ki0047075b-MAL-ED          BANGLADESH                     Medium             0       58    202
ki0047075b-MAL-ED          BANGLADESH                     Medium             1        3    202
ki0047075b-MAL-ED          BANGLADESH                     High               0       75    202
ki0047075b-MAL-ED          BANGLADESH                     High               1        1    202
ki0047075b-MAL-ED          BRAZIL                         Low                0       57    222
ki0047075b-MAL-ED          BRAZIL                         Low                1        3    222
ki0047075b-MAL-ED          BRAZIL                         Medium             0       79    222
ki0047075b-MAL-ED          BRAZIL                         Medium             1        6    222
ki0047075b-MAL-ED          BRAZIL                         High               0       68    222
ki0047075b-MAL-ED          BRAZIL                         High               1        9    222
ki0047075b-MAL-ED          INDIA                          Low                0       71    216
ki0047075b-MAL-ED          INDIA                          Low                1        4    216
ki0047075b-MAL-ED          INDIA                          Medium             0       77    216
ki0047075b-MAL-ED          INDIA                          Medium             1        4    216
ki0047075b-MAL-ED          INDIA                          High               0       56    216
ki0047075b-MAL-ED          INDIA                          High               1        4    216
ki0047075b-MAL-ED          NEPAL                          Low                0       89    223
ki0047075b-MAL-ED          NEPAL                          Low                1        6    223
ki0047075b-MAL-ED          NEPAL                          Medium             0       73    223
ki0047075b-MAL-ED          NEPAL                          Medium             1        2    223
ki0047075b-MAL-ED          NEPAL                          High               0       51    223
ki0047075b-MAL-ED          NEPAL                          High               1        2    223
ki0047075b-MAL-ED          PERU                           Low                0       91    283
ki0047075b-MAL-ED          PERU                           Low                1        8    283
ki0047075b-MAL-ED          PERU                           Medium             0       94    283
ki0047075b-MAL-ED          PERU                           Medium             1        4    283
ki0047075b-MAL-ED          PERU                           High               0       79    283
ki0047075b-MAL-ED          PERU                           High               1        7    283
ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0      141    302
ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        5    302
ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       58    302
ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        7    302
ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       84    302
ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        7    302
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       64    209
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        0    209
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0      134    209
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        0    209
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0       11    209
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        0    209
ki1000108-CMC-V-BCS-2002   INDIA                          Low                0      103    370
ki1000108-CMC-V-BCS-2002   INDIA                          Low                1        3    370
ki1000108-CMC-V-BCS-2002   INDIA                          Medium             0      102    370
ki1000108-CMC-V-BCS-2002   INDIA                          Medium             1        5    370
ki1000108-CMC-V-BCS-2002   INDIA                          High               0      148    370
ki1000108-CMC-V-BCS-2002   INDIA                          High               1        9    370
ki1000108-IRC              INDIA                          Low                0      138    410
ki1000108-IRC              INDIA                          Low                1        9    410
ki1000108-IRC              INDIA                          Medium             0      127    410
ki1000108-IRC              INDIA                          Medium             1       12    410
ki1000108-IRC              INDIA                          High               0      117    410
ki1000108-IRC              INDIA                          High               1        7    410
ki1000109-EE               PAKISTAN                       Low                0      302    348
ki1000109-EE               PAKISTAN                       Low                1        0    348
ki1000109-EE               PAKISTAN                       Medium             0       34    348
ki1000109-EE               PAKISTAN                       Medium             1        0    348
ki1000109-EE               PAKISTAN                       High               0       12    348
ki1000109-EE               PAKISTAN                       High               1        0    348
ki1017093b-PROVIDE         BANGLADESH                     Low                0      207    690
ki1017093b-PROVIDE         BANGLADESH                     Low                1        4    690
ki1017093b-PROVIDE         BANGLADESH                     Medium             0      239    690
ki1017093b-PROVIDE         BANGLADESH                     Medium             1        8    690
ki1017093b-PROVIDE         BANGLADESH                     High               0      222    690
ki1017093b-PROVIDE         BANGLADESH                     High               1       10    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0       75   2267
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1   2267
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0     1599   2267
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        1   2267
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      591   2267
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0   2267
ki1113344-GMS-Nepal        NEPAL                          Low                0      806   1182
ki1113344-GMS-Nepal        NEPAL                          Low                1       22   1182
ki1113344-GMS-Nepal        NEPAL                          Medium             0      204   1182
ki1113344-GMS-Nepal        NEPAL                          Medium             1        2   1182
ki1113344-GMS-Nepal        NEPAL                          High               0      142   1182
ki1113344-GMS-Nepal        NEPAL                          High               1        6   1182


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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/569d642c-b582-465f-bc10-69f1c31b56f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/569d642c-b582-465f-bc10-69f1c31b56f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/569d642c-b582-465f-bc10-69f1c31b56f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/569d642c-b582-465f-bc10-69f1c31b56f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   Low                  NA                0.0342466   0.0046982   0.0637949
ki0047075b-MAL-ED   SOUTH AFRICA   Medium               NA                0.1076923   0.0322072   0.1831774
ki0047075b-MAL-ED   SOUTH AFRICA   High                 NA                0.0769231   0.0220834   0.1317628
ki1000108-IRC       INDIA          Low                  NA                0.0612245   0.0224217   0.1000273
ki1000108-IRC       INDIA          Medium               NA                0.0863309   0.0395845   0.1330774
ki1000108-IRC       INDIA          High                 NA                0.0564516   0.0157803   0.0971229


### Parameter: E(Y)


studyid             country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED   SOUTH AFRICA   NA                   NA                0.0629139   0.0354838   0.090344
ki1000108-IRC       INDIA          NA                   NA                0.0682927   0.0438464   0.092739


### Parameter: RR


studyid             country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki0047075b-MAL-ED   SOUTH AFRICA   Low                  Low               1.000000   1.0000000   1.000000
ki0047075b-MAL-ED   SOUTH AFRICA   Medium               Low               3.144615   1.0346337   9.557591
ki0047075b-MAL-ED   SOUTH AFRICA   High                 Low               2.246154   0.7334331   6.878893
ki1000108-IRC       INDIA          Low                  Low               1.000000   1.0000000   1.000000
ki1000108-IRC       INDIA          Medium               Low               1.410072   0.6126560   3.245382
ki1000108-IRC       INDIA          High                 Low               0.922043   0.3532015   2.407021


### Parameter: PAR


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   Low                  NA                0.0286673    0.0007152   0.0566195
ki1000108-IRC       INDIA          Low                  NA                0.0070682   -0.0249258   0.0390621


### Parameter: PAF


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   SOUTH AFRICA   Low                  NA                0.4556597   -0.1371408   0.7394286
ki1000108-IRC       INDIA          Low                  NA                0.1034985   -0.5096703   0.4676223
