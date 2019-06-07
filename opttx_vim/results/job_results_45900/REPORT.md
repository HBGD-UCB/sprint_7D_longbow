---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
* single
* W_nrooms
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_W_nrooms
* delta_W_parity
* delta_impsan

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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   0      143    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   1      109    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   0       68    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   1       55    375
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                   0       57    395
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                   1       20    395
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   0      198    395
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   1      120    395
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       17    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        6    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       43    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       34    100
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
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   0       75    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   1       61    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   0      184    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   1      230    550
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                   0     2507   4892
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                   1      517   4892
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                   0     1417   4892
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                   1      451   4892
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                   0       14    160
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        4    160
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      104    160
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       38    160
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      217   1173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       77   1173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      629   1173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      250   1173
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      234    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      106    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2    347
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                   0      251    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                   1      131    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   0        6    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   1        2    390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   0      198    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   1       50    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   0      102    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   1       21    371
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   0       68    388
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   1        9    388
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   0      257    388
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   1       54    388
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       22     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       67     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     89
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
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   0      111    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   1       17    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   0      343    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   1       58    529
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                   0     2504   4414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                   1      229   4414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                   0     1527   4414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                   1      154   4414
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                   0       14    157
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                   1        4    157
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      123    157
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       16    157
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      274   1122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                   1        9   1122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      818   1122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       21   1122
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      268    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       94    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    370
6-24 months                   ki1000108-IRC              INDIA                          0                   0      276    410
6-24 months                   ki1000108-IRC              INDIA                          0                   1      126    410
6-24 months                   ki1000108-IRC              INDIA                          1                   0        7    410
6-24 months                   ki1000108-IRC              INDIA                          1                   1        1    410
6-24 months                   ki1000109-EE               PAKISTAN                       0                   0      171    373
6-24 months                   ki1000109-EE               PAKISTAN                       0                   1       80    373
6-24 months                   ki1000109-EE               PAKISTAN                       1                   0       79    373
6-24 months                   ki1000109-EE               PAKISTAN                       1                   1       43    373
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                   0       61    374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                   1       15    374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   0      213    374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   1       85    374
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       19    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        6    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       44    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       34    103
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
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                   0       79    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                   1       57    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   0      211    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   1      202    549
6-24 months                   ki1135781-COHORTS          INDIA                          0                   0     2609   4742
6-24 months                   ki1135781-COHORTS          INDIA                          0                   1      315   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                   0     1504   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                   1      314   4742
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                   0       17    159
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        0    159
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      114    159
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       28    159
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      225   1180
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       71   1180
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      645   1180
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      239   1180


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
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/7179e9c5-5310-4c8a-add8-a4f25b24d5b9/78941ec9-b2f0-4b34-87bf-bf1c6630a63c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7179e9c5-5310-4c8a-add8-a4f25b24d5b9/78941ec9-b2f0-4b34-87bf-bf1c6630a63c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                0.4916465   0.4192643   0.5640286
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3285011   0.2729257   0.3840766
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2415849   0.0540866   0.4290832
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1945478   0.1566094   0.2324861
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1208362   0.0941323   0.1475401
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2046669   0.1221285   0.2872053
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4783488   0.3903589   0.5663387
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                0.1801522   0.1654913   0.1948131
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2647344   0.1972557   0.3322132
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                0.2026277   0.1345838   0.2706717
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1390742   0.0763318   0.2018167
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0696198   0.0337939   0.1054457
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0221071   0.0101614   0.0340528
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1214999   0.0761724   0.1668273
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0822485   0.0694519   0.0950451
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0357632   0.0202286   0.0512977
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                0.3184068   0.2605438   0.3762697
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2388734   0.1656435   0.3121033
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2517085   0.0703149   0.4331021
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1425215   0.1056181   0.1794249
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1149537   0.0886363   0.1412710
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4248082   0.3400301   0.5095862
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                0.1211366   0.1081245   0.1341488
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2468800   0.1905140   0.3032460


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             NA                0.4373333   0.3870592   0.4876074
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3544304   0.2614867   0.4473741
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.4000000   0.3034980   0.4965020
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2002653   0.1837694   0.2167611
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5290909   0.4873371   0.5708447
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             NA                0.1978741   0.1867089   0.2090392
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2787724   0.2485492   0.3089955
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       observed             NA                0.1913747   0.1512914   0.2314579
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1623711   0.0945196   0.2302227
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1417769   0.1120237   0.1715302
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             NA                0.0867694   0.0784641   0.0950747
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0267380   0.0164185   0.0370574
6-24 months                   ki1000109-EE               PAKISTAN                       observed             NA                0.3297587   0.2819849   0.3775326
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2673797   0.2109177   0.3238416
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3883495   0.2937670   0.4829321
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.4717668   0.4299709   0.5135628
6-24 months                   ki1135781-COHORTS          INDIA                          observed             NA                0.1326445   0.1229894   0.1422995
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2627119   0.2334227   0.2920010


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             optimal           0.8895281   0.8054295   0.9824078
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0789320   0.9226106   1.2617393
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.6557328   0.8155977   3.3612786
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9128026   0.8014175   1.0396686
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1853739   1.0453382   1.3441690
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9784937   0.6559772   1.4595779
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1060776   0.9412410   1.2997816
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             optimal           1.0983718   1.0376502   1.1626468
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0530266   0.8417590   1.3173188
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       observed             optimal           0.9444643   0.7235981   1.2327462
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1675143   0.8306998   1.6408934
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.7570923   0.5191495   1.1040919
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2078597   0.8783530   1.6609781
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1668895   0.8593297   1.5845268
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             optimal           1.0549657   0.9346414   1.1907803
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.7476400   0.5628874   0.9930326
6-24 months                   ki1000109-EE               PAKISTAN                       observed             optimal           1.0356523   0.9323392   1.1504135
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1193364   0.7593832   1.6499102
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.5428540   0.8017190   2.9691182
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1294832   0.9360961   1.3628221
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1439986   1.0068777   1.2997932
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1105408   0.9326935   1.3223004
6-24 months                   ki1135781-COHORTS          INDIA                          observed             optimal           1.0949988   1.0134523   1.1831067
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0641279   0.8774647   1.2904999


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0543131   -0.1031566   -0.0054697
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0259292   -0.0309966    0.0828550
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1584151   -0.0121288    0.3289590
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0169641   -0.0421133    0.0081852
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0223999    0.0069315    0.0378682
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0044016   -0.0862240    0.0774207
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0507421   -0.0263095    0.1277938
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0177219    0.0074597    0.0279841
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0140380   -0.0451672    0.0732432
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0112531   -0.0652373    0.0427312
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0232969   -0.0278611    0.0744549
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0169112   -0.0441857    0.0103633
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0045952   -0.0026994    0.0118898
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0202770   -0.0170873    0.0576414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0045208   -0.0054418    0.0144835
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0090252   -0.0191245    0.0010741
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0113519   -0.0220963    0.0448001
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0285063   -0.0680048    0.1250174
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1366410   -0.0282107    0.3014927
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0184541   -0.0085582    0.0454665
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0165532    0.0016385    0.0314679
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0469587   -0.0270937    0.1210110
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0115078    0.0021142    0.0209014
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0158319   -0.0317150    0.0633788


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                -0.1241916   -0.2415736   -0.0179072
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0731575   -0.0838808    0.2074433
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.3960378   -0.2260947    0.7024942
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0955271   -0.2477891    0.0381550
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1563843    0.0433718    0.2560459
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0219790   -0.5244432    0.3148704
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0959043   -0.0624272    0.2306400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0895615    0.0362841    0.1398936
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0503563   -0.1879886    0.2408823
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0588013   -0.3819826    0.1888030
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1434795   -0.2038043    0.3905759
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.3208429   -0.9262274    0.0942783
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1720893   -0.1384944    0.3979451
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1430208   -0.1636977    0.3688968
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0521019   -0.0699291    0.1602145
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.3375421   -0.7765541   -0.0070162
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0344249   -0.0725710    0.1307473
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1066136   -0.3168582    0.3939064
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.3518506   -0.2473198    0.6631997
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1146394   -0.0682664    0.2662285
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1258731    0.0068307    0.2306469
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0995378   -0.0721636    0.2437422
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0867569    0.0132738    0.1547677
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0602633   -0.1396470    0.2251065
