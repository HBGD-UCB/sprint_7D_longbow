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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        hdlvry    ever_wasted   n_cell      n
----------------------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      196    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      161    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    365
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                   0      190    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                   1      211    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   0        6    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   1        2    409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   0      286    750
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   1      218    750
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   0      136    750
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   1      110    750
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                   0      120   1224
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                   1       44   1224
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   0      646   1224
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   1      414   1224
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       52    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       25    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      202    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1      118    397
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                   0      427    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                   1       86    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                   0      138    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                   1       36    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      513    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       74    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      133    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       34    754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1776   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      446   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       33   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        7   2262
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   0      150   1100
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   1      122   1100
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   0      368   1100
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   1      460   1100
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                   0     2513   4904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                   1      517   4904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                   0     1423   4904
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                   1      451   4904
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                   0       67    691
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                   1       14    691
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      472    691
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      138    691
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1773   8950
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      558   8950
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     4791   8950
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1828   8950
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      234    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      106    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2    347
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                   0      251    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                   1      131    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   0        6    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   1        2    390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   0      396    742
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   1      100    742
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   0      204    742
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   1       42    742
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   0      150   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   1       13   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   0      897   1202
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   1      142   1202
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       68    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      273    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    341
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                   0      482    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                   1       27    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                   0      165    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                   1        9    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      571    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       13    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      158    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        7    749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     2023   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      191   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       36   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   2254
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   0      222   1058
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   1       34   1058
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   0      686   1058
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   1      116   1058
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                   0     2574   4526
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                   1      229   4526
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                   0     1569   4526
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                   1      154   4526
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                   0       68    684
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                   1       12    684
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      548    684
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       56    684
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     2198   8726
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       62   8726
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6278   8726
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      188   8726
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      268    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       94    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    370
6-24 months                   ki1000108-IRC              INDIA                          0                   0      276    410
6-24 months                   ki1000108-IRC              INDIA                          0                   1      126    410
6-24 months                   ki1000108-IRC              INDIA                          1                   0        7    410
6-24 months                   ki1000108-IRC              INDIA                          1                   1        1    410
6-24 months                   ki1000109-EE               PAKISTAN                       0                   0      342    746
6-24 months                   ki1000109-EE               PAKISTAN                       0                   1      160    746
6-24 months                   ki1000109-EE               PAKISTAN                       1                   0      158    746
6-24 months                   ki1000109-EE               PAKISTAN                       1                   1       86    746
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                   0      118   1128
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                   1       35   1128
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   0      653   1128
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   1      322   1128
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       54    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       25    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      205    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1      118    402
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                   0      390    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                   1       69    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                   0      126    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                   1       30    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      502    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       65    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      132    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       31    730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1575   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      306   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       27   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   1912
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                   0      158   1098
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                   1      114   1098
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   0      422   1098
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   1      404   1098
6-24 months                   ki1135781-COHORTS          INDIA                          0                   0     2609   4742
6-24 months                   ki1135781-COHORTS          INDIA                          0                   1      315   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                   0     1504   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                   1      314   4742
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                   0       71    677
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        6    677
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      504    677
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       96    677
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1817   8974
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      516   8974
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     4903   8974
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1738   8974


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/06668d08-1bd4-427d-9b2e-74f61b015181/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06668d08-1bd4-427d-9b2e-74f61b015181/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/06668d08-1bd4-427d-9b2e-74f61b015181/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06668d08-1bd4-427d-9b2e-74f61b015181/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.4325397   0.3712894   0.4937900
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.4471545   0.3591700   0.5351389
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2682927   0.2277241   0.3088613
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3905660   0.3407368   0.4403953
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3246753   0.2199549   0.4293957
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3687500   0.3158218   0.4216782
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1676413   0.1352930   0.1999896
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2068966   0.1466640   0.2671291
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1260647   0.0991956   0.1529339
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2035928   0.1424808   0.2647049
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2007201   0.1840623   0.2173778
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1750000   0.0572231   0.2927769
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4485294   0.3648670   0.5321918
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5555556   0.5076467   0.6034644
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1706271   0.1572312   0.1840229
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2406617   0.2213051   0.2600183
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1728395   0.0765471   0.2691319
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2262295   0.1750364   0.2774226
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2393822   0.2079600   0.2708045
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2761746   0.2590152   0.2933341
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.2016129   0.1516124   0.2516134
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.1707317   0.1041452   0.2373182
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0797546   0.0518847   0.1076245
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1366699   0.1045087   0.1688310
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0530452   0.0335604   0.0725299
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0517241   0.0187931   0.0846552
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0222603   0.0102871   0.0342334
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0424242   0.0116498   0.0731987
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1328125   0.0739647   0.1916603
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1446384   0.1101793   0.1790975
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0816982   0.0715571   0.0918392
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0893790   0.0759067   0.1028512
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1500000   0.0603230   0.2396770
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0927152   0.0586870   0.1267434
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0274336   0.0146796   0.0401876
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0290752   0.0231818   0.0349685
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.3187251   0.2610002   0.3764500
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.3524590   0.2675724   0.4373456
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2287582   0.1975422   0.2599741
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3302564   0.2864912   0.3740217
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3164557   0.2137688   0.4191426
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3653251   0.3127472   0.4179030
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1503268   0.1176048   0.1830488
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1923077   0.1304120   0.2542034
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1146384   0.0883975   0.1408794
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1901840   0.1298959   0.2504722
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4191177   0.3361160   0.5021193
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4891041   0.4408498   0.5373584
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1077291   0.0964903   0.1189679
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.1727173   0.1553396   0.1900950
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0779221   0.0049986   0.1508456
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1600000   0.1147241   0.2052759
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2211745   0.1905762   0.2517727
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2617076   0.2449023   0.2785129


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4373333   0.3870592   0.4876074
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3741830   0.3195305   0.4288355
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2002653   0.1837694   0.2167611
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5290909   0.4873371   0.5708447
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1973899   0.1862487   0.2085311
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2199711   0.1736701   0.2662720
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2665922   0.2514906   0.2816938
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1913747   0.1512914   0.2314579
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1289517   0.0982960   0.1596075
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1417769   0.1120237   0.1715302
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0846222   0.0765129   0.0927314
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0994152   0.0685873   0.1302431
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0286500   0.0232922   0.0340079
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3297587   0.2819849   0.3775326
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3164894   0.2686679   0.3643108
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4717668   0.4299709   0.5135628
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1326445   0.1229894   0.1422995
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1506647   0.1078689   0.1934605
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2511700   0.2363118   0.2660283


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.0337883   0.8112387   1.317391
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4557461   1.2646017   1.675782
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1357500   0.7979245   1.616604
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2341620   0.8703371   1.750076
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6149862   1.1176011   2.333731
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8718610   0.4425359   1.717695
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2386157   1.0085346   1.521186
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.4104544   1.2605095   1.578236
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3088993   0.7104482   2.411460
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1536973   0.9980681   1.333594
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 0.8468293   0.5334253   1.344368
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.7136300   1.2126862   2.421507
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9750958   0.4675489   2.033609
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.9058275   0.7724891   4.701916
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0890421   0.6585074   1.801062
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 1.0940145   0.8999557   1.329918
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.6181015   0.2989442   1.277996
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0598366   0.6330806   1.774266
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.1058402   0.8181293   1.494730
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4436923   1.3201971   1.578740
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1544272   0.8094738   1.646381
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2792642   0.8673888   1.886717
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6589901   1.1221029   2.452759
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1669853   0.9353548   1.455977
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 1.6032549   1.3869388   1.853309
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.0533333   0.8054208   5.234751
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1832631   1.0170275   1.376670


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0047937   -0.0303764   0.0399637
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1058903    0.0593858   0.1523948
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0355262   -0.0590676   0.1301200
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0099424   -0.0074210   0.0273057
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0171713    0.0022077   0.0321350
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004548   -0.0025629   0.0016532
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0805615    0.0078892   0.1532337
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0267628    0.0177171   0.0358086
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0471316   -0.0508810   0.1451441
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0272099    0.0007541   0.0536657
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0102382   -0.0378848   0.0174083
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0491971    0.0155107   0.0828836
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0003365   -0.0100846   0.0094115
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0044420   -0.0028570   0.0117410
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0089644   -0.0427311   0.0606600
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0029240   -0.0034963   0.0093443
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0505848   -0.1374669   0.0362973
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0012164   -0.0093673   0.0118000
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0110336   -0.0225808   0.0446480
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0877312    0.0584409   0.1170215
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0392657   -0.0534474   0.1319788
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0106488   -0.0071692   0.0284669
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0168684    0.0020103   0.0317265
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0526492   -0.0196205   0.1249189
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0249153    0.0169303   0.0329003
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0727426    0.0026364   0.1428489
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0299956    0.0043284   0.0556628


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0109611   -0.0728239   0.0882027
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2829907    0.1752629   0.3766471
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0986286   -0.2062498   0.3264494
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0559870   -0.0467580   0.1486470
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1198814    0.0106385   0.2170619
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022711   -0.0128521   0.0081994
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1522640    0.0025991   0.2794709
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.1355836    0.0889090   0.1798670
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2142625   -0.3675587   0.5485507
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1020658   -0.0035289   0.1965494
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0534984   -0.2080851   0.0813074
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3815159    0.1228762   0.5638899
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0063851   -0.2094002   0.1625511
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1663527   -0.1444437   0.3927462
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0632292   -0.3822911   0.3651557
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0345536   -0.0443129   0.1074641
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5088235   -1.7418198   0.1696944
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0424566   -0.4107152   0.3500536
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0334597   -0.0740399   0.1301997
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2772011    0.2084514   0.3399795
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1103833   -0.1924390   0.3363032
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0661517   -0.0508966   0.1701632
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1282701    0.0097770   0.2325840
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1116000   -0.0558123   0.2524670
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1878353    0.1266177   0.2447621
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4828113   -0.2410619   0.7844716
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1194234    0.0102062   0.2165893
