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
![](/tmp/91deff38-9425-4c39-bfc2-1e8a6cf73ee1/783f20ed-20de-48eb-990e-7d41ab7c36c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91deff38-9425-4c39-bfc2-1e8a6cf73ee1/783f20ed-20de-48eb-990e-7d41ab7c36c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                0.4586215   0.3924185   0.5248245
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3285011   0.2729257   0.3840766
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2581149   0.0697156   0.4465142
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1691652   0.1367946   0.2015359
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1251027   0.0983968   0.1518087
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2292895   0.1470981   0.3114810
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4802991   0.3937263   0.5668719
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                0.1808925   0.1660953   0.1956897
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2628269   0.1979115   0.3277422
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                0.2048107   0.1394443   0.2701771
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1390742   0.0763318   0.2018167
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0687516   0.0343017   0.1032016
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0222774   0.0102910   0.0342637
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1068148   0.0650243   0.1486053
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0873420   0.0744956   0.1001884
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0249998   0.0130308   0.0369688
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                0.3565926   0.2937152   0.4194701
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2388734   0.1656435   0.3121033
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2450973   0.0712772   0.4189174
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1478193   0.1107679   0.1848707
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1146220   0.0883941   0.1408499
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4335620   0.3484523   0.5186717
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                0.1188536   0.1060969   0.1316103
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2548679   0.1941530   0.3155827


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


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             optimal           0.9535823   0.8736974   1.040771
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0789320   0.9226106   1.261739
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.5496974   0.7983298   3.008233
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0497646   0.9484817   1.161863
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1449476   1.0164419   1.289700
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8734164   0.6127459   1.244980
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1015863   0.9419030   1.288341
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             optimal           1.0938767   1.0330073   1.158333
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0606692   0.8544082   1.316723
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       observed             optimal           0.9343979   0.7231159   1.207413
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1675143   0.8306998   1.640893
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.7666528   0.5333264   1.102058
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1986284   0.8730802   1.645565
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.3273156   0.9625345   1.830341
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             optimal           0.9934438   0.8872543   1.112343
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0695271   0.8274258   1.382466
6-24 months                   ki1000109-EE               PAKISTAN                       observed             optimal           0.9247491   0.8289059   1.031674
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1193364   0.7593832   1.649910
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.5844708   0.8330633   3.013634
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0890029   0.9089081   1.304782
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1473089   1.0100523   1.303217
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0881185   0.9167726   1.291489
6-24 months                   ki1135781-COHORTS          INDIA                          observed             optimal           1.1160324   1.0326837   1.206108
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0307768   0.8436698   1.259380


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0212881   -0.0614843   0.0189081
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0259292   -0.0309966   0.0828550
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1418851   -0.0290420   0.3128121
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0084184   -0.0087822   0.0256191
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0181333    0.0029725   0.0332941
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0290243   -0.1101728   0.0521242
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0487918   -0.0262529   0.1238365
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0169816    0.0066146   0.0273486
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0159455   -0.0408244   0.0727154
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0134360   -0.0658088   0.0389368
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0232969   -0.0278611   0.0744549
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0160430   -0.0418999   0.0098139
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0044249   -0.0028772   0.0117271
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0349621    0.0001706   0.0697537
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0005726   -0.0104457   0.0093004
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0017382   -0.0046644   0.0081407
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0268339   -0.0658153   0.0121474
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0285063   -0.0680048   0.1250174
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1432522   -0.0148042   0.3013086
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0131563   -0.0137600   0.0400727
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0168848    0.0020302   0.0317395
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0382048   -0.0360134   0.1124231
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0137909    0.0045285   0.0230532
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0078440   -0.0431330   0.0588210


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0486771   -0.1445610   0.0391742
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0731575   -0.0838808   0.2074433
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.3547127   -0.2526152   0.6675790
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0474055   -0.0543166   0.1393133
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1265976    0.0161759   0.2246258
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1449292   -0.6319978   0.1967741
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0922182   -0.0616805   0.2238081
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0858202    0.0319527   0.1366903
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0571990   -0.1704007   0.2405390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0702078   -0.3829042   0.1717830
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1434795   -0.2038043   0.3905759
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.3043714   -0.8750245   0.0926066
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1657131   -0.1453702   0.3923059
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2465997   -0.0389238   0.4536538
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0065994   -0.1270726   0.1009963
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0650073   -0.2085675   0.2766550
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0813744   -0.2064095   0.0307018
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1066136   -0.3168582   0.3939064
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.3688744   -0.2003890   0.6681747
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0817288   -0.1002213   0.2335887
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1283952    0.0099523   0.2326683
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0809824   -0.0907831   0.2257000
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1039687    0.0316493   0.1708870
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0298578   -0.1852978   0.2059584
