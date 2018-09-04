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

**Intervention Variable:** enwast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* hhwealth_quart
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        enwast    s03rec24   n_cell      n
-------------------------  -----------------------------  -------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                0      188    236
ki0047075b-MAL-ED          BANGLADESH                     0                1        6    236
ki0047075b-MAL-ED          BANGLADESH                     1                0       41    236
ki0047075b-MAL-ED          BANGLADESH                     1                1        1    236
ki0047075b-MAL-ED          BRAZIL                         0                0      197    217
ki0047075b-MAL-ED          BRAZIL                         0                1       13    217
ki0047075b-MAL-ED          BRAZIL                         1                0        7    217
ki0047075b-MAL-ED          BRAZIL                         1                1        0    217
ki0047075b-MAL-ED          INDIA                          0                0      191    243
ki0047075b-MAL-ED          INDIA                          0                1       10    243
ki0047075b-MAL-ED          INDIA                          1                0       39    243
ki0047075b-MAL-ED          INDIA                          1                1        3    243
ki0047075b-MAL-ED          NEPAL                          0                0      198    235
ki0047075b-MAL-ED          NEPAL                          0                1        9    235
ki0047075b-MAL-ED          NEPAL                          1                0       26    235
ki0047075b-MAL-ED          NEPAL                          1                1        2    235
ki0047075b-MAL-ED          PERU                           0                0      256    279
ki0047075b-MAL-ED          PERU                           0                1       18    279
ki0047075b-MAL-ED          PERU                           1                0        5    279
ki0047075b-MAL-ED          PERU                           1                1        0    279
ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      263    301
ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       16    301
ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       19    301
ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3    301
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      241    244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0    244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        3    244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0    244
ki1000108-CMC-V-BCS-2002   INDIA                          0                0      259    363
ki1000108-CMC-V-BCS-2002   INDIA                          0                1        6    363
ki1000108-CMC-V-BCS-2002   INDIA                          1                0       90    363
ki1000108-CMC-V-BCS-2002   INDIA                          1                1        8    363
ki1000108-IRC              INDIA                          0                0      238    388
ki1000108-IRC              INDIA                          0                1       18    388
ki1000108-IRC              INDIA                          1                0      129    388
ki1000108-IRC              INDIA                          1                1        3    388
ki1000109-EE               PAKISTAN                       0                0      312    350
ki1000109-EE               PAKISTAN                       0                1        0    350
ki1000109-EE               PAKISTAN                       1                0       38    350
ki1000109-EE               PAKISTAN                       1                1        0    350
ki1000109-ResPak           PAKISTAN                       0                0      136    166
ki1000109-ResPak           PAKISTAN                       0                1        0    166
ki1000109-ResPak           PAKISTAN                       1                0       30    166
ki1000109-ResPak           PAKISTAN                       1                1        0    166
ki1017093b-PROVIDE         BANGLADESH                     0                0      522    682
ki1017093b-PROVIDE         BANGLADESH                     0                1       14    682
ki1017093b-PROVIDE         BANGLADESH                     1                0      141    682
ki1017093b-PROVIDE         BANGLADESH                     1                1        5    682
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2130   2267
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        2   2267
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      135   2267
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0   2267
ki1101329-Keneba           GAMBIA                         0                0     2268   2458
ki1101329-Keneba           GAMBIA                         0                1       72   2458
ki1101329-Keneba           GAMBIA                         1                0      113   2458
ki1101329-Keneba           GAMBIA                         1                1        5   2458
ki1113344-GMS-Nepal        NEPAL                          0                0      958   1182
ki1113344-GMS-Nepal        NEPAL                          0                1       28   1182
ki1113344-GMS-Nepal        NEPAL                          1                0      196   1182
ki1113344-GMS-Nepal        NEPAL                          1                1        0   1182
ki1114097-CMIN             BANGLADESH                     0                0      221    249
ki1114097-CMIN             BANGLADESH                     0                1       11    249
ki1114097-CMIN             BANGLADESH                     1                0       17    249
ki1114097-CMIN             BANGLADESH                     1                1        0    249
ki1114097-CMIN             PERU                           0                0      706    738
ki1114097-CMIN             PERU                           0                1        1    738
ki1114097-CMIN             PERU                           1                0       31    738
ki1114097-CMIN             PERU                           1                1        0    738
ki1114097-CONTENT          PERU                           0                0      199    214
ki1114097-CONTENT          PERU                           0                1       14    214
ki1114097-CONTENT          PERU                           1                0        1    214
ki1114097-CONTENT          PERU                           1                1        0    214


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
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/74a9d0f0-a529-43e4-aa56-b7c5e24eab3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/74a9d0f0-a529-43e4-aa56-b7c5e24eab3c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/74a9d0f0-a529-43e4-aa56-b7c5e24eab3c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/74a9d0f0-a529-43e4-aa56-b7c5e24eab3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0226415   0.0047064   0.0405766
ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0816327   0.0273484   0.1359170
ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0261194   0.0126074   0.0396314
ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0342466   0.0047255   0.0637676
ki1101329-Keneba           GAMBIA       0                    NA                0.0307692   0.0237708   0.0377677
ki1101329-Keneba           GAMBIA       1                    NA                0.0423729   0.0060201   0.0787257


### Parameter: E(Y)


studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0385675   0.0187310   0.0584039
ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0278592   0.0154991   0.0402194
ki1101329-Keneba           GAMBIA       NA                   NA                0.0313263   0.0244384   0.0382142


### Parameter: RR


studyid                    country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 3.605442   1.2817063   10.142116
ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.311155   0.4797835    3.583130
ki1101329-Keneba           GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA       1                    0                 1.377119   0.5669011    3.345303


### Parameter: PAR


studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0159260    0.0002576   0.0315944
ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0017398   -0.0052150   0.0086946
ki1101329-Keneba           GAMBIA       0                    NA                0.0005571   -0.0012229   0.0023370


### Parameter: PAF


studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4129380   -0.0644962   0.6762395
ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0624509   -0.2216795   0.2805001
ki1101329-Keneba           GAMBIA       0                    NA                0.0177822   -0.0405785   0.0728698
