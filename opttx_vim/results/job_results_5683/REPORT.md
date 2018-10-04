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
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0       50    494
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    1      274    494
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0       16    494
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    1      154    494
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
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0      108    996
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1      146    996
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0      260    996
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1      482    996
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0     2102   4479
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    1      686   4479
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0     1017   4479
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    1      674   4479
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       49    517
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1       18    517
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      274    517
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      176    517
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1080   6380
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      678   6380
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2573   6380
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     2049   6380
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      173    289
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      111    289
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        5    289
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0    289
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0      232    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    1      121    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0        4    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1        3    360
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0      130    494
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    1      194    494
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0       68    494
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    1      102    494
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
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0      208    996
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1       46    996
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0      610    996
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1      132    996
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0     2530   4368
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    1      183   4368
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0     1483   4368
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    1      172   4368
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       64    516
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        2    516
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      384    516
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1       66    516
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1586   6372
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      170   6372
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     4162   6372
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      454   6372
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       27    183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      150    183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        1    183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        5    183
6-24 months                  ki1000108-IRC              INDIA                          0                    0      145    236
6-24 months                  ki1000108-IRC              INDIA                          0                    1       87    236
6-24 months                  ki1000108-IRC              INDIA                          1                    0        2    236
6-24 months                  ki1000108-IRC              INDIA                          1                    1        2    236
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0       48    194
6-24 months                  ki1000109-EE               PAKISTAN                       0                    1       80    194
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0       14    194
6-24 months                  ki1000109-EE               PAKISTAN                       1                    1       52    194
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
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0      100    800
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1      100    800
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0      250    800
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1      350    800
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0     1936   3874
6-24 months                  ki1135781-COHORTS          INDIA                          0                    1      515   3874
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0      907   3874
6-24 months                  ki1135781-COHORTS          INDIA                          1                    1      516   3874
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0       45    435
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    1       16    435
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0      264    435
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    1      110    435
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1076   5752
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    1      509   5752
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2563   5752
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1604   5752


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
![](/tmp/df9e557f-8d1a-42a3-bda0-df3ba82c8b76/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/df9e557f-8d1a-42a3-bda0-df3ba82c8b76/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                0.8285772   0.7685016   0.8886527
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5024049   0.4576453   0.5471645
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7185791   0.6157778   0.8213804
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2697310   0.2220191   0.3174429
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2703173   0.2184986   0.3221360
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2743592   0.2552343   0.2934841
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6336625   0.5829426   0.6843825
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2668924   0.2503839   0.2834009
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2673378   0.1386237   0.3960518
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3901542   0.3512514   0.4290569
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.6002437   0.5255261   0.6749612
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1631878   0.1287742   0.1976014
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1111785   0.0812054   0.1411516
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0936206   0.0511690   0.1360722
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1358001   0.1211123   0.1504879
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1070837   0.0753222   0.1388453
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0745142   0.0644594   0.0845690
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0972656   0.0831230   0.1114083
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                0.6278533   0.5119731   0.7437335
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4474590   0.4006767   0.4942413
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7044002   0.5931093   0.8156911
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1843259   0.1436520   0.2249998
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2418759   0.1999053   0.2838465
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2273998   0.2062096   0.2485900
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5053373   0.4303591   0.5803154
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2261016   0.2094259   0.2427773
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2942917   0.2114804   0.3771029
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3244343   0.2840920   0.3647766


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       observed             NA                0.8661395   0.8236239   0.9086550
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6104476   0.5596816   0.6612135
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7202478   0.6652371   0.7752585
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3768938   0.3391719   0.4146156
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3933982   0.3558987   0.4308977
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3012488   0.2817586   0.3207391
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6293924   0.5869584   0.6718265
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.3034432   0.2899752   0.3169112
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.3734335   0.3079672   0.4388998
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4279088   0.4074735   0.4483440
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.5972680   0.5360284   0.6585076
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2047807   0.1767009   0.2328606
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609742   0.1324652   0.1894831
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1908772   0.1607714   0.2209829
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1376531   0.1230159   0.1522902
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1818715   0.1481896   0.2155535
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0812176   0.0731131   0.0893220
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0979758   0.0853204   0.1106311
6-24 months                  ki1000109-EE               PAKISTAN                       observed             NA                0.6850024   0.5917214   0.7782835
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5469632   0.5149420   0.5789844
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7583634   0.7043416   0.8123852
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3002965   0.2582447   0.3423483
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2623828   0.2239916   0.3007741
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2281918   0.2071219   0.2492618
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5656098   0.5169341   0.6142855
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2661774   0.2522592   0.2800956
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2883245   0.2212464   0.3554025
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3671879   0.3462251   0.3881508


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              observed          0.9566325   0.9149825   1.0001784
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8230108   0.7690091   0.8808046
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9976832   0.8965568   1.1102160
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.7156685   0.6228026   0.8223816
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.6871340   0.5871921   0.8040862
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9107394   0.8879237   0.9341413
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          1.0067845   0.9517868   1.0649602
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              observed          0.8795465   0.8431304   0.9175355
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7158913   0.4548197   1.1268207
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9117695   0.8361862   0.9941849
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              observed          1.0049821   0.9345227   1.0807539
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.7968903   0.6942629   0.9146884
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6906607   0.5663202   0.8423012
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.4904755   0.3238869   0.7427477
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9865389   0.9686282   1.0047808
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.5887877   0.4624831   0.7495862
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              observed          0.9174637   0.8338833   1.0094215
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9927518   0.9198252   1.0714603
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              observed          0.9165709   0.8264783   1.0164842
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8180788   0.7303130   0.9163920
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9288425   0.8096997   1.0655166
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6138131   0.5235122   0.7196901
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9218436   0.8455059   1.0050735
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9965293   0.9847727   1.0084262
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.8934380   0.7851765   1.0166267
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              observed          0.8494396   0.8072293   0.8938570
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          1.0206961   0.8161353   1.2765292
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8835647   0.7927699   0.9847581
