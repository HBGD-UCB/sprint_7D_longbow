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

**Intervention Variable:** ever_swasted024

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted024    dead   n_cell       n
--------------------------  -----------------------------  ----------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      240     263
ki0047075b-MAL-ED           BANGLADESH                     0                     1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                     0       21     263
ki0047075b-MAL-ED           BANGLADESH                     1                     1        0     263
ki0047075b-MAL-ED           INDIA                          0                     0      225     251
ki0047075b-MAL-ED           INDIA                          0                     1        2     251
ki0047075b-MAL-ED           INDIA                          1                     0       24     251
ki0047075b-MAL-ED           INDIA                          1                     1        0     251
ki0047075b-MAL-ED           PERU                           0                     0      297     302
ki0047075b-MAL-ED           PERU                           0                     1        2     302
ki0047075b-MAL-ED           PERU                           1                     0        3     302
ki0047075b-MAL-ED           PERU                           1                     1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      298     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0       14     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      251     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        7     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0     261
ki1000304-VITAMIN-A         INDIA                          0                     0     3480    3803
ki1000304-VITAMIN-A         INDIA                          0                     1       48    3803
ki1000304-VITAMIN-A         INDIA                          1                     0      265    3803
ki1000304-VITAMIN-A         INDIA                          1                     1       10    3803
ki1000304b-SAS-CompFeed     INDIA                          0                     0     1267    1513
ki1000304b-SAS-CompFeed     INDIA                          0                     1       23    1513
ki1000304b-SAS-CompFeed     INDIA                          1                     0      209    1513
ki1000304b-SAS-CompFeed     INDIA                          1                     1       14    1513
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0      344     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        3     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0       68     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        3     418
ki1017093b-PROVIDE          BANGLADESH                     0                     0      653     699
ki1017093b-PROVIDE          BANGLADESH                     0                     1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                     0       42     699
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2237    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      158    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396
ki1101329-Keneba            GAMBIA                         0                     0     2404    2884
ki1101329-Keneba            GAMBIA                         0                     1       47    2884
ki1101329-Keneba            GAMBIA                         1                     0      418    2884
ki1101329-Keneba            GAMBIA                         1                     1       15    2884
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0     6821    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1       35    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0      297    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        4    7157
ki1113344-GMS-Nepal         NEPAL                          0                     0      442     602
ki1113344-GMS-Nepal         NEPAL                          0                     1        4     602
ki1113344-GMS-Nepal         NEPAL                          1                     0      155     602
ki1113344-GMS-Nepal         NEPAL                          1                     1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0    11786   13917
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      856   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0     1091   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1      184   13917
ki1148112-iLiNS-DOSE        MALAWI                         0                     0     1784    1854
ki1148112-iLiNS-DOSE        MALAWI                         0                     1       50    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                     0       19    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                     1        1    1854
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1136    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       32    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       24    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        3    1195
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    24779   26910
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      494   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     1578   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                     1       59   26910
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     5059    5434
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       34    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      334    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                     1        7    5434


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
![](/tmp/ec07c0d9-791a-48ec-af69-b74cb13873fe/f4452548-e2ea-4641-9387-81527289ba04/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ec07c0d9-791a-48ec-af69-b74cb13873fe/f4452548-e2ea-4641-9387-81527289ba04/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ec07c0d9-791a-48ec-af69-b74cb13873fe/f4452548-e2ea-4641-9387-81527289ba04/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ec07c0d9-791a-48ec-af69-b74cb13873fe/f4452548-e2ea-4641-9387-81527289ba04/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0136054   0.0097823   0.0174286
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0363636   0.0142363   0.0584910
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0178295   0.0092178   0.0264411
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0627803   0.0176437   0.1079169
ki1101329-Keneba          GAMBIA       0                    NA                0.0191758   0.0137455   0.0246062
ki1101329-Keneba          GAMBIA       1                    NA                0.0346420   0.0174144   0.0518697
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0677108   0.0633309   0.0720907
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1443137   0.1250243   0.1636032
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0195466   0.0178420   0.0212511
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0360415   0.0264985   0.0455845
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0066758   0.0044001   0.0089516
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0205279   0.0028310   0.0382247


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0152511   0.0113557   0.0191465
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba          GAMBIA       NA                   NA                0.0214979   0.0162037   0.0267922
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0747287   0.0703599   0.0790976
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0205500   0.0188220   0.0222780
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0075451   0.0051295   0.0099606


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 2.672727   1.367314   5.224455
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.521154   1.624720   7.631178
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.806545   1.019320   3.201747
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.131325   1.837216   2.472516
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.843882   1.401232   2.426366
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.074952   1.220304   7.748340


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0016457    0.0000111   0.0032802
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0066253   -0.0004283   0.0136788
ki1101329-Keneba          GAMBIA       0                    NA                0.0023221   -0.0003974   0.0050415
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0070179    0.0051689   0.0088669
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0010034    0.0004149   0.0015920
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008693   -0.0002516   0.0019901


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.1079052   -0.0020309   0.2057799
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2709197   -0.0015692   0.4692748
ki1101329-Keneba          GAMBIA       0                    NA                0.1080138   -0.0247695   0.2235919
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0939122    0.0693685   0.1178087
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0488287    0.0203435   0.0764857
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1152083   -0.0363057   0.2445701
