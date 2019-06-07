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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        hdlvry    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  -------  -------------  -------  -----
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       27    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      260    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        1    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        5    293
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0      145    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    1      208    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0        2    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    1        5    360
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0       25    247
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    1      137    247
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0        8    247
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    1       77    247
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0       57    887
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    1       56    887
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0      296    887
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    1      478    887
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       18    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       40    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       54    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1      145    257
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      299    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    1      170    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0       97    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       68    634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      320    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      194    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       76    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       63    653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1465   2129
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      626   2129
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       23   2129
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       15   2129
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0       54    498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1       73    498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0      130    498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1      241    498
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0     2102   4479
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    1      686   4479
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0     1017   4479
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    1      674   4479
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       25    259
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        9    259
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      137    259
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1       88    259
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      541   3194
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      339   3194
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1288   3194
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1026   3194
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      173    289
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      111    289
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        5    289
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0    289
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0      232    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    1      121    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0        4    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1        3    360
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0       65    247
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    1       97    247
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0       34    247
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    1       51    247
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0       92    887
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    1       21    887
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0      615    887
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    1      159    887
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       58    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      196    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        3    257
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      397    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       72    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      136    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    1       29    634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      416    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       98    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      113    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       26    653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1807   2129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      284   2129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       29   2129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        9   2129
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0      104    498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1       23    498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0      305    498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1       66    498
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0     2530   4368
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    1      183   4368
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0     1483   4368
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    1      172   4368
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       32    258
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1    258
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      192    258
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1       33    258
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      793   3186
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       85   3186
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2081   3186
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      227   3186
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       27    183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      150    183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        1    183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        5    183
6-24 months                  ki1000108-IRC              INDIA                          0                    0      145    236
6-24 months                  ki1000108-IRC              INDIA                          0                    1       87    236
6-24 months                  ki1000108-IRC              INDIA                          1                    0        2    236
6-24 months                  ki1000108-IRC              INDIA                          1                    1        2    236
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0       24     97
6-24 months                  ki1000109-EE               PAKISTAN                       0                    1       40     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0        7     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                    1       26     97
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0       53    653
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    1       35    653
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0      244    653
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    1      321    653
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       16    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       40    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       43    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    1      144    243
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0      245    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    1       98    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0       75    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    1       39    457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      301    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       96    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       72    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       37    506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1162   1525
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      342   1525
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       15   1525
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        6   1525
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0       50    400
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1       50    400
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0      125    400
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1      175    400
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0     1936   3874
6-24 months                  ki1135781-COHORTS          INDIA                          0                    1      515   3874
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0      907   3874
6-24 months                  ki1135781-COHORTS          INDIA                          1                    1      516   3874
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0       23    218
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    1        8    218
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0      132    218
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    1       55    218
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0      539   2881
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    1      255   2881
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1283   2881
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    1      804   2881


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA

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
![](/tmp/0ae6710e-e0be-43e9-944e-2e3ff5f0c31f/346346aa-9c2e-4eff-8e56-b1e0a5e30a2d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0ae6710e-e0be-43e9-944e-2e3ff5f0c31f/346346aa-9c2e-4eff-8e56-b1e0a5e30a2d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                0.8465559   0.7906486   0.9024632
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5167389   0.4759724   0.5575054
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7365598   0.6272487   0.8458709
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3501361   0.3001526   0.4001196
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3731616   0.3172272   0.4290960
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3383556   0.2836137   0.3930976
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5980309   0.5164847   0.6795771
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2660578   0.2485554   0.2835603
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2682685   0.1403588   0.3961781
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3962344   0.3564339   0.4360348
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5403238   0.4484827   0.6321648
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1971949   0.1283003   0.2660895
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1638228   0.1238419   0.2038036
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1653087   0.1158578   0.2147597
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1358275   0.1210317   0.1506233
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1944047   0.1374560   0.2513535
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0717460   0.0611790   0.0823129
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0937276   0.0738017   0.1136535
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                0.6244512   0.5035728   0.7453295
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4582813   0.3942403   0.5223223
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7127872   0.5897830   0.8357914
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3140136   0.2570294   0.3709978
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2425959   0.1974812   0.2877106
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3012869   0.2777623   0.3248115
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4529149   0.3646549   0.5411749
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2256163   0.2077400   0.2434925
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2548028   0.1125625   0.3970431
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3299644   0.2880853   0.3718434


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       observed             NA                0.8663968   0.8238812   0.9089123
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6020293   0.5512634   0.6527952
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3010803   0.2815901   0.3205706
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6305221   0.5880881   0.6729561
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.3036392   0.2901712   0.3171072
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.3745174   0.3090067   0.4400281
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4273638   0.4069167   0.4478110
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.5991903   0.5379507   0.6604298
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2029312   0.1748514   0.2310111
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1376233   0.1229861   0.1522605
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1787149   0.1450329   0.2123968
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0812729   0.0731685   0.0893773
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0979284   0.0852731   0.1105838
6-24 months                  ki1000109-EE               PAKISTAN                       observed             NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5451761   0.5131549   0.5771973
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2281967   0.2071268   0.2492667
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5625000   0.5138243   0.6111757
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2661332   0.2522150   0.2800514
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2889908   0.2220207   0.3559610
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3675807   0.3466082   0.3885532


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       observed             optimal           1.0234371   0.9886448   1.0594539
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1650551   1.0481811   1.2949607
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9773061   0.8555884   1.1163395
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0721382   0.9637353   1.1927344
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0546855   0.9397257   1.1837088
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8898339   0.7659482   1.0337572
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0543303   0.9418085   1.1802955
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             optimal           1.1412526   1.0899791   1.1949381
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.3960545   0.8886614   2.1931505
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0785632   0.9891076   1.1761091
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           1.1089468   0.9779622   1.2574749
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0290899   0.7414527   1.4283121
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9724289   0.8093915   1.1683074
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1487161   0.8856225   1.4899674
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0132213   0.9946578   1.0321313
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9192927   0.7355666   1.1489089
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             optimal           1.1327872   1.0174838   1.2611570
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0448198   0.8893463   1.2274729
6-24 months                  ki1000109-EE               PAKISTAN                       observed             optimal           1.0896166   0.9784310   1.2134370
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1896102   1.0150123   1.3942415
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0623109   0.9138081   1.2349470
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9546758   0.8398465   1.0852052
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0834721   0.9755855   1.2032895
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7574067   0.7191700   0.7976765
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2419551   1.0544550   1.4627958
6-24 months                  ki1135781-COHORTS          INDIA                          observed             optimal           1.1795834   1.1146509   1.2482985
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1341743   0.6707590   1.9177549
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1140011   0.9977851   1.2437534


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0198408   -0.0092372    0.0489189
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0852904    0.0255638    0.1450170
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0167154   -0.1145992    0.0811683
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0252582   -0.0122778    0.0627942
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0204065   -0.0226977    0.0635107
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0372753   -0.0879980    0.0134474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0324912   -0.0348463    0.0998286
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0375814    0.0253387    0.0498241
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1062489   -0.0171859    0.2296837
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0311294   -0.0031550    0.0654138
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0588665   -0.0086953    0.1264284
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0057364   -0.0589524    0.0704252
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0045168   -0.0345158    0.0254822
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0245841   -0.0187459    0.0679140
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0017958   -0.0007127    0.0043044
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0156899   -0.0591562    0.0277764
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0095269    0.0017767    0.0172772
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0042009   -0.0108765    0.0192782
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                 0.0559612   -0.0098282    0.1217506
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0868948    0.0115273    0.1622623
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0444144   -0.0626674    0.1514962
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0142324   -0.0543475    0.0258826
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0202500   -0.0051503    0.0456502
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0730902   -0.0863777   -0.0598026
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1095851    0.0360950    0.1830752
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0405169    0.0276875    0.0533464
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0341880   -0.1004638    0.1688398
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0376163    0.0013210    0.0739116


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0229004   -0.0114856    0.0561175
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1416715    0.0459664    0.2277758
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0232209   -0.1687863    0.1042152
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0672844   -0.0376293    0.1615904
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0518501   -0.0641403    0.1551976
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1238052   -0.3055714    0.0326549
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0515306   -0.0617870    0.1527546
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1237698    0.0825512    0.1631366
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2836956   -0.1252880    0.5440349
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0728406   -0.0110124    0.1497388
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0982435   -0.0225344    0.2047555
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0282676   -0.3487036    0.2998729
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0283528   -0.2354961    0.1440609
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1294629   -0.1291492    0.3288444
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0130488   -0.0053709    0.0311310
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0877929   -0.3594962    0.1296089
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1172216    0.0171833    0.2070773
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0428972   -0.1244214    0.1853181
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                 0.0822460   -0.0220445    0.1758946
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1593885    0.0147903    0.2827641
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0586560   -0.0943217    0.1902487
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0474761   -0.1906937    0.0785153
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0770413   -0.0250255    0.1689448
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.3202946   -0.3904919   -0.2536411
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1948179    0.0516428    0.3163776
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.1522431    0.1028582    0.1989095
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1183013   -0.4908484    0.4785569
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1023349   -0.0022198    0.1959821
