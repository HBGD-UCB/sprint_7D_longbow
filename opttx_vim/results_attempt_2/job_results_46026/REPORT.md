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
![](/tmp/fda8cefd-2c9c-4b8b-a6b7-5834277d013e/18c2a9db-35f6-4b1d-a78d-faef93201161/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fda8cefd-2c9c-4b8b-a6b7-5834277d013e/18c2a9db-35f6-4b1d-a78d-faef93201161/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                0.8454043   0.7893489   0.9014598
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5167389   0.4759724   0.5575054
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.6690060   0.5410684   0.7969436
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3439135   0.2931103   0.3947167
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3666083   0.3088077   0.4244088
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3342146   0.3138989   0.3545303
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6013123   0.5205104   0.6821143
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2670801   0.2493391   0.2848211
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2612376   0.1347496   0.3877257
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3880517   0.3473804   0.4287230
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5489859   0.4573371   0.6406347
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1971949   0.1283003   0.2660895
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1569630   0.1182622   0.1956639
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1480583   0.1005003   0.1956162
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1358173   0.1210215   0.1506131
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1789596   0.1245169   0.2334023
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0733141   0.0625154   0.0841127
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.1117505   0.0927940   0.1307070
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                0.6261762   0.5054156   0.7469369
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4582813   0.3942403   0.5223223
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7126606   0.5835292   0.8417920
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3082055   0.2527854   0.3636257
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2426262   0.2005048   0.2847477
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2273944   0.2059598   0.2488290
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4827768   0.3935647   0.5719888
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2252322   0.2075422   0.2429222
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2998368   0.1545757   0.4450979
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3241578   0.2820594   0.3662562


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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       observed             optimal           1.0248312   0.9897673   1.0611373
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1650551   1.0481811   1.2949607
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0759909   0.9089597   1.2737159
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0915370   0.9794150   1.2164944
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0735387   0.9451703   1.2193415
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9008593   0.8777162   0.9246125
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0485767   0.9380879   1.1720789
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             optimal           1.1368844   1.0849174   1.1913406
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.4336272   0.9076688   2.2643578
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1013063   1.0053532   1.2064174
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           1.0914493   0.9655285   1.2337923
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0290899   0.7414527   1.4283121
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0149268   0.8426735   1.2223908
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2825543   0.9735921   1.6895634
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0132972   0.9947373   1.0322034
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9986325   0.7844844   1.2712386
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             optimal           1.1085582   0.9957704   1.2341211
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8763133   0.7845349   0.9788284
6-24 months                  ki1000109-EE               PAKISTAN                       observed             optimal           1.0866148   0.9762081   1.2095082
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1896102   1.0150123   1.3942415
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0624997   0.9056784   1.2464751
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9726664   0.8667115   1.0915743
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0833365   0.9933324   1.1814957
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0035282   0.9915114   1.0156907
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1651348   0.9975591   1.3608608
6-24 months                  ki1135781-COHORTS          INDIA                          observed             optimal           1.1815946   1.1178920   1.2489273
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9638271   0.6265774   1.4825984
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1339560   1.0129192   1.2694558


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0209924   -0.0082221    0.0502069
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0852904    0.0255638    0.1450170
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0508384   -0.0617447    0.1634215
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0314808   -0.0059322    0.0688938
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0269599   -0.0198449    0.0737647
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0331343   -0.0413361   -0.0249324
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0292098   -0.0376241    0.0960436
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0365591    0.0240578    0.0490604
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1132797   -0.0083806    0.2349400
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0393121    0.0039713    0.0746529
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0502044   -0.0167979    0.1172066
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0057364   -0.0589524    0.0704252
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0023430   -0.0268906    0.0315765
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0418345    0.0006476    0.0830214
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0018060   -0.0007016    0.0043136
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0002447   -0.0434378    0.0429484
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0079588    0.0000612    0.0158565
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0138220   -0.0263035   -0.0013406
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                 0.0542361   -0.0115042    0.1199765
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0868948    0.0115273    0.1622623
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0445411   -0.0689992    0.1580814
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0084244   -0.0439673    0.0271186
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0202196   -0.0008823    0.0413216
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0008023   -0.0019309    0.0035355
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0797232    0.0050944    0.1543520
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0409010    0.0283691    0.0534329
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0108460   -0.1399361    0.1182441
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0434229    0.0069168    0.0799289


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0242296   -0.0103385    0.0576149
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1416715    0.0459664    0.2277758
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0706241   -0.1001587    0.2148956
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0838606   -0.0210176    0.1779658
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0685012   -0.0580104    0.1798852
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1100513   -0.1393204   -0.0815341
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0463263   -0.0659982    0.1468151
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1204031    0.0782709    0.1606095
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3024686   -0.1017235    0.5583737
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0919874    0.0053247    0.1710995
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0837870   -0.0357022    0.1894908
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0282676   -0.3487036    0.2998729
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0147072   -0.1866992    0.1819310
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2203059   -0.0271242    0.4081311
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0131227   -0.0052905    0.0311987
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0013694   -0.2747225    0.2133656
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0979274   -0.0042475    0.1897067
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1411444   -0.2746405   -0.0216296
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                 0.0797107   -0.0243717    0.1732177
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1593885    0.0147903    0.2827641
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0588233   -0.1041447    0.1977377
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0281017   -0.1537864    0.0838919
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0769258   -0.0067123    0.1536152
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0035158   -0.0085612    0.0154483
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1417302   -0.0024469    0.2651710
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.1536861    0.1054592    0.1993129
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0375305   -0.5959721    0.3255085
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1181315    0.0127544    0.2122609
