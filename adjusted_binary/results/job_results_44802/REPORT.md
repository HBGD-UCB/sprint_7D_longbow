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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        nchldlt5    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ---------  ----------  -------  -----
0-24 months   ki1000108-IRC              INDIA                          1                   0       79    291
0-24 months   ki1000108-IRC              INDIA                          1                   1       10    291
0-24 months   ki1000108-IRC              INDIA                          2+                  0      176    291
0-24 months   ki1000108-IRC              INDIA                          2+                  1       26    291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      459    479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10    479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0        9    479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        1    479
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      504    525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       16    525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0        5    525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        0    525
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440   1546
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38   1546
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0       64   1546
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1        4   1546
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      337    399
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4    399
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0       58    399
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        0    399
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     4677   5139
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      293   5139
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0      156   5139
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1       13   5139
0-6 months    ki1000108-IRC              INDIA                          1                   0       69    284
0-6 months    ki1000108-IRC              INDIA                          1                   1       16    284
0-6 months    ki1000108-IRC              INDIA                          2+                  0      171    284
0-6 months    ki1000108-IRC              INDIA                          2+                  1       28    284
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      458    477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        9    477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  0        9    477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  1        1    477
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      193    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        4    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0        1    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        0    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1372   1472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36   1472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0       61   1472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1        3   1472
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0       10     13
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1        1     13
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  0        1     13
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  1        1     13
6-24 months   ki1000108-IRC              INDIA                          1                   0       79    291
6-24 months   ki1000108-IRC              INDIA                          1                   1       10    291
6-24 months   ki1000108-IRC              INDIA                          2+                  0      176    291
6-24 months   ki1000108-IRC              INDIA                          2+                  1       26    291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      459    479
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10    479
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0        9    479
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        1    479
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      504    525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       16    525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0        5    525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        0    525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440   1546
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38   1546
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0       64   1546
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1        4   1546
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      337    399
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4    399
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0       58    399
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        0    399
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     4677   5139
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      293   5139
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0      156   5139
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1       13   5139


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/c0147730-c11d-4c19-b2c0-c70c16e90516/b28bf4d2-00b1-444e-9ea5-48da9e335ef6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c0147730-c11d-4c19-b2c0-c70c16e90516/b28bf4d2-00b1-444e-9ea5-48da9e335ef6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c0147730-c11d-4c19-b2c0-c70c16e90516/b28bf4d2-00b1-444e-9ea5-48da9e335ef6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c0147730-c11d-4c19-b2c0-c70c16e90516/b28bf4d2-00b1-444e-9ea5-48da9e335ef6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC       INDIA        1                    NA                0.1123596   0.0466355   0.1780836
0-24 months   ki1000108-IRC       INDIA        2+                   NA                0.1287129   0.0824522   0.1749735
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0589537   0.0514201   0.0664874
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0769231   0.0361570   0.1176892
0-6 months    ki1000108-IRC       INDIA        1                    NA                0.1882353   0.1049880   0.2714826
0-6 months    ki1000108-IRC       INDIA        2+                   NA                0.1407035   0.0923073   0.1890997
6-24 months   ki1000108-IRC       INDIA        1                    NA                0.1123596   0.0466355   0.1780836
6-24 months   ki1000108-IRC       INDIA        2+                   NA                0.1287129   0.0824522   0.1749735
6-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0589537   0.0514201   0.0664874
6-24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0769231   0.0361570   0.1176892


### Parameter: E(Y)


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC       INDIA        NA                   NA                0.1237113   0.0858167   0.1616060
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0595447   0.0521149   0.0669744
0-6 months    ki1000108-IRC       INDIA        NA                   NA                0.1549296   0.1127727   0.1970865
6-24 months   ki1000108-IRC       INDIA        NA                   NA                0.1237113   0.0858167   0.1616060
6-24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0595447   0.0521149   0.0669744


### Parameter: RR


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC       INDIA        2+                   1                 1.1455446   0.5765704   2.275997
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 1.3048044   0.7584194   2.244819
0-6 months    ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC       INDIA        2+                   1                 0.7474874   0.4268596   1.308949
6-24 months   ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC       INDIA        2+                   1                 1.1455446   0.5765704   2.275997
6-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 1.3048044   0.7584194   2.244819


### Parameter: PAR


agecat        studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC       INDIA        1                    NA                 0.0113518   -0.0444460   0.0671496
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0005909   -0.0007652   0.0019471
0-6 months    ki1000108-IRC       INDIA        1                    NA                -0.0333057   -0.1008262   0.0342147
6-24 months   ki1000108-IRC       INDIA        1                    NA                 0.0113518   -0.0444460   0.0671496
6-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0005909   -0.0007652   0.0019471


### Parameter: PAF


agecat        studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC       INDIA        1                    NA                 0.0917603   -0.4912812   0.4468519
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0099243   -0.0131316   0.0324554
0-6 months    ki1000108-IRC       INDIA        1                    NA                -0.2149733   -0.7360775   0.1497154
6-24 months   ki1000108-IRC       INDIA        1                    NA                 0.0917603   -0.4912812   0.4468519
6-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0099243   -0.0131316   0.0324554
