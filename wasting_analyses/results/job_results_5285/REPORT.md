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
![](/tmp/d958483f-750f-4400-90a6-a88b4ff07691/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d958483f-750f-4400-90a6-a88b4ff07691/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d958483f-750f-4400-90a6-a88b4ff07691/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d958483f-750f-4400-90a6-a88b4ff07691/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.4261354   0.3657306   0.4865403
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.4247664   0.3398794   0.5096534
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2745001   0.2318917   0.3171085
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3894861   0.3391174   0.4398547
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3246753   0.2199537   0.4293969
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3687500   0.3158219   0.4216781
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1684064   0.1363284   0.2004844
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2004807   0.1431348   0.2578266
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1260088   0.0991686   0.1528489
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2038902   0.1428750   0.2649054
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2007201   0.1840623   0.2173778
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1750000   0.0572231   0.2927769
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4691051   0.4033454   0.5348647
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5567031   0.5101209   0.6032853
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1760375   0.1625038   0.1895712
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2300878   0.2117209   0.2484548
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1728395   0.0765471   0.2691319
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2262295   0.1750364   0.2774226
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2453088   0.2154258   0.2751919
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2750168   0.2581009   0.2919326
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.1968657   0.1471689   0.2465626
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.1607368   0.0950513   0.2264224
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0778656   0.0503498   0.1053814
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1363344   0.1041629   0.1685058
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0530452   0.0335604   0.0725299
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0517241   0.0187931   0.0846552
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0222603   0.0102871   0.0342334
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0424242   0.0116498   0.0731987
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2520852   0.1980719   0.3060985
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1542330   0.1204290   0.1880369
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0821010   0.0719914   0.0922105
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0849346   0.0722081   0.0976612
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1500000   0.0603230   0.2396770
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0927152   0.0586870   0.1267434
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0293929   0.0158899   0.0428958
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0291000   0.0233078   0.0348923
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.3193490   0.2618670   0.3768311
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.3510326   0.2666972   0.4353680
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2321723   0.2011672   0.2631773
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3295936   0.2853176   0.3738696
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3593875   0.2588210   0.4599540
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3681661   0.3156129   0.4207193
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1505309   0.1179599   0.1831018
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1907158   0.1301345   0.2512971
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1146871   0.0884943   0.1408799
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1899591   0.1296814   0.2502367
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3846709   0.3185198   0.4508219
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4840698   0.4373433   0.5307963
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1141670   0.1026016   0.1257325
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.1657052   0.1491117   0.1822986
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0779221   0.0049986   0.1508456
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1600000   0.1147241   0.2052759
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2247039   0.1959087   0.2534992
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2602565   0.2436954   0.2768176


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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 0.9967873   0.7816137   1.2711970
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4188920   1.2241707   1.6445865
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1357500   0.7979220   1.6166092
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1904577   0.8473639   1.6724686
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6180637   1.1212621   2.3349850
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8718610   0.4425359   1.7176947
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1867343   1.0082386   1.3968303
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.3070387   1.1704362   1.4595843
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3088993   0.7104482   2.4114599
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1211043   0.9780323   1.2851056
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 0.8164796   0.5062202   1.3168951
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.7508934   1.2318583   2.4886204
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9750958   0.4675489   2.0336092
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.9058275   0.7724891   4.7019158
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.6118286   0.4501397   0.8315957
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 1.0345145   0.8524649   1.2554421
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.6181015   0.2989442   1.2779961
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9900370   0.5959644   1.6446842
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.0992129   0.8154224   1.4817708
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4196078   1.2911820   1.5608073
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0244267   0.7482455   1.4025477
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2669544   0.8643182   1.8571558
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6563243   1.1212313   2.4467835
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2583999   1.0330907   1.5328474
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 1.4514274   1.2593346   1.6728211
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.0533333   0.8054208   5.2347514
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1582195   1.0047312   1.3351555


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0111979   -0.0230847    0.0454805
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0996829    0.0517753    0.1475905
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0355262   -0.0590684    0.1301207
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0091773   -0.0077315    0.0260861
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0172273    0.0022982    0.0321564
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004548   -0.0025629    0.0016532
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0599858    0.0016239    0.1183477
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0213524    0.0121579    0.0305469
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0471316   -0.0508810    0.1451441
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0212834   -0.0041094    0.0466761
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0054910   -0.0326619    0.0216798
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0510861    0.0172809    0.0848914
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0003365   -0.0100846    0.0094115
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0044420   -0.0028570    0.0117410
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1103083   -0.1582373   -0.0623793
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0025212   -0.0039428    0.0089852
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0505848   -0.1374669    0.0362973
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0007428   -0.0120159    0.0105302
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0104097   -0.0228410    0.0436604
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0843171    0.0535782    0.1150560
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0036661   -0.0945606    0.0872284
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0104447   -0.0071642    0.0280537
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0168197    0.0019992    0.0316403
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0870960    0.0277309    0.1464611
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0184774    0.0102772    0.0266777
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0727426    0.0026364    0.1428489
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0264661    0.0021536    0.0507786


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0256050   -0.0560344    0.1009331
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2664014    0.1519549    0.3654029
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0986286   -0.2062529    0.3264511
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0516787   -0.0481722    0.1420177
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1202722    0.0113159    0.2172211
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022711   -0.0128521    0.0081994
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1133753   -0.0027754    0.2160722
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.1081737    0.0607362    0.1532153
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2142625   -0.3675587    0.5485507
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0798349   -0.0207694    0.1705239
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0286926   -0.1806848    0.1037332
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3961648    0.1386028    0.5767145
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0063851   -0.2094002    0.1625511
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1663527   -0.1444437    0.3927462
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.7780412   -1.2126843   -0.4287762
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0297939   -0.0495807    0.1031657
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5088235   -1.7418198    0.1696944
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0259282   -0.5039849    0.3001733
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0315676   -0.0746836    0.1273140
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2664137    0.1920676    0.3339185
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0103061   -0.3011209    0.2155084
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0648838   -0.0506524    0.1677150
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1279000    0.0097955    0.2319179
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1846166    0.0507682    0.2995914
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1393003    0.0761550    0.1981296
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4828113   -0.2410619    0.7844716
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1053713    0.0027541    0.1974290
