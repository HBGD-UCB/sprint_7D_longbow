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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_nrooms
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_nrooms
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

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
![](/tmp/4debc821-3807-41d9-8fec-95d2c00f2ace/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4debc821-3807-41d9-8fec-95d2c00f2ace/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4debc821-3807-41d9-8fec-95d2c00f2ace/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4debc821-3807-41d9-8fec-95d2c00f2ace/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.4264870   0.3659877   0.4869864
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.4240734   0.3386365   0.5095103
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2745001   0.2318917   0.3171085
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3894861   0.3391174   0.4398547
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3246753   0.2199460   0.4294047
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3687500   0.3158230   0.4216769
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1683276   0.1362213   0.2004338
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2012151   0.1435572   0.2588730
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1260048   0.0991660   0.1528436
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2039123   0.1428913   0.2649333
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2007201   0.1840623   0.2173778
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1750000   0.0572231   0.2927769
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4695682   0.4034437   0.5356926
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5568170   0.5102065   0.6034275
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1759990   0.1624781   0.1895200
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2301392   0.2117900   0.2484883
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1724169   0.0772937   0.2675402
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2263331   0.1751883   0.2774780
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2452768   0.2152864   0.2752673
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2749429   0.2580471   0.2918388
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.2006733   0.1508715   0.2504750
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.1724925   0.1065476   0.2384373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0778656   0.0503498   0.1053814
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1363344   0.1041629   0.1685058
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0530452   0.0335604   0.0725299
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0517241   0.0187931   0.0846552
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0222603   0.0102871   0.0342334
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0424242   0.0116498   0.0731987
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2592703   0.2054411   0.3130995
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1541889   0.1204920   0.1878859
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0820972   0.0719894   0.0922050
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0849461   0.0722210   0.0976712
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1500000   0.0603230   0.2396770
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0927152   0.0586870   0.1267434
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0293811   0.0158899   0.0428723
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0290835   0.0232928   0.0348743
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.3143605   0.2576848   0.3710362
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.3435644   0.2615009   0.4256279
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2321723   0.2011672   0.2631773
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3295936   0.2853176   0.3738696
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3609924   0.2609365   0.4610482
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3682784   0.3157431   0.4208137
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1503333   0.1176161   0.1830505
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1922585   0.1304040   0.2541130
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1153645   0.0892077   0.1415212
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2019003   0.1426544   0.2611463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3839751   0.3179599   0.4499903
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4839046   0.4371946   0.5306147
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1141340   0.1025447   0.1257234
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.1660209   0.1493908   0.1826509
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0779221   0.0049986   0.1508456
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1600000   0.1147241   0.2052759
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2246829   0.1958964   0.2534694
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2602593   0.2436995   0.2768191


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


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 0.9943406   0.7785401   1.2699580
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4188920   1.2241707   1.6445865
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1357499   0.7979060   1.6166413
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1953782   0.8500532   1.6809877
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6182905   1.1214382   2.3352728
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8718610   0.4425359   1.7176947
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1858066   1.0068893   1.3965162
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.3076160   1.1710793   1.4600716
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3127083   0.7169266   2.4035976
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1209495   0.9773902   1.2855949
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 0.8595688   0.5463563   1.3523380
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.7508934   1.2318583   2.4886204
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9750958   0.4675489   2.0336092
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.9058275   0.7724891   4.7019158
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.5947034   0.4397670   0.8042262
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 1.0347017   0.8526529   1.2556194
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.6181015   0.2989442   1.2779961
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9898735   0.5959634   1.6441439
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.0928992   0.8130647   1.4690452
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4196078   1.2911820   1.5608073
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0201834   0.7469454   1.3933737
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2788817   0.8672967   1.8857889
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.7501086   1.2089872   2.5334265
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2602500   1.0345957   1.5351215
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 1.4546131   1.2618223   1.6768600
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.0533333   0.8054208   5.2347514
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1583404   1.0048683   1.3352521


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0108463   -0.0235059    0.0451985
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0996829    0.0517753    0.1475905
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0355262   -0.0590733    0.1301257
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0092561   -0.0076998    0.0262121
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0172313    0.0023028    0.0321598
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004548   -0.0025629    0.0016532
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0595228    0.0009223    0.1181232
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0213909    0.0122089    0.0305728
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0475541   -0.0492457    0.1443539
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0213154   -0.0042538    0.0468845
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0092986   -0.0365440    0.0179468
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0510861    0.0172809    0.0848914
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0003365   -0.0100846    0.0094115
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0044420   -0.0028570    0.0117410
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1174934   -0.1653563   -0.0696305
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0025250   -0.0039368    0.0089868
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0505848   -0.1374669    0.0362973
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0007311   -0.0119936    0.0105315
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0153982   -0.0172101    0.0480065
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0843171    0.0535782    0.1150560
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0052710   -0.0957116    0.0851697
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0106423   -0.0071689    0.0284536
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0161424    0.0013636    0.0309212
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0877918    0.0284843    0.1470992
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0185104    0.0102887    0.0267321
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0727426    0.0026364    0.1428489
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0264871    0.0021828    0.0507915


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0248010   -0.0570121    0.1002817
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2664014    0.1519549    0.3654029
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0986286   -0.2062726    0.3264620
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0521226   -0.0480276    0.1427024
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1203001    0.0113503    0.2172435
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022711   -0.0128521    0.0081994
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1125001   -0.0042077    0.2156442
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.1083686    0.0610014    0.1533463
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2161835   -0.3562566    0.5470118
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0799549   -0.0213665    0.1712250
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0485884   -0.2007886    0.0843204
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3961648    0.1386028    0.5767145
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0063851   -0.2094002    0.1625511
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1663527   -0.1444437    0.3927462
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.8287201   -1.2691116   -0.4738002
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0298384   -0.0495077    0.1031857
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5088235   -1.7418198    0.1696944
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0255170   -0.5030998    0.3003225
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0466953   -0.0574358    0.1405721
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2664137    0.1920676    0.3339185
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0148177   -0.3038641    0.2101516
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0661114   -0.0508879    0.1700847
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1227494    0.0051033    0.2264840
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1860914    0.0524199    0.3009064
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1395491    0.0762130    0.1985427
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4828113   -0.2410619    0.7844716
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1054550    0.0028740    0.1974828
