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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/6113d0e6-f216-43a2-b3c1-3e9927bd6e1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6113d0e6-f216-43a2-b3c1-3e9927bd6e1c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6113d0e6-f216-43a2-b3c1-3e9927bd6e1c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6113d0e6-f216-43a2-b3c1-3e9927bd6e1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                0.8456790   0.7899365   0.9014216
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    NA                0.9058823   0.8436823   0.9680824
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4955752   0.4404578   0.5506926
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6175711   0.5620734   0.6730687
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6896552   0.5703611   0.8089493
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7286432   0.6667425   0.7905440
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3624733   0.3189330   0.4060137
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4121212   0.3369580   0.4872844
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3774319   0.3354935   0.4193703
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4532374   0.3704173   0.5360575
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2993783   0.2797436   0.3190130
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3947368   0.2392892   0.5501845
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5748031   0.4887360   0.6608703
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6495957   0.6009993   0.6981921
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                0.2460545   0.2300650   0.2620441
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    NA                0.3985807   0.3752423   0.4219191
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2686567   0.1399132   0.3974002
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3911111   0.3202504   0.4619718
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3856655   0.3464678   0.4248633
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4433146   0.4190635   0.4675656
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5987654   0.5231346   0.6743963
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.6000000   0.4956421   0.7043579
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1858407   0.1600108   0.2116706
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2054264   0.1750420   0.2358107
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1535181   0.1208674   0.1861689
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1757576   0.1176365   0.2338786
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1906615   0.1566758   0.2246472
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1870504   0.1221743   0.2519264
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1358202   0.1211324   0.1505080
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2368421   0.1016364   0.3720478
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1811024   0.1140584   0.2481463
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1778976   0.1389442   0.2168510
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                0.0674530   0.0580144   0.0768916
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    NA                0.1039275   0.0892235   0.1186315
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0968109   0.0728909   0.1207309
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0983536   0.0839023   0.1128048
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                0.6250000   0.5057759   0.7442241
6-24 months                  ki1000109-EE               PAKISTAN                       1                    NA                0.7878788   0.6476739   0.9280837
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3977273   0.3352129   0.4602416
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5681416   0.5394797   0.5968034
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7142857   0.5957221   0.8328493
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7700535   0.7096174   0.8304896
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2857143   0.2378536   0.3335749
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3421053   0.2549227   0.4292878
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2418136   0.1996526   0.2839746
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3394495   0.2504670   0.4284321
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2273936   0.2062034   0.2485838
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2857143   0.0924361   0.4789925
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5000000   0.4018791   0.5981209
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5833333   0.5274755   0.6391911
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                0.2101183   0.1939879   0.2262487
6-24 months                  ki1135781-COHORTS          INDIA                          1                    NA                0.3626142   0.3376323   0.3875961
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2622951   0.1197087   0.4048815
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2941176   0.2210826   0.3671527
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3211356   0.2808296   0.3614417
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3849292   0.3599792   0.4098792


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


agecat                       studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0                 1.071189   0.9739352   1.178155
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.246170   1.0607143   1.464051
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.056533   0.8713430   1.281081
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.136970   0.9139148   1.414465
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.200846   0.9696347   1.487189
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.318522   0.8845171   1.965479
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.130119   0.9559410   1.336032
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0                 1.619888   1.4842127   1.767965
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.455803   0.8851100   2.394460
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.149479   1.0229879   1.291611
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 1.002062   0.8082399   1.242364
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.105389   0.9098615   1.342936
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.144865   0.7726792   1.696327
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.981060   0.6642592   1.448951
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.743792   0.9753498   3.117661
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.982304   0.6389284   1.510218
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0                 1.540739   1.2627234   1.879966
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.015934   0.7671605   1.345380
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0                 1.260606   0.9711420   1.636349
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.428470   1.1997465   1.700799
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.078075   0.8972406   1.295355
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.197368   0.8826380   1.624325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.403765   1.0246307   1.923188
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.256474   0.6347322   2.487235
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.166667   0.9378108   1.451371
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0                 1.725762   1.5566244   1.913277
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.121323   0.6263088   2.007582
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.198650   1.0389198   1.382938


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0207177   -0.0082463   0.0496818
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1064541    0.0264330   0.1864752
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0301892   -0.0738968   0.1342752
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0129210   -0.0097491   0.0355910
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0161362   -0.0037676   0.0360401
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017020   -0.0011455   0.0045496
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0557189   -0.0179699   0.1294078
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0575847    0.0466866   0.0684828
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1065851   -0.0166833   0.2298534
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0417639    0.0080233   0.0755046
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0004249   -0.0439273   0.0447770
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0170905   -0.0166890   0.0508700
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0057879   -0.0115783   0.0231541
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0007687   -0.0163590   0.0148216
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018031   -0.0006900   0.0042962
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0023875   -0.0601525   0.0553774
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0138199    0.0071789   0.0204609
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0011175   -0.0186597   0.0208947
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0554124   -0.0090750   0.1198997
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1474488    0.0770841   0.2178136
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0429159   -0.0595369   0.1453688
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0140669   -0.0108435   0.0389773
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0210322   -0.0004657   0.0425302
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008031   -0.0018960   0.0035022
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0625000   -0.0222536   0.1472536
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                 0.0560149    0.0448492   0.0671805
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0273601   -0.1066351   0.1613552
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0462148    0.0113999   0.0810298


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0239125   -0.0103447   0.0570082
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1768254    0.0448157   0.2905909
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0419385   -0.1143004   0.1762707
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0344197   -0.0279156   0.0929749
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0409999   -0.0109691   0.0902973
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0056531   -0.0038489   0.0150651
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0883695   -0.0366848   0.1983386
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.1896484    0.1532535   0.2244790
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2840437   -0.1245648   0.5441851
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0977095    0.0151365   0.1733595
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0007090   -0.0761216   0.0720543
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0842183   -0.0893499   0.2301315
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0363318   -0.0789468   0.1392936
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0040479   -0.0895971   0.0747844
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131018   -0.0051433   0.0310158
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0133593   -0.3940712   0.2633827
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.1700430    0.0858427   0.2464879
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0114114   -0.2127338   0.1941287
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0814394   -0.0205034   0.1731986
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2704609    0.1369677   0.3833055
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0566770   -0.0891526   0.1829811
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0469239   -0.0398490   0.1264558
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0800174   -0.0052030   0.1580129
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0035194   -0.0083774   0.0152757
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1111111   -0.0535521   0.2500385
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                 0.2104768    0.1680423   0.2507470
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0944575   -0.5058360   0.4554471
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1258058    0.0255494   0.2157474
