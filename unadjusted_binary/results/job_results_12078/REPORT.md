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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        anywast06    s03rec24   n_cell      n
-------------------------  -----------------------------  ----------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                   0      184    247
ki0047075b-MAL-ED          BANGLADESH                     0                   1        7    247
ki0047075b-MAL-ED          BANGLADESH                     1                   0       55    247
ki0047075b-MAL-ED          BANGLADESH                     1                   1        1    247
ki0047075b-MAL-ED          BRAZIL                         0                   0      191    223
ki0047075b-MAL-ED          BRAZIL                         0                   1       18    223
ki0047075b-MAL-ED          BRAZIL                         1                   0       14    223
ki0047075b-MAL-ED          BRAZIL                         1                   1        0    223
ki0047075b-MAL-ED          INDIA                          0                   0      159    246
ki0047075b-MAL-ED          INDIA                          0                   1        9    246
ki0047075b-MAL-ED          INDIA                          1                   0       74    246
ki0047075b-MAL-ED          INDIA                          1                   1        4    246
ki0047075b-MAL-ED          NEPAL                          0                   0      187    238
ki0047075b-MAL-ED          NEPAL                          0                   1        8    238
ki0047075b-MAL-ED          NEPAL                          1                   0       40    238
ki0047075b-MAL-ED          NEPAL                          1                   1        3    238
ki0047075b-MAL-ED          PERU                           0                   0      256    284
ki0047075b-MAL-ED          PERU                           0                   1       18    284
ki0047075b-MAL-ED          PERU                           1                   0        9    284
ki0047075b-MAL-ED          PERU                           1                   1        1    284
ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      252    302
ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       16    302
ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       31    302
ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        3    302
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      241    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        1    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       11    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    253
ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      167    367
ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        5    367
ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      183    367
ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       12    367
ki1000108-IRC              INDIA                          0                   0      148    410
ki1000108-IRC              INDIA                          0                   1       18    410
ki1000108-IRC              INDIA                          1                   0      234    410
ki1000108-IRC              INDIA                          1                   1       10    410
ki1000109-EE               PAKISTAN                       0                   0      122    175
ki1000109-EE               PAKISTAN                       0                   1        0    175
ki1000109-EE               PAKISTAN                       1                   0       53    175
ki1000109-EE               PAKISTAN                       1                   1        0    175
ki1000109-ResPak           PAKISTAN                       0                   0      100    166
ki1000109-ResPak           PAKISTAN                       0                   1        0    166
ki1000109-ResPak           PAKISTAN                       1                   0       66    166
ki1000109-ResPak           PAKISTAN                       1                   1        0    166
ki1017093b-PROVIDE         BANGLADESH                     0                   0      498    690
ki1017093b-PROVIDE         BANGLADESH                     0                   1       16    690
ki1017093b-PROVIDE         BANGLADESH                     1                   0      170    690
ki1017093b-PROVIDE         BANGLADESH                     1                   1        6    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1952   2276
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        2   2276
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      322   2276
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0   2276
ki1101329-Keneba           GAMBIA                         0                   0     1839   2285
ki1101329-Keneba           GAMBIA                         0                   1       69   2285
ki1101329-Keneba           GAMBIA                         1                   0      366   2285
ki1101329-Keneba           GAMBIA                         1                   1       11   2285
ki1113344-GMS-Nepal        NEPAL                          0                   0      400    594
ki1113344-GMS-Nepal        NEPAL                          0                   1       13    594
ki1113344-GMS-Nepal        NEPAL                          1                   0      179    594
ki1113344-GMS-Nepal        NEPAL                          1                   1        2    594
ki1114097-CMIN             BANGLADESH                     0                   0      204    259
ki1114097-CMIN             BANGLADESH                     0                   1       10    259
ki1114097-CMIN             BANGLADESH                     1                   0       44    259
ki1114097-CMIN             BANGLADESH                     1                   1        1    259
ki1114097-CMIN             PERU                           0                   0      591    634
ki1114097-CMIN             PERU                           0                   1        1    634
ki1114097-CMIN             PERU                           1                   0       42    634
ki1114097-CMIN             PERU                           1                   1        0    634
ki1114097-CONTENT          PERU                           0                   0      196    214
ki1114097-CONTENT          PERU                           0                   1       14    214
ki1114097-CONTENT          PERU                           1                   0        4    214
ki1114097-CONTENT          PERU                           1                   1        0    214


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
![](/tmp/e7339337-4e8d-4c72-8059-4c63b6467757/229d79ad-af8b-41eb-954b-21d618ec90b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e7339337-4e8d-4c72-8059-4c63b6467757/229d79ad-af8b-41eb-954b-21d618ec90b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e7339337-4e8d-4c72-8059-4c63b6467757/229d79ad-af8b-41eb-954b-21d618ec90b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7339337-4e8d-4c72-8059-4c63b6467757/229d79ad-af8b-41eb-954b-21d618ec90b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0290698   0.0039283   0.0542113
ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0615385   0.0277627   0.0953142
ki1000108-IRC              INDIA        0                    NA                0.1084337   0.0610768   0.1557906
ki1000108-IRC              INDIA        1                    NA                0.0409836   0.0160777   0.0658895
ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0311284   0.0161041   0.0461527
ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0340909   0.0072626   0.0609193
ki1101329-Keneba           GAMBIA       0                    NA                0.0361635   0.0277845   0.0445425
ki1101329-Keneba           GAMBIA       1                    NA                0.0291777   0.0121848   0.0461706


### Parameter: E(Y)


studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0463215   0.0247888   0.0678543
ki1000108-IRC              INDIA        NA                   NA                0.0682927   0.0438464   0.0927390
ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0318841   0.0187654   0.0450027
ki1101329-Keneba           GAMBIA       NA                   NA                0.0350109   0.0274728   0.0425491


### Parameter: RR


studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 2.1169231   0.7600586   5.8960761
ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
ki1000108-IRC              INDIA        1                    0                 0.3779599   0.1788288   0.7988292
ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.0951705   0.4350587   2.7568656
ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
ki1101329-Keneba           GAMBIA       1                    0                 0.8068274   0.4310912   1.5100527


### Parameter: PAR


studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0172518   -0.0051820    0.0396855
ki1000108-IRC              INDIA        0                    NA                -0.0401411   -0.0721454   -0.0081367
ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0007557   -0.0070881    0.0085994
ki1101329-Keneba           GAMBIA       0                    NA                -0.0011526   -0.0042803    0.0019752


### Parameter: PAF


studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.3724350   -0.2943792    0.6957323
ki1000108-IRC              INDIA        0                    NA                -0.5877797   -1.0827855   -0.2104196
ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0237000   -0.2558471    0.2410210
ki1101329-Keneba           GAMBIA       0                    NA                -0.0329206   -0.1259504    0.0524228
