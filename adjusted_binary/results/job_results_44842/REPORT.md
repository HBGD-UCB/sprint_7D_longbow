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

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted06    dead   n_cell       n
--------------------------  -----------------------------  --------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      202     263
ki0047075b-MAL-ED           BANGLADESH                     0                   1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                   0       59     263
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     263
ki0047075b-MAL-ED           INDIA                          0                   0      171     251
ki0047075b-MAL-ED           INDIA                          0                   1        1     251
ki0047075b-MAL-ED           INDIA                          1                   0       78     251
ki0047075b-MAL-ED           INDIA                          1                   1        1     251
ki0047075b-MAL-ED           PERU                           0                   0      289     302
ki0047075b-MAL-ED           PERU                           0                   1        2     302
ki0047075b-MAL-ED           PERU                           1                   0       11     302
ki0047075b-MAL-ED           PERU                           1                   1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      280     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0       32     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      247     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       11     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     261
ki1000304-VITAMIN-A         INDIA                          0                   0     2504    2993
ki1000304-VITAMIN-A         INDIA                          0                   1       37    2993
ki1000304-VITAMIN-A         INDIA                          1                   0      433    2993
ki1000304-VITAMIN-A         INDIA                          1                   1       19    2993
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1152    1505
ki1000304b-SAS-CompFeed     INDIA                          0                   1       22    1505
ki1000304b-SAS-CompFeed     INDIA                          1                   0      317    1505
ki1000304b-SAS-CompFeed     INDIA                          1                   1       14    1505
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      338     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       74     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                   0      514     699
ki1017093b-PROVIDE          BANGLADESH                     0                   1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                   0      181     699
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2062    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      333    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396
ki1101329-Keneba            GAMBIA                         0                   0     1987    2408
ki1101329-Keneba            GAMBIA                         0                   1       40    2408
ki1101329-Keneba            GAMBIA                         1                   0      364    2408
ki1101329-Keneba            GAMBIA                         1                   1       17    2408
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0       41      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        0      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0        5      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0      46
ki1113344-GMS-Nepal         NEPAL                          0                   0      420     602
ki1113344-GMS-Nepal         NEPAL                          0                   1        4     602
ki1113344-GMS-Nepal         NEPAL                          1                   0      177     602
ki1113344-GMS-Nepal         NEPAL                          1                   1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    10576   13826
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      745   13826
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0     2216   13826
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1      289   13826
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1112    1155
ki1148112-iLiNS-DOSE        MALAWI                         0                   1       28    1155
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       13    1155
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        2    1155
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1057    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       31    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       39    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        3    1130
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    21698   26813
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      398   26813
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     4567   26813
kiGH5241-JiVitA-3           BANGLADESH                     1                   1      150   26813
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4510    5088
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       26    5088
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      544    5088
kiGH5241-JiVitA-4           BANGLADESH                     1                   1        8    5088


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
![](/tmp/a5e241e9-04f0-49af-8192-966730955800/35538ed4-85f7-443e-b0e4-a3bde26e84c3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a5e241e9-04f0-49af-8192-966730955800/35538ed4-85f7-443e-b0e4-a3bde26e84c3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a5e241e9-04f0-49af-8192-966730955800/35538ed4-85f7-443e-b0e4-a3bde26e84c3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a5e241e9-04f0-49af-8192-966730955800/35538ed4-85f7-443e-b0e4-a3bde26e84c3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0145612   0.0099029   0.0192195
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0420354   0.0235328   0.0605380
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0187394   0.0093121   0.0281666
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0422961   0.0180242   0.0665679
ki1101329-Keneba          GAMBIA       0                    NA                0.0197336   0.0136776   0.0257896
ki1101329-Keneba          GAMBIA       1                    NA                0.0446194   0.0238834   0.0653555
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0658069   0.0612394   0.0703744
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1153693   0.1028584   0.1278801
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0180123   0.0162874   0.0197372
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0317999   0.0267260   0.0368737
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0057319   0.0032662   0.0081976
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0144928   0.0025320   0.0264535


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0187103   0.0138551   0.0235655
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0239203   0.0131430   0.0346975
ki1101329-Keneba          GAMBIA       NA                   NA                0.0236711   0.0175979   0.0297443
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0747866   0.0704018   0.0791714
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0204378   0.0187099   0.0221658
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0066824   0.0041425   0.0092222


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 2.886809   1.6753248   4.974360
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.257072   1.1971719   4.255341
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.261089   1.2955436   3.946239
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.753148   1.5413547   1.994044
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.765452   1.4739874   2.114551
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.528428   0.9928276   6.439133


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0041491    0.0012462   0.0070521
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0051809   -0.0003299   0.0106917
ki1101329-Keneba          GAMBIA       0                    NA                0.0039375    0.0005003   0.0073747
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0089797    0.0065458   0.0114137
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0024255    0.0015008   0.0033503
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0009505   -0.0003851   0.0022860


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2217561    0.0630599   0.3535727
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2165909   -0.0137574   0.3945990
ki1101329-Keneba          GAMBIA       0                    NA                0.1663421    0.0150147   0.2944204
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1200713    0.0876011   0.1513859
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1186787    0.0739700   0.1612289
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1422347   -0.0701362   0.3124601
