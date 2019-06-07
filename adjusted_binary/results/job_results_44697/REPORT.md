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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        predfeed36    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       25    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       44    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       19    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       34    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       17     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        2    177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1       10    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       68    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       97    177
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        5     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       19     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       68     93
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0        1     32
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1        5     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0        5     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1       21     32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       13     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       65     78
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       37     45
0-24 months   ki1000109-EE               PAKISTAN                       1                       0       80    255
0-24 months   ki1000109-EE               PAKISTAN                       1                       1       66    255
0-24 months   ki1000109-EE               PAKISTAN                       0                       0       68    255
0-24 months   ki1000109-EE               PAKISTAN                       0                       1       41    255
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     27
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     27
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25     27
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        2     27
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      186    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      218    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       49    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       53    506
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1193   2898
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      931   2898
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      467   2898
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      307   2898
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      272    485
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      112    485
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0       75    485
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       26    485
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0        5     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1       23     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0        7     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       25     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0        1     82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        3     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0       24     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       54     82
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0        9     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       32     43
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1        3     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1        8     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       11     12
0-6 months    ki1000109-EE               PAKISTAN                       1                       0       21    107
0-6 months    ki1000109-EE               PAKISTAN                       1                       1       38    107
0-6 months    ki1000109-EE               PAKISTAN                       0                       0       25    107
0-6 months    ki1000109-EE               PAKISTAN                       0                       1       23    107
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       12     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     12
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0       51    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1       77    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0       14    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       21    163
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0      353   1760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      931   1760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      169   1760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      307   1760
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       0       31    133
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       67    133
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       0       20    133
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       15    133
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       21     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       12     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1        9     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        1     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        7     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       44     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       43     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        3     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       36     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0        1     21
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1        2     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0        5     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       13     21
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       41     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26     33
6-24 months   ki1000109-EE               PAKISTAN                       1                       0       59    148
6-24 months   ki1000109-EE               PAKISTAN                       1                       1       28    148
6-24 months   ki1000109-EE               PAKISTAN                       0                       0       43    148
6-24 months   ki1000109-EE               PAKISTAN                       0                       1       18    148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     15
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     15
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       13     15
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        2     15
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      135    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      141    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       35    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       32    343
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0      840   1138
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1        0   1138
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      298   1138
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1        0   1138
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      241    352
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       45    352
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0       55    352
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       11    352


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/b208c960-58ad-4585-abc5-a34c3af9ba92/77e687cd-d46c-4754-9b06-97d17f01ba04/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b208c960-58ad-4585-abc5-a34c3af9ba92/77e687cd-d46c-4754-9b06-97d17f01ba04/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b208c960-58ad-4585-abc5-a34c3af9ba92/77e687cd-d46c-4754-9b06-97d17f01ba04/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b208c960-58ad-4585-abc5-a34c3af9ba92/77e687cd-d46c-4754-9b06-97d17f01ba04/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6376812   0.5346516   0.7407107
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6415094   0.4947153   0.7883035
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.4520548   0.3633123   0.5407973
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3761468   0.2803097   0.4719839
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5396040   0.4864787   0.5927292
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5196078   0.4155941   0.6236215
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4383239   0.4172671   0.4593807
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3966408   0.3622548   0.4310268
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2916667   0.2451644   0.3381689
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2574257   0.1698048   0.3450467
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8214286   0.6823152   0.9605419
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7812500   0.6381241   0.9243759
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.6440678   0.5183967   0.7697389
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4791667   0.3368869   0.6214464
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6015625   0.5163730   0.6867520
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6000000   0.4351707   0.7648293
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7250779   0.7006624   0.7494934
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6449580   0.6019330   0.6879829
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6836735   0.5912534   0.7760935
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4285714   0.2640034   0.5931395
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5121951   0.3484618   0.6759284
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4285714   0.2258750   0.6312678
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3218391   0.2226817   0.4209965
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2950820   0.1783533   0.4118106
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5108696   0.4455959   0.5761433
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4776119   0.3548655   0.6003584
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1573427   0.1162589   0.1984264
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1666667   0.0754870   0.2578464


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6393443   0.5530901   0.7255985
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4196078   0.3541827   0.4850330
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5355731   0.4882587   0.5828875
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4271912   0.4092161   0.4451662
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2845361   0.2434253   0.3256469
0-6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8000000   0.6995926   0.9004074
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5700935   0.4742263   0.6659606
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6012270   0.5255442   0.6769098
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.7034091   0.6820676   0.7247506
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.6165414   0.5335942   0.6994885
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3108108   0.2352987   0.3863229
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1590909   0.1215825   0.1965993


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0060034   0.7599667   1.3316937
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.8320823   0.6031089   1.1479866
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9629430   0.7703594   1.2036709
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9049035   0.8195160   0.9991876
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.8826025   0.6060595   1.2853313
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9510870   0.7410793   1.2206068
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 0.7439693   0.5214774   1.0613890
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9974026   0.7322240   1.3586170
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8895017   0.8254551   0.9585176
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.6268657   0.4172311   0.9418296
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8367347   0.4727681   1.4809056
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9168618   0.5550856   1.5144252
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9349000   0.7016114   1.2457580
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0592593   0.5777284   1.9421412


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0016631   -0.0763770    0.0797032
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0324470   -0.0888367    0.0239428
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0040308   -0.0276360    0.0195743
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0111328   -0.0219319   -0.0003336
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0071306   -0.0278677    0.0136065
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0214286   -0.1279114    0.0850542
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0739743   -0.1610992    0.0131505
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0003355   -0.0401761    0.0395051
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0216688   -0.0351510   -0.0081866
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0671321   -0.1203700   -0.0138942
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0283242   -0.1184390    0.0617907
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0110283   -0.0743900    0.0523334
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0064964   -0.0337507    0.0207579
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0017483   -0.0170032    0.0204997


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0026013   -0.1271594    0.1174237
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0773268   -0.2202995    0.0488949
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0075262   -0.0525761    0.0355956
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0260603   -0.0516674   -0.0010768
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0250604   -0.1005942    0.0452895
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0267857   -0.1693195    0.0983739
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1297583   -0.2966378    0.0156436
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0005580   -0.0690679    0.0635614
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0308054   -0.0502427   -0.0117278
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.1088850   -0.2020752   -0.0229194
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0585366   -0.2614024    0.1117032
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0354823   -0.2608886    0.1496287
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0128801   -0.0683117    0.0396752
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0109890   -0.1140739    0.1220127
