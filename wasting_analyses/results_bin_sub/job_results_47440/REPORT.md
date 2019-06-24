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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        hdlvry    ever_co   n_cell      n
------------  -------------------------  -----------------------------  -------  --------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      279    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1       83    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    370
0-24 months   ki1000108-IRC              INDIA                          0               0      328    410
0-24 months   ki1000108-IRC              INDIA                          0               1       74    410
0-24 months   ki1000108-IRC              INDIA                          1               0        6    410
0-24 months   ki1000108-IRC              INDIA                          1               1        2    410
0-24 months   ki1000109-EE               PAKISTAN                       0               0      160    377
0-24 months   ki1000109-EE               PAKISTAN                       0               1       93    377
0-24 months   ki1000109-EE               PAKISTAN                       1               0       74    377
0-24 months   ki1000109-EE               PAKISTAN                       1               1       50    377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               0      140   1232
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               1       24   1232
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      795   1232
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1      273   1232
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0       55    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               1       26    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0      208    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1      129    418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      456    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       63    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      154    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       27    700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      545    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       45    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      142    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       26    758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2121   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      113   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       38   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        2   2274
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      104    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       36    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      280    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      141    561
0-24 months   ki1135781-COHORTS          INDIA                          0               0     2904   5089
0-24 months   ki1135781-COHORTS          INDIA                          0               1      232   5089
0-24 months   ki1135781-COHORTS          INDIA                          1               0     1679   5089
0-24 months   ki1135781-COHORTS          INDIA                          1               1      274   5089
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       40    350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        2    350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      276    350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1       32    350
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     1007   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      164   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2757   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      573   4501
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      327    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       31    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0    365
0-6 months    ki1000108-IRC              INDIA                          0               0      377    409
0-6 months    ki1000108-IRC              INDIA                          0               1       24    409
0-6 months    ki1000108-IRC              INDIA                          1               0        7    409
0-6 months    ki1000108-IRC              INDIA                          1               1        1    409
0-6 months    ki1000109-EE               PAKISTAN                       0               0      219    377
0-6 months    ki1000109-EE               PAKISTAN                       0               1       34    377
0-6 months    ki1000109-EE               PAKISTAN                       1               0      106    377
0-6 months    ki1000109-EE               PAKISTAN                       1               1       18    377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      159   1226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1        4   1226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      985   1226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       78   1226
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       77    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1        4    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      307    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       28    416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      497    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       22    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      173    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        8    700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      581    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        9    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      160    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        8    758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2216   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       18   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       39   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1   2274
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      136    561
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        4    561
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      404    561
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       17    561
0-6 months    ki1135781-COHORTS          INDIA                          0               0     2958   4929
0-6 months    ki1135781-COHORTS          INDIA                          0               1       77   4929
0-6 months    ki1135781-COHORTS          INDIA                          1               0     1837   4929
0-6 months    ki1135781-COHORTS          INDIA                          1               1       57   4929
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       39    348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        2    348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0      291    348
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       16    348
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     1124   4456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1       36   4456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     3211   4456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       85   4456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      295    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1       67    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    370
6-24 months   ki1000108-IRC              INDIA                          0               0      340    410
6-24 months   ki1000108-IRC              INDIA                          0               1       62    410
6-24 months   ki1000108-IRC              INDIA                          1               0        6    410
6-24 months   ki1000108-IRC              INDIA                          1               1        2    410
6-24 months   ki1000109-EE               PAKISTAN                       0               0      165    371
6-24 months   ki1000109-EE               PAKISTAN                       0               1       84    371
6-24 months   ki1000109-EE               PAKISTAN                       1               0       75    371
6-24 months   ki1000109-EE               PAKISTAN                       1               1       47    371
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               0      129   1128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0               1       24   1128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      727   1128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1      248   1128
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0       55    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               1       24    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0      201    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1      121    401
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      407    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       52    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      132    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       23    614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      528    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       39    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      139    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       24    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1772   1911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      108   1911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       30   1911
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1   1911
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      101    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       35    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      274    549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      139    549
6-24 months   ki1135781-COHORTS          INDIA                          0               0     2728   4740
6-24 months   ki1135781-COHORTS          INDIA                          0               1      195   4740
6-24 months   ki1135781-COHORTS          INDIA                          1               0     1563   4740
6-24 months   ki1135781-COHORTS          INDIA                          1               1      254   4740
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       38    337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        1    337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      277    337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1       21    337
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     1028   4492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      140   4492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2798   4492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      526   4492


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/65943d65-a498-475a-88f1-5c93210d0ad1/c3ba16b1-fa82-40c0-87d4-d2ea0ea97208/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/65943d65-a498-475a-88f1-5c93210d0ad1/c3ba16b1-fa82-40c0-87d4-d2ea0ea97208/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/65943d65-a498-475a-88f1-5c93210d0ad1/c3ba16b1-fa82-40c0-87d4-d2ea0ea97208/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/65943d65-a498-475a-88f1-5c93210d0ad1/c3ba16b1-fa82-40c0-87d4-d2ea0ea97208/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.3668556   0.3072683   0.4264429
0-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.4083815   0.3206149   0.4961480
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1408475   0.0696116   0.2120834
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.2571950   0.2245968   0.2897932
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3893460   0.2783319   0.5003601
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.3762238   0.3241467   0.4283010
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1218624   0.0937259   0.1499990
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1395638   0.0872528   0.1918748
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0758918   0.0544593   0.0973244
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1551190   0.0999543   0.2102836
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2713353   0.1940651   0.3486054
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3291541   0.2838115   0.3744967
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0815539   0.0710029   0.0921048
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1312671   0.1151813   0.1473528
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.1458851   0.1208111   0.1709590
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1695081   0.1554558   0.1835604
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                0.1363172   0.0941759   0.1784585
0-6 months    ki1000109-EE               PAKISTAN     1                    NA                0.1546365   0.0922987   0.2169744
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0423892   0.0250433   0.0597351
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0441989   0.0142343   0.0741635
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0152542   0.0053581   0.0251504
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0476190   0.0153953   0.0798428
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0264498   0.0203313   0.0325682
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0342749   0.0250474   0.0435025
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0332271   0.0198764   0.0465779
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0257795   0.0189087   0.0326504
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.3337299   0.2747529   0.3927068
6-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.3568049   0.2708761   0.4427336
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1843486   0.1059489   0.2627482
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.2562194   0.2228711   0.2895678
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3732063   0.2574856   0.4889270
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.3743746   0.3211516   0.4275976
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1145549   0.0855513   0.1435585
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1458337   0.0899238   0.2017435
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0688233   0.0479354   0.0897112
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1473705   0.0920124   0.2027285
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2671790   0.1907351   0.3436229
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3303722   0.2848902   0.3758541
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0768938   0.0660672   0.0877204
6-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1269252   0.1105232   0.1433273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.1252551   0.1024038   0.1481064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1556101   0.1417936   0.1694267


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.3793103   0.3302660   0.4283547
0-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.2410714   0.1975050   0.2846379
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.3155080   0.2770184   0.3539976
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0994301   0.0912079   0.1076524
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1637414   0.1510998   0.1763830
0-6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.1379310   0.1030768   0.1727853
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0271860   0.0226456   0.0317265
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0271544   0.0212424   0.0330664
6-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.3530997   0.3044013   0.4017981
6-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.2411348   0.1953341   0.2869354
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.3169399   0.2779838   0.3558960
6-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0947257   0.0863884   0.1030631
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1482636   0.1364361   0.1600910


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.1131939   0.8502661   1.457427
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.8260524   1.1480311   2.904510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 0.9662969   0.7039626   1.326391
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.1452572   0.7371687   1.779259
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.0439479   1.2977055   3.219315
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.2130901   0.8837992   1.665070
0-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.6095751   1.3476244   1.922444
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.1619292   0.9642889   1.400078
0-6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN     1                    0                 1.1343876   0.6821517   1.886436
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.0426921   0.4723343   2.301774
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 3.1216931   1.2225460   7.971044
0-6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA        1                    0                 1.2958497   0.9084784   1.848395
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 0.7758574   0.4863517   1.237694
6-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.0691427   0.7929768   1.441488
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.3898640   0.9763260   1.978562
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.0031303   0.7135191   1.410292
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.2730460   0.8044638   2.014567
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.1412874   1.3196927   3.474378
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.2365199   0.8996418   1.699545
6-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.6506566   1.3644912   1.996838
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2423459   1.0146184   1.521186


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0124547   -0.0220493   0.0469587
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.1002239    0.0500719   0.1503759
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0185326   -0.1203263   0.0832611
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0067090   -0.0086538   0.0220719
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0177757    0.0045159   0.0310355
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0441728   -0.0246053   0.1129508
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0178763    0.0098859   0.0258667
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0178563   -0.0030066   0.0387193
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0016138   -0.0231493   0.0263769
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0004679   -0.0084848   0.0094207
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0071732   -0.0003591   0.0147055
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0007363   -0.0034118   0.0048843
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0060728   -0.0170093   0.0048638
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0193699   -0.0155639   0.0543036
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0567862    0.0087036   0.1048688
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0116103   -0.1183712   0.0951506
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0075949   -0.0083837   0.0235736
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0174781    0.0041721   0.0307840
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0497609   -0.0178983   0.1174201
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0178319    0.0094104   0.0262535
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0230085    0.0031218   0.0428952


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0328351   -0.0625915   0.1196919
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.4157436    0.1314683   0.6069740
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0499782   -0.3639748   0.1917341
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0521812   -0.0747468   0.1641190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1897744    0.0411436   0.3153662
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.1400052   -0.1079643   0.3324775
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1797873    0.0963569   0.2555149
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1090520   -0.0288607   0.2284783
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0117003   -0.1850950   0.1758161
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0109184   -0.2216378   0.1992043
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.3198405   -0.0594838   0.5633562
0-6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0270821   -0.1381360   0.1683162
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.2236378   -0.6922450   0.1152053
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0548566   -0.0494821   0.1488221
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.2354957   -0.0206254   0.4273444
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                -0.0321085   -0.3740831   0.2247573
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0621773   -0.0773844   0.1836605
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2025236    0.0402795   0.3373398
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.1570042   -0.0858728   0.3455569
6-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1882482    0.0956346   0.2713774
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1551864    0.0095583   0.2794023
