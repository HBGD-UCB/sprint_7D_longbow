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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      245     263
ki0047075b-MAL-ED           BANGLADESH                     0                    1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                    0       16     263
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     263
ki0047075b-MAL-ED           INDIA                          0                    0      229     251
ki0047075b-MAL-ED           INDIA                          0                    1        2     251
ki0047075b-MAL-ED           INDIA                          1                    0       20     251
ki0047075b-MAL-ED           INDIA                          1                    1        0     251
ki0047075b-MAL-ED           PERU                           0                    0      299     302
ki0047075b-MAL-ED           PERU                           0                    1        2     302
ki0047075b-MAL-ED           PERU                           1                    0        1     302
ki0047075b-MAL-ED           PERU                           1                    1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      307     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0        5     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      255     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
ki1000304-VITAMIN-A         INDIA                          0                    0     2849    2993
ki1000304-VITAMIN-A         INDIA                          0                    1       48    2993
ki1000304-VITAMIN-A         INDIA                          1                    0       88    2993
ki1000304-VITAMIN-A         INDIA                          1                    1        8    2993
ki1000304b-SAS-CompFeed     INDIA                          0                    0     1379    1505
ki1000304b-SAS-CompFeed     INDIA                          0                    1       26    1505
ki1000304b-SAS-CompFeed     INDIA                          1                    0       90    1505
ki1000304b-SAS-CompFeed     INDIA                          1                    1       10    1505
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      394     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        4     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0       18     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        2     418
ki1017093b-PROVIDE          BANGLADESH                     0                    0      666     699
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                    0       29     699
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2316    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       79    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
ki1101329-Keneba            GAMBIA                         0                    0     2225    2408
ki1101329-Keneba            GAMBIA                         0                    1       49    2408
ki1101329-Keneba            GAMBIA                         1                    0      126    2408
ki1101329-Keneba            GAMBIA                         1                    1        8    2408
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0       45      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        0      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0        1      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0      46
ki1113344-GMS-Nepal         NEPAL                          0                    0      541     602
ki1113344-GMS-Nepal         NEPAL                          0                    1        5     602
ki1113344-GMS-Nepal         NEPAL                          1                    0       56     602
ki1113344-GMS-Nepal         NEPAL                          1                    1        0     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0    11971   13826
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      904   13826
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0      821   13826
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      130   13826
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1124    1155
ki1148112-iLiNS-DOSE        MALAWI                         0                    1       30    1155
ki1148112-iLiNS-DOSE        MALAWI                         1                    0        1    1155
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        0    1155
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1088    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       33    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0        8    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        1    1130
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    25212   26813
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      498   26813
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     1053   26813
kiGH5241-JiVitA-3           BANGLADESH                     1                    1       50   26813
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     4947    5088
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       31    5088
kiGH5241-JiVitA-4           BANGLADESH                     1                    0      107    5088
kiGH5241-JiVitA-4           BANGLADESH                     1                    1        3    5088


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
![](/tmp/8af0033b-2c3a-46dc-9107-143c2ce7d5ea/6323295e-5c70-4de8-b92b-e1d26292c27b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8af0033b-2c3a-46dc-9107-143c2ce7d5ea/6323295e-5c70-4de8-b92b-e1d26292c27b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8af0033b-2c3a-46dc-9107-143c2ce7d5ea/6323295e-5c70-4de8-b92b-e1d26292c27b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8af0033b-2c3a-46dc-9107-143c2ce7d5ea/6323295e-5c70-4de8-b92b-e1d26292c27b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0165689   0.0119198   0.0212179
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0833333   0.0280365   0.1386302
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0185053   0.0100266   0.0269841
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1000000   0.0395015   0.1604985
ki1101329-Keneba          GAMBIA       0                    NA                0.0215479   0.0155787   0.0275171
ki1101329-Keneba          GAMBIA       1                    NA                0.0597015   0.0195768   0.0998262
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0702136   0.0658000   0.0746272
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1366982   0.1148641   0.1585324
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0193699   0.0176879   0.0210519
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0453309   0.0325627   0.0580991


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0187103   0.0138551   0.0235655
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0239203   0.0131430   0.0346975
ki1101329-Keneba          GAMBIA       NA                   NA                0.0236711   0.0175979   0.0297443
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0747866   0.0704018   0.0791714
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0204378   0.0187099   0.0221658


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 5.029514   2.447031   10.337428
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.403846   2.856404   10.223186
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.770637   1.339286    5.731729
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.946891   1.639817    2.311468
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.340277   1.753108    3.124106


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0021415    0.0003123   0.0039706
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0054149    0.0010249   0.0098050
ki1101329-Keneba          GAMBIA       0                    NA                0.0021232   -0.0001611   0.0044075
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0045730    0.0030154   0.0061307
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0010680    0.0005362   0.0015997


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.1144534    0.0160619   0.2030060
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2263741    0.0757103   0.3524789
ki1101329-Keneba          GAMBIA       0                    NA                0.0896943   -0.0091558   0.1788618
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0611478    0.0403562   0.0814890
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0522537    0.0265836   0.0772468
