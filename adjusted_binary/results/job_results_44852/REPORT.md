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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_wasted06_noBW

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted06_noBW    dead   n_cell       n
--------------------------  -----------------------------  -------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      241     262
ki0047075b-MAL-ED           BANGLADESH                     0                        1        2     262
ki0047075b-MAL-ED           BANGLADESH                     1                        0       19     262
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     262
ki0047075b-MAL-ED           INDIA                          0                        0      205     245
ki0047075b-MAL-ED           INDIA                          0                        1        2     245
ki0047075b-MAL-ED           INDIA                          1                        0       38     245
ki0047075b-MAL-ED           INDIA                          1                        1        0     245
ki0047075b-MAL-ED           PERU                           0                        0      295     302
ki0047075b-MAL-ED           PERU                           0                        1        2     302
ki0047075b-MAL-ED           PERU                           1                        0        5     302
ki0047075b-MAL-ED           PERU                           1                        1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      295     307
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     307
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       12     307
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     307
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      250     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        8     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     261
ki1000304-VITAMIN-A         INDIA                          0                        0     2528    2588
ki1000304-VITAMIN-A         INDIA                          0                        1       37    2588
ki1000304-VITAMIN-A         INDIA                          1                        0       23    2588
ki1000304-VITAMIN-A         INDIA                          1                        1        0    2588
ki1000304b-SAS-CompFeed     INDIA                          0                        0     1265    1473
ki1000304b-SAS-CompFeed     INDIA                          0                        1       23    1473
ki1000304b-SAS-CompFeed     INDIA                          1                        0      176    1473
ki1000304b-SAS-CompFeed     INDIA                          1                        1        9    1473
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      339     341
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        2     341
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0        0     341
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        0     341
ki1017093b-PROVIDE          BANGLADESH                     0                        0      642     682
ki1017093b-PROVIDE          BANGLADESH                     0                        1        4     682
ki1017093b-PROVIDE          BANGLADESH                     1                        0       36     682
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     682
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2171    2376
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2376
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      204    2376
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2376
ki1101329-Keneba            GAMBIA                         0                        0     2040    2381
ki1101329-Keneba            GAMBIA                         0                        1       45    2381
ki1101329-Keneba            GAMBIA                         1                        0      285    2381
ki1101329-Keneba            GAMBIA                         1                        1       11    2381
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0       41      41
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        0      41
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0        0      41
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0      41
ki1113344-GMS-Nepal         NEPAL                          0                        0      482     567
ki1113344-GMS-Nepal         NEPAL                          0                        1        4     567
ki1113344-GMS-Nepal         NEPAL                          1                        0       81     567
ki1113344-GMS-Nepal         NEPAL                          1                        1        0     567
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    12049   13342
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      867   13342
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0      366   13342
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1       60   13342
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1112    1140
ki1148112-iLiNS-DOSE        MALAWI                         0                        1       28    1140
ki1148112-iLiNS-DOSE        MALAWI                         1                        0        0    1140
ki1148112-iLiNS-DOSE        MALAWI                         1                        1        0    1140
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0     1058    1090
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       31    1090
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0        1    1090
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1        0    1090
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    23895   26191
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      427   26191
kiGH5241-JiVitA-3           BANGLADESH                     1                        0     1820   26191
kiGH5241-JiVitA-3           BANGLADESH                     1                        1       49   26191
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     4793    4949
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       29    4949
kiGH5241-JiVitA-4           BANGLADESH                     1                        0      124    4949
kiGH5241-JiVitA-4           BANGLADESH                     1                        1        3    4949


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/3406d5cf-adc5-4e4e-9956-36398835c192/200a9faf-a828-4513-917c-12398a50f371/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3406d5cf-adc5-4e4e-9956-36398835c192/200a9faf-a828-4513-917c-12398a50f371/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3406d5cf-adc5-4e4e-9956-36398835c192/200a9faf-a828-4513-917c-12398a50f371/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3406d5cf-adc5-4e4e-9956-36398835c192/200a9faf-a828-4513-917c-12398a50f371/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0178571   0.0085714   0.0271429
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0486486   0.0231136   0.0741837
ki1101329-Keneba          GAMBIA       0                    NA                0.0215827   0.0153439   0.0278215
ki1101329-Keneba          GAMBIA       1                    NA                0.0371622   0.0156085   0.0587158
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0671260   0.0628103   0.0714418
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1408451   0.1078107   0.1738794
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0175561   0.0159383   0.0191740
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0262172   0.0189275   0.0335070


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0217244   0.0135627   0.0298860
ki1101329-Keneba          GAMBIA       NA                   NA                0.0235195   0.0174311   0.0296080
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0694798   0.0651652   0.0737945
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0181742   0.0165563   0.0197921


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.724324   1.2422773   5.974465
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.721847   0.9006537   3.291783
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.098218   1.6452491   2.675898
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.493338   1.1197576   1.991555


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0038672    0.0003615   0.0073729
ki1101329-Keneba          GAMBIA       0                    NA                0.0019368   -0.0008603   0.0047339
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0023538    0.0012676   0.0034400
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0006181    0.0000915   0.0011446


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1780134   -0.0262276   0.3416061
ki1101329-Keneba          GAMBIA       0                    NA                0.0823484   -0.0425368   0.1922736
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0338774    0.0182401   0.0492655
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0340076    0.0049414   0.0622248
