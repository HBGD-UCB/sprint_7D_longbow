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

**Intervention Variable:** ever_swasted06_noBW

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06_noBW    dead   n_cell       n
--------------------------  -----------------------------  --------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      253     262
ki0047075b-MAL-ED           BANGLADESH                     0                         1        2     262
ki0047075b-MAL-ED           BANGLADESH                     1                         0        7     262
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     262
ki0047075b-MAL-ED           INDIA                          0                         0      238     245
ki0047075b-MAL-ED           INDIA                          0                         1        2     245
ki0047075b-MAL-ED           INDIA                          1                         0        5     245
ki0047075b-MAL-ED           INDIA                          1                         1        0     245
ki0047075b-MAL-ED           PERU                           0                         0      299     302
ki0047075b-MAL-ED           PERU                           0                         1        2     302
ki0047075b-MAL-ED           PERU                           1                         0        1     302
ki0047075b-MAL-ED           PERU                           1                         1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      304     307
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     307
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0        3     307
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     307
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      256     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        2     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     261
ki1000304-VITAMIN-A         INDIA                          0                         0     2549    2588
ki1000304-VITAMIN-A         INDIA                          0                         1       37    2588
ki1000304-VITAMIN-A         INDIA                          1                         0        2    2588
ki1000304-VITAMIN-A         INDIA                          1                         1        0    2588
ki1000304b-SAS-CompFeed     INDIA                          0                         0     1401    1473
ki1000304b-SAS-CompFeed     INDIA                          0                         1       26    1473
ki1000304b-SAS-CompFeed     INDIA                          1                         0       40    1473
ki1000304b-SAS-CompFeed     INDIA                          1                         1        6    1473
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      339     341
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        2     341
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0        0     341
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        0     341
ki1017093b-PROVIDE          BANGLADESH                     0                         0      672     682
ki1017093b-PROVIDE          BANGLADESH                     0                         1        4     682
ki1017093b-PROVIDE          BANGLADESH                     1                         0        6     682
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     682
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2333    2376
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2376
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       42    2376
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2376
ki1101329-Keneba            GAMBIA                         0                         0     2236    2381
ki1101329-Keneba            GAMBIA                         0                         1       51    2381
ki1101329-Keneba            GAMBIA                         1                         0       89    2381
ki1101329-Keneba            GAMBIA                         1                         1        5    2381
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0       41      41
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1        0      41
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0        0      41
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        0      41
ki1113344-GMS-Nepal         NEPAL                          0                         0      546     567
ki1113344-GMS-Nepal         NEPAL                          0                         1        4     567
ki1113344-GMS-Nepal         NEPAL                          1                         0       17     567
ki1113344-GMS-Nepal         NEPAL                          1                         1        0     567
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0    12307   13342
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      904   13342
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0      108   13342
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1       23   13342
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1112    1140
ki1148112-iLiNS-DOSE        MALAWI                         0                         1       28    1140
ki1148112-iLiNS-DOSE        MALAWI                         1                         0        0    1140
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        0    1140
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1059    1090
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       31    1090
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0        0    1090
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        0    1090
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    25298   26191
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      461   26191
kiGH5241-JiVitA-3           BANGLADESH                     1                         0      417   26191
kiGH5241-JiVitA-3           BANGLADESH                     1                         1       15   26191
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     4897    4949
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       31    4949
kiGH5241-JiVitA-4           BANGLADESH                     1                         0       20    4949
kiGH5241-JiVitA-4           BANGLADESH                     1                         1        1    4949


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
![](/tmp/814ea0f9-3aed-4a15-81a5-0bf108f53e04/60d132aa-75a6-4631-8d61-fd83f2bacaee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/814ea0f9-3aed-4a15-81a5-0bf108f53e04/60d132aa-75a6-4631-8d61-fd83f2bacaee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/814ea0f9-3aed-4a15-81a5-0bf108f53e04/60d132aa-75a6-4631-8d61-fd83f2bacaee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/814ea0f9-3aed-4a15-81a5-0bf108f53e04/60d132aa-75a6-4631-8d61-fd83f2bacaee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0182200   0.0089631   0.0274770
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1304348   0.0352161   0.2256534
ki1101329-Keneba          GAMBIA       0                    NA                0.0223000   0.0162471   0.0283528
ki1101329-Keneba          GAMBIA       1                    NA                0.0531915   0.0078154   0.0985676
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0684278   0.0640553   0.0728003
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1755725   0.1499841   0.2011609
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0178967   0.0162773   0.0195160
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0347222   0.0226850   0.0467595


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0217244   0.0135627   0.0298860
ki1101329-Keneba          GAMBIA       NA                   NA                0.0235195   0.0174311   0.0296080
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0694798   0.0651652   0.0737945
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0181742   0.0165563   0.0197921


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 7.158863   2.590290   19.785165
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.385273   0.974434    5.838803
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.565806   2.188327    3.008399
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.940151   1.360040    2.767703


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0035043    0.0009152   0.0060935
ki1101329-Keneba          GAMBIA       0                    NA                0.0012196   -0.0006038   0.0030429
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0010520    0.0003787   0.0017253
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0002775   -0.0000252   0.0005803


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1613087   -0.0013692   0.2975587
ki1101329-Keneba          GAMBIA       0                    NA                0.0518536   -0.0277182   0.1252646
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0151413    0.0053490   0.0248371
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0152703   -0.0014627   0.0317236
