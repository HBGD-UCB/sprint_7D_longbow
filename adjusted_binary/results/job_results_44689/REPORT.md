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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country        cleanck    wast_rec90d   n_cell     n
------------  -------------------------  -------------  --------  ------------  -------  ----
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       38   326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       81   326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       82   326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1      125   326
0-24 months   ki1000108-IRC              INDIA          1                    0       84   383
0-24 months   ki1000108-IRC              INDIA          1                    1      135   383
0-24 months   ki1000108-IRC              INDIA          0                    0       72   383
0-24 months   ki1000108-IRC              INDIA          0                    1       92   383
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       90   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1      144   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       38   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1       35   307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       44   216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       69   216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       37   216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       66   216
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        4   509
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        3   509
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      238   509
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      264   509
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0       21   203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    1       58   203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0       45   203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    1       79   203
0-6 months    ki1000108-IRC              INDIA          1                    0       52   232
0-6 months    ki1000108-IRC              INDIA          1                    1       82   232
0-6 months    ki1000108-IRC              INDIA          0                    0       33   232
0-6 months    ki1000108-IRC              INDIA          0                    1       65   232
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    0       26   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    1      117   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    0       13   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    1       28   184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    0        8   139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    1       61   139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    0        5   139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    1       65   139
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    0        2   163
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    1        2   163
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    0       68   163
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    1       91   163
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       17   123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       23   123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       37   123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1       46   123
6-24 months   ki1000108-IRC              INDIA          1                    0       32   151
6-24 months   ki1000108-IRC              INDIA          1                    1       53   151
6-24 months   ki1000108-IRC              INDIA          0                    0       39   151
6-24 months   ki1000108-IRC              INDIA          0                    1       27   151
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       64   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1       27   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       25   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1        7   123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       36    77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1        8    77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       32    77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1        1    77
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        2   346
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        1   346
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      170   346
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      173   346


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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
![](/tmp/9c62431e-234e-45d6-8029-c7e64be3a58b/307762c2-dc4e-4ef4-a8d9-23336b6d320b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9c62431e-234e-45d6-8029-c7e64be3a58b/307762c2-dc4e-4ef4-a8d9-23336b6d320b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9c62431e-234e-45d6-8029-c7e64be3a58b/307762c2-dc4e-4ef4-a8d9-23336b6d320b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9c62431e-234e-45d6-8029-c7e64be3a58b/307762c2-dc4e-4ef4-a8d9-23336b6d320b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6806723   0.5853923   0.7759522
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6038647   0.5354871   0.6722424
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6164384   0.5458049   0.6870719
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.5609756   0.4816525   0.6402987
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.6153846   0.5504960   0.6802732
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4794521   0.3662227   0.5926814
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.6106195   0.5162692   0.7049697
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.6407767   0.5529348   0.7286186
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7341772   0.6361414   0.8322130
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6370968   0.5507075   0.7234861
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.6119403   0.5287955   0.6950851
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.6632653   0.5662486   0.7602821
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8181818   0.7555916   0.8807720
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.6829268   0.5421588   0.8236949
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8840580   0.8071326   0.9609833
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.9285714   0.8672033   0.9899396
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5750000   0.3977365   0.7522635
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5542169   0.4466172   0.6618165
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.6235294   0.5196695   0.7273893
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.4090909   0.2772063   0.5409755
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2967033   0.2039707   0.3894359
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2187500   0.0526770   0.3848230


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5926893   0.5398764   0.6455022
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.6250000   0.5603522   0.6896478
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.6336207   0.5704020   0.6968394
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.9064748   0.8572209   0.9557287
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5298013   0.4450066   0.6145960
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.8871593   0.7409936   1.0621571
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 0.9100271   0.7586021   1.0916781
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.7791096   0.6015012   1.0091614
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0493879   0.8531751   1.2907257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.8677697   0.7174116   1.0496406
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 1.0838726   0.8877090   1.3233838
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.8346883   0.6699428   1.0399464
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0503513   0.9416311   1.1716243
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.9638554   0.6696031   1.3874149
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 0.6560892   0.4564229   0.9431014
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.7372685   0.3243804   1.6757021


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0487704   -0.1232520    0.0257112
0-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0237491   -0.0692802    0.0217820
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0323227   -0.0638614   -0.0007841
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0143805   -0.0474651    0.0762261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0593004   -0.1393943    0.0207935
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0216804   -0.0323490    0.0757098
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0301383   -0.0653493    0.0050726
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0224168   -0.0272673    0.0721010
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0140244   -0.1539761    0.1259273
6-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0937281   -0.1701210   -0.0173351
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0202805   -0.0703437    0.0297826


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0771804   -0.2015975    0.0343542
0-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0400700   -0.1197874    0.0339723
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0554362   -0.1112345   -0.0024397
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0230088   -0.0814557    0.1173825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0878684   -0.2146106    0.0256485
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0342167   -0.0550050    0.1158929
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0382445   -0.0845234    0.0060595
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0247297   -0.0319638    0.0783086
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0250000   -0.3068451    0.1960600
6-24 months   ki1000108-IRC              INDIA        1                    NA                -0.1769118   -0.3387902   -0.0346067
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0733678   -0.2738040    0.0955293
