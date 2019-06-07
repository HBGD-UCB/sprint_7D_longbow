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

**Intervention Variable:** ever_co06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_co06    dead   n_cell       n
--------------------------  -----------------------------  ----------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0               0      252     263
ki0047075b-MAL-ED           BANGLADESH                     0               1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1               0        9     263
ki0047075b-MAL-ED           BANGLADESH                     1               1        0     263
ki0047075b-MAL-ED           INDIA                          0               0      231     251
ki0047075b-MAL-ED           INDIA                          0               1        2     251
ki0047075b-MAL-ED           INDIA                          1               0       18     251
ki0047075b-MAL-ED           INDIA                          1               1        0     251
ki0047075b-MAL-ED           PERU                           0               0      298     302
ki0047075b-MAL-ED           PERU                           0               1        2     302
ki0047075b-MAL-ED           PERU                           1               0        2     302
ki0047075b-MAL-ED           PERU                           1               1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0               0      307     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0               1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1               0        5     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1               1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      254     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        4     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     261
ki1000304-VITAMIN-A         INDIA                          0               0     2823    2995
ki1000304-VITAMIN-A         INDIA                          0               1       44    2995
ki1000304-VITAMIN-A         INDIA                          1               0      116    2995
ki1000304-VITAMIN-A         INDIA                          1               1       12    2995
ki1000304b-SAS-CompFeed     INDIA                          0               0     1372    1504
ki1000304b-SAS-CompFeed     INDIA                          0               1       26    1504
ki1000304b-SAS-CompFeed     INDIA                          1               0       96    1504
ki1000304b-SAS-CompFeed     INDIA                          1               1       10    1504
ki1000304b-SAS-FoodSuppl    INDIA                          0               0      381     416
ki1000304b-SAS-FoodSuppl    INDIA                          0               1        3     416
ki1000304b-SAS-FoodSuppl    INDIA                          1               0       29     416
ki1000304b-SAS-FoodSuppl    INDIA                          1               1        3     416
ki1017093b-PROVIDE          BANGLADESH                     0               0      665     699
ki1017093b-PROVIDE          BANGLADESH                     0               1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1               0       30     699
ki1017093b-PROVIDE          BANGLADESH                     1               1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               0     2376    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               0       19    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               1        0    2396
ki1101329-Keneba            GAMBIA                         0               0     2293    2407
ki1101329-Keneba            GAMBIA                         0               1       45    2407
ki1101329-Keneba            GAMBIA                         1               0       57    2407
ki1101329-Keneba            GAMBIA                         1               1       12    2407
ki1112895-Burkina Faso Zn   BURKINA FASO                   0               0       43      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   0               1        0      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1               0        3      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1               1        0      46
ki1113344-GMS-Nepal         NEPAL                          0               0      574     602
ki1113344-GMS-Nepal         NEPAL                          0               1        4     602
ki1113344-GMS-Nepal         NEPAL                          1               0       23     602
ki1113344-GMS-Nepal         NEPAL                          1               1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0               0    12686   13829
ki1126311-ZVITAMBO          ZIMBABWE                       0               1      971   13829
ki1126311-ZVITAMBO          ZIMBABWE                       1               0      113   13829
ki1126311-ZVITAMBO          ZIMBABWE                       1               1       59   13829
ki1148112-iLiNS-DOSE        MALAWI                         0               0     1117    1154
ki1148112-iLiNS-DOSE        MALAWI                         0               1       28    1154
ki1148112-iLiNS-DOSE        MALAWI                         1               0        7    1154
ki1148112-iLiNS-DOSE        MALAWI                         1               1        2    1154
ki1148112-iLiNS-DYAD-M      MALAWI                         0               0     1092    1133
ki1148112-iLiNS-DYAD-M      MALAWI                         0               1       31    1133
ki1148112-iLiNS-DYAD-M      MALAWI                         1               0        7    1133
ki1148112-iLiNS-DYAD-M      MALAWI                         1               1        3    1133
kiGH5241-JiVitA-3           BANGLADESH                     0               0    25248   26772
kiGH5241-JiVitA-3           BANGLADESH                     0               1      463   26772
kiGH5241-JiVitA-3           BANGLADESH                     1               0      983   26772
kiGH5241-JiVitA-3           BANGLADESH                     1               1       78   26772
kiGH5241-JiVitA-4           BANGLADESH                     0               0     4917    5087
kiGH5241-JiVitA-4           BANGLADESH                     0               1       32    5087
kiGH5241-JiVitA-4           BANGLADESH                     1               0      136    5087
kiGH5241-JiVitA-4           BANGLADESH                     1               1        2    5087


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
![](/tmp/8bf27a4f-cee1-4428-af02-c3386dc0102e/44246afc-d76e-4b67-b37d-6cf66d3fd100/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8bf27a4f-cee1-4428-af02-c3386dc0102e/44246afc-d76e-4b67-b37d-6cf66d3fd100/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8bf27a4f-cee1-4428-af02-c3386dc0102e/44246afc-d76e-4b67-b37d-6cf66d3fd100/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8bf27a4f-cee1-4428-af02-c3386dc0102e/44246afc-d76e-4b67-b37d-6cf66d3fd100/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0153471   0.0108466   0.0198476
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0937500   0.0432461   0.1442539
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0185980   0.0089429   0.0282531
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0943396   0.0530969   0.1355824
ki1101329-Keneba          GAMBIA       0                    NA                0.0192472   0.0136769   0.0248175
ki1101329-Keneba          GAMBIA       1                    NA                0.1739130   0.0844605   0.2633656
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0710991   0.0667333   0.0754649
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.3430233   0.3077266   0.3783199
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0180079   0.0163603   0.0196554
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0735156   0.0572801   0.0897510


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0186978   0.0138458   0.0235498
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0239362   0.0131581   0.0347143
ki1101329-Keneba          GAMBIA       NA                   NA                0.0236809   0.0176052   0.0297566
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0744812   0.0701051   0.0788572
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0202077   0.0184972   0.0219181


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 6.108665   3.308038   11.280337
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.072569   3.085634    8.338954
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 9.035749   5.007847   16.303365
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 4.824581   4.279758    5.438763
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 4.082415   3.211106    5.190148


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0033508   0.0011106   0.0055910
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0053382   0.0017879   0.0088884
ki1101329-Keneba          GAMBIA       0                    NA                0.0044337   0.0016652   0.0072022
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0033821   0.0023609   0.0044033
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0021998   0.0015356   0.0028641


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.1792067   0.0606676   0.2827868
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2230170   0.0754882   0.3470039
ki1101329-Keneba          GAMBIA       0                    NA                0.1872270   0.0728538   0.2874912
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0454087   0.0316786   0.0589441
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1088607   0.0768089   0.1397998
