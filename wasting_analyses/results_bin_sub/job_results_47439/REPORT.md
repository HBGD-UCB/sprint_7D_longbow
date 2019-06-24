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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        vagbrth    ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      266     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       82     373
0-24 months   ki1000108-IRC              INDIA                          0                0       60     410
0-24 months   ki1000108-IRC              INDIA                          0                1       10     410
0-24 months   ki1000108-IRC              INDIA                          1                0      274     410
0-24 months   ki1000108-IRC              INDIA                          1                1       66     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      144     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       16     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      466     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       74     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      189     500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       15     500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      259     500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       37     500
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      203    2367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        9    2367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     2046    2367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      109    2367
0-24 months   ki1119695-PROBIT           BELARUS                        0                0     1948   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                0    14922   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                1       24   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1130   13820
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       40   13820
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0    12115   13820
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      535   13820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     1404   26801
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      109   26801
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0    23021   26801
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     2267   26801
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      330    4520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       41    4520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     3447    4520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      702    4520
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      314     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       29     368
0-6 months    ki1000108-IRC              INDIA                          0                0       63     409
0-6 months    ki1000108-IRC              INDIA                          0                1        7     409
0-6 months    ki1000108-IRC              INDIA                          1                0      321     409
0-6 months    ki1000108-IRC              INDIA                          1                1       18     409
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      155     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        5     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      515     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       25     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      198     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        6     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      292     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        4     500
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      208    2367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        4    2367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     2140    2367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       15    2367
0-6 months    ki1119695-PROBIT           BELARUS                        0                0     1948   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                1        3   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                0    14926   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                1       16   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1155   13726
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1       10   13726
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0    12405   13726
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      156   13726
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0     1441   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1       69   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    24245   26739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      984   26739
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      351    4474
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       16    4474
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3999    4474
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      108    4474
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       23     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      280     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       68     373
6-24 months   ki1000108-IRC              INDIA                          0                0       64     410
6-24 months   ki1000108-IRC              INDIA                          0                1        6     410
6-24 months   ki1000108-IRC              INDIA                          1                0      282     410
6-24 months   ki1000108-IRC              INDIA                          1                1       58     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      130     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       13     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      409     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       62     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      183     472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       11     472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      244     472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       34     472
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      178    1995
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        8    1995
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1705    1995
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      104    1995
6-24 months   ki1119695-PROBIT           BELARUS                        0                0     1919   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0                1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                0    14670   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                1        9   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      874   10604
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       30   10604
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     9301   10604
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      399   10604
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     1064   17194
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1       49   17194
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0    14634   17194
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1447   17194
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      339    4510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       30    4510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     3501    4510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      640    4510


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/3fc51db8-8ef3-4504-bdab-8af62c2d8721/ecec6704-7e9b-48e6-b370-8facdb32b6c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3fc51db8-8ef3-4504-bdab-8af62c2d8721/ecec6704-7e9b-48e6-b370-8facdb32b6c4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3fc51db8-8ef3-4504-bdab-8af62c2d8721/ecec6704-7e9b-48e6-b370-8facdb32b6c4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3fc51db8-8ef3-4504-bdab-8af62c2d8721/ecec6704-7e9b-48e6-b370-8facdb32b6c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1439631   0.0598904   0.2280358
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1940989   0.1519510   0.2362468
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1063989   0.0587952   0.1540027
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1340289   0.1052256   0.1628322
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0741435   0.0382686   0.1100183
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1267621   0.0889336   0.1645906
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0424528   0.0153069   0.0695988
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0505800   0.0413259   0.0598342
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0321451   0.0218656   0.0424246
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0424398   0.0389211   0.0459585
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0812384   0.0632148   0.0992621
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0895258   0.0855040   0.0935475
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1103359   0.0738507   0.1468211
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1691273   0.1560121   0.1822426
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1000000   0.0296358   0.1703642
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.0530973   0.0291989   0.0769957
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0312500   0.0042708   0.0582292
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0462963   0.0285609   0.0640317
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0079659   0.0029263   0.0130056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0124617   0.0105181   0.0144053
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0514028   0.0363083   0.0664974
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0391114   0.0365737   0.0416491
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0440765   0.0199396   0.0682135
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0262822   0.0203415   0.0322229
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.0857143   0.0200549   0.1513737
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1705882   0.1305570   0.2106194
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0963720   0.0466482   0.1460959
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1296354   0.0992140   0.1600567
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0600382   0.0278936   0.0921828
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1274686   0.0889025   0.1660347
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0430108   0.0138471   0.0721744
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0574903   0.0467609   0.0682198
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0319527   0.0202446   0.0436607
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0412994   0.0373339   0.0452648
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0484726   0.0326135   0.0643317
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0896308   0.0846930   0.0945687
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0827117   0.0512497   0.1141737
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1544096   0.1419549   0.1668643


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1040000   0.0772164   0.1307836
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498521   0.0410826   0.0586217
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0416064   0.0382770   0.0449357
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0886534   0.0847769   0.0925300
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1643805   0.1517702   0.1769909
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120938   0.0102652   0.0139225
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393807   0.0369019   0.0418595
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0277157   0.0217808   0.0336506
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0953390   0.0688164   0.1218616
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0561404   0.0460367   0.0662440
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0404564   0.0367062   0.0442067
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0870071   0.0823429   0.0916713
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1485588   0.1367632   0.1603543


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.3482546   0.7245204   2.508957
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2596826   0.7668135   2.069343
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.7096864   0.9681061   3.019326
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1914410   0.6126664   2.316973
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3202562   0.9488621   1.837018
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1020125   0.8790394   1.381544
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5328400   1.0960446   2.143707
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.5309735   0.2303117   1.224136
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4814815   0.5761031   3.809713
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5643751   0.8153798   3.001386
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7608799   0.5640853   1.026331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.5962854   0.3348584   1.061811
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.9901961   0.8932121   4.434423
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3451551   0.7636502   2.369465
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.1231250   1.1456929   3.934440
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3366500   0.6615928   2.700503
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2925176   0.8849777   1.887733
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.8491032   1.3241726   2.582127
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.8668410   1.2661184   2.752582


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0414028   -0.0368160   0.1196215
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0221725   -0.0211405   0.0654855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0298565   -0.0010858   0.0607989
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0073993   -0.0187121   0.0335107
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0094613   -0.0004978   0.0194203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0074150   -0.0102601   0.0250901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0540446    0.0190589   0.0890303
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0388753   -0.1004926   0.0227420
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0116071   -0.0133041   0.0365183
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0041279   -0.0007998   0.0090556
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0120221   -0.0266644   0.0026201
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0163608   -0.0387844   0.0060627
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0703833    0.0065372   0.1342293
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0257778   -0.0195506   0.0711062
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0353008    0.0055255   0.0650761
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131296   -0.0150486   0.0413078
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0085038   -0.0028287   0.0198362
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0385345    0.0225408   0.0545282
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0658470    0.0347638   0.0969303


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.2233570   -0.3351534   0.5482359
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1724527   -0.2405456   0.4479570
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2870820   -0.0697285   0.5248775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1484250   -0.5741345   0.5393151
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2273995   -0.0524095   0.4328144
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0836400   -0.1390399   0.2627865
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3287773    0.0783158   0.5111776
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.6360000   -1.9871157   0.1039865
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2708333   -0.6021007   0.6681332
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3413229   -0.2169287   0.6434832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3052804   -0.7335433   0.0171824
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.5903090   -1.6261607   0.0369658
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.4508929   -0.1352628   0.7344063
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2110342   -0.2593475   0.5057225
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3702661   -0.0017872   0.6041428
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2338709   -0.4720286   0.6012620
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2101958   -0.1252227   0.4456292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4428893    0.2287624   0.5975658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4432390    0.1930404   0.6158632
