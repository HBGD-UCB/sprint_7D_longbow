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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/18750810-7dba-4fbd-87b1-99a0b7d68b50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/18750810-7dba-4fbd-87b1-99a0b7d68b50/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/18750810-7dba-4fbd-87b1-99a0b7d68b50/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/18750810-7dba-4fbd-87b1-99a0b7d68b50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                0.8461752   0.7909938   0.9013567
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    NA                0.9042902   0.8431010   0.9654795
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5772224   0.5364625   0.6179823
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6177406   0.5634752   0.6720061
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6679427   0.5529984   0.7828870
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7260229   0.6642053   0.7878406
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3566459   0.3137902   0.3995016
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3629292   0.2943432   0.4315152
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3768683   0.3353416   0.4183950
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4362591   0.3586037   0.5139146
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2993806   0.2797459   0.3190153
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3945507   0.2391577   0.5499438
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5475301   0.4838641   0.6111961
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6438802   0.5972208   0.6905396
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                0.2681184   0.2516592   0.2845776
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    NA                0.3839054   0.3619270   0.4058837
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3021154   0.1684293   0.4358015
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3923499   0.3215870   0.4631128
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3872258   0.3482999   0.4261516
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4386814   0.4145752   0.4627875
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.6087804   0.5343505   0.6832104
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.6332062   0.5361541   0.7302583
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2647632   0.2261270   0.3033995
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2059605   0.1761787   0.2357423
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1533516   0.1210378   0.1856653
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1667857   0.1145888   0.2189827
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1903928   0.1565681   0.2242176
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1865005   0.1244327   0.2485684
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1358202   0.1211324   0.1505080
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2368421   0.1016364   0.3720478
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1875797   0.1302040   0.2449554
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1762402   0.1384898   0.2139907
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                0.0749108   0.0648830   0.0849387
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    NA                0.1023809   0.0884277   0.1163342
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1008644   0.0774293   0.1242995
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0973132   0.0831709   0.1114556
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                0.6118101   0.4956993   0.7279208
6-24 months                  ki1000109-EE               PAKISTAN                       1                    NA                0.7789991   0.6576426   0.9003555
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4919249   0.4475305   0.5363192
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5668896   0.5387014   0.5950778
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7114356   0.5966277   0.8262436
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7693244   0.7090137   0.8296351
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2854928   0.2377237   0.3332620
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3425665   0.2561860   0.4289470
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2458170   0.2037706   0.2878635
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3834836   0.2975283   0.4694388
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2273936   0.2062034   0.2485838
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2857143   0.0924361   0.4789925
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5460533   0.4668956   0.6252110
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5872000   0.5329392   0.6414608
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                0.2280598   0.2114142   0.2447055
6-24 months                  ki1135781-COHORTS          INDIA                          1                    NA                0.3457039   0.3226350   0.3687728
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3651973   0.2183943   0.5120004
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2971505   0.2251180   0.3691829
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3193447   0.2790071   0.3596823
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3801122   0.3552450   0.4049794


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       NA                   NA                0.8663968   0.8238812   0.9089123
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6020293   0.5512634   0.6527952
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3010803   0.2815901   0.3205706
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6305221   0.5880881   0.6729561
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.3036392   0.2901712   0.3171072
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3752418   0.3097755   0.4407081
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4274295   0.4069942   0.4478647
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.5991903   0.5379507   0.6604298
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2029312   0.1748514   0.2310111
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1376233   0.1229861   0.1522605
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1787149   0.1450329   0.2123968
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0812729   0.0731685   0.0893773
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0979284   0.0852731   0.1105838
6-24 months                  ki1000109-EE               PAKISTAN                       NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5451761   0.5131549   0.5771973
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2281967   0.2071268   0.2492667
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5625000   0.5138243   0.6111757
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2661332   0.2522150   0.2800514
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2896552   0.2225771   0.3567332
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3673505   0.3463877   0.3883133


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0                 1.0686796   0.9735315   1.1731270
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0701951   0.9431129   1.2144014
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0869540   0.8968887   1.3172972
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0176177   0.8150718   1.2704964
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1575905   0.9401520   1.4253182
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3178901   0.8840539   1.9646249
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1759721   1.0261771   1.3476333
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0                 1.4318501   1.3174560   1.5561770
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2986758   0.8154049   2.0683697
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1328827   1.0089276   1.2720667
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 1.0401225   0.8559749   1.2638861
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.7779045   0.6732065   0.8988853
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0876036   0.7478575   1.5816938
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.9795566   0.6720745   1.4277156
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7437917   0.9753498   3.1176606
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9395485   0.6467818   1.3648365
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0                 1.3667038   1.1298594   1.6531962
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9647927   0.7385478   1.2603449
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0                 1.2732694   0.9997912   1.6215535
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1523907   1.0286075   1.2910701
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0813689   0.9038213   1.2937942
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1999127   0.8871784   1.6228873
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5600366   1.1788673   2.0644513
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2564745   0.6347322   2.4872353
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0753529   0.9064675   1.2757035
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0                 1.5158475   1.3742335   1.6720547
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8136710   0.5110613   1.2954619
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1902883   1.0303828   1.3750096


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0202215   -0.0081402    0.0485832
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0248069   -0.0419366    0.0915505
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0519017   -0.0487892    0.1525926
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0187484   -0.0034011    0.0408979
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0166999   -0.0028637    0.0362634
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0016997   -0.0011471    0.0045466
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0829920    0.0272270    0.1387569
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0355208    0.0242256    0.0468160
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0731264   -0.0557872    0.2020400
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0402037    0.0063885    0.0740189
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0095901   -0.0528194    0.0336391
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0618320   -0.0916639   -0.0320001
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0059544   -0.0111657    0.0230745
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0005000   -0.0159980    0.0149979
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018031   -0.0006900    0.0042962
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0088648   -0.0588012    0.0410715
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0063620   -0.0007788    0.0135029
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0029360   -0.0223487    0.0164768
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0686023    0.0036417    0.1335629
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0532513   -0.0007928    0.1072954
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0457660   -0.0534112    0.1449433
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0142883   -0.0104749    0.0390516
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0170288   -0.0039593    0.0380169
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008031   -0.0018960    0.0035022
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0164467   -0.0521491    0.0850425
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                 0.0380734    0.0264584    0.0496883
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0755421   -0.2188883    0.0678040
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0480058    0.0128302    0.0831814


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0233398   -0.0101828    0.0557500
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0412055   -0.0732592    0.1434623
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0721013   -0.0790246    0.2020607
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0499432   -0.0109121    0.1071352
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0424319   -0.0085752    0.0908594
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0056454   -0.0038542    0.0150550
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1316242    0.0398136    0.2146561
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.1169836    0.0792903    0.1531337
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1948781   -0.2267990    0.4716157
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0940593    0.0114126    0.1697966
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0160052   -0.0908207    0.0536790
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.3046944   -0.4719353   -0.1564553
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0373772   -0.0760780    0.1388705
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0026332   -0.0876635    0.0757497
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131018   -0.0051433    0.0310158
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0496033   -0.3711686    0.1965488
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0782800   -0.0130889    0.1614085
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0299806   -0.2485052    0.1502959
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.1008246   -0.0017104    0.1928640
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0976772   -0.0035856    0.1887224
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0604410   -0.0803852    0.1829108
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0476626   -0.0385764    0.1267406
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0647864   -0.0182443    0.1410465
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0035194   -0.0083774    0.0152757
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0292386   -0.1003822    0.1435906
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                 0.1430613    0.0988712    0.1850843
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2608003   -0.8883975    0.1582189
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1306812    0.0294096    0.2213861
