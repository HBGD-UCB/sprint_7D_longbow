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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        predfeed36    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      108     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       23     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      104     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       16     251
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       38     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      185     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     225
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17     243
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        3     243
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      172     243
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       51     243
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       28     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      189     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       17     238
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0      126     287
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      150     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     287
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      257     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       21     281
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      231     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       23     256
0-24 months   ki1000109-EE               PAKISTAN                       1                   0      140     373
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       86     373
0-24 months   ki1000109-EE               PAKISTAN                       0                   0       89     373
0-24 months   ki1000109-EE               PAKISTAN                       0                   1       58     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       73     184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      292     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       64     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       39     528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14164   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1203   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3422   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      596   19385
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3024    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      533    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      791    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      210    4558
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      128     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        3     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      114     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        6     251
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       38     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      187     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     225
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       19     243
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1     243
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      206     243
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       17     243
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       31     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      200     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        6     238
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0      127     287
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      158     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        2     287
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      274     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     281
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      250     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     256
0-6 months    ki1000109-EE               PAKISTAN                       1                   0      199     373
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       27     373
0-6 months    ki1000109-EE               PAKISTAN                       0                   0      121     373
0-6 months    ki1000109-EE               PAKISTAN                       0                   1       26     373
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       26     183
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      413     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       94     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     528
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14936   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      425   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3703   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      306   19370
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3475    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       78    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      949    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       43    4545
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      108     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       22     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       95     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       13     238
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       37     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      168     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        2     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      171     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       45     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       29     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      190     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       13     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0      124     269
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      135     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1        9     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      237     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       19     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      222     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     245
6-24 months   ki1000109-EE               PAKISTAN                       1                   0      142     368
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       80     368
6-24 months   ki1000109-EE               PAKISTAN                       0                   0       94     368
6-24 months   ki1000109-EE               PAKISTAN                       0                   1       52     368
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       65     176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      292     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      132     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       65     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       37     526
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    10128   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      854   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2389   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      356   13727
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3066    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      484    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      805    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      192    4547


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/4ac5320a-aa37-422c-ad1d-db1d26cc8c8d/b502bd71-2a05-4624-9ab2-5980c662f4ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ac5320a-aa37-422c-ad1d-db1d26cc8c8d/b502bd71-2a05-4624-9ab2-5980c662f4ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ac5320a-aa37-422c-ad1d-db1d26cc8c8d/b502bd71-2a05-4624-9ab2-5980c662f4ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ac5320a-aa37-422c-ad1d-db1d26cc8c8d/b502bd71-2a05-4624-9ab2-5980c662f4ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1793557   0.1136014   0.2451101
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1346021   0.0737892   0.1954150
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3948152   0.3317245   0.4579059
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3878247   0.3082818   0.4673676
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3136803   0.2697024   0.3576582
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3716953   0.2778252   0.4655654
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0829205   0.0781855   0.0876554
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1263221   0.1159033   0.1367409
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1545703   0.1412982   0.1678423
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1877576   0.1627760   0.2127392
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1201269   0.0778101   0.1624438
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1779421   0.1160311   0.2398530
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0282353   0.0124722   0.0439984
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0873786   0.0327917   0.1419656
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0306705   0.0279043   0.0334367
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0597103   0.0526382   0.0667823
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0218353   0.0159263   0.0277442
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0431816   0.0297587   0.0566045
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1779093   0.1126028   0.2432158
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1270605   0.0651536   0.1889674
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3732949   0.3087295   0.4378603
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3471354   0.2680519   0.4262189
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3128080   0.2686623   0.3569538
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3636936   0.2703937   0.4569935
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0813055   0.0758229   0.0867880
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1151687   0.1025975   0.1277398
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1414684   0.1288645   0.1540723
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1699851   0.1460298   0.1939403


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1553785   0.1104725   0.2002845
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3860590   0.3365861   0.4355318
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3257576   0.2857449   0.3657703
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0928037   0.0883057   0.0973017
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1630101   0.1508647   0.1751555
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1420912   0.1066114   0.1775709
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0397727   0.0230879   0.0564576
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0377388   0.0349183   0.0405593
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0266227   0.0211044   0.0321409
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1470588   0.1019690   0.1921487
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3586957   0.3096263   0.4077650
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3212928   0.2813480   0.3612376
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0881474   0.0829797   0.0933152
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1486695   0.1373410   0.1599979


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7504755   0.4199265   1.341219
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9822943   0.7604524   1.268853
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1849496   0.8890647   1.579306
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5234129   1.3829370   1.678158
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2147074   1.0441781   1.413086
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.4812836   0.9036793   2.428075
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 3.0946602   1.3389106   7.152771
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.9468299   1.6939747   2.237428
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.9776078   1.3202446   2.962279
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7141868   0.3882339   1.313803
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9299228   0.6994184   1.236394
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1626735   0.8678664   1.557624
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4164937   1.2498731   1.605327
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2015763   1.0206726   1.414543


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0239772   -0.0671809   0.0192265
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0087562   -0.0481354   0.0306230
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0120773   -0.0079867   0.0321412
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0098833    0.0073686   0.0123979
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0084398    0.0022620   0.0146177
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0219642   -0.0075283   0.0514567
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0115374    0.0002746   0.0228003
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0070683    0.0054094   0.0087272
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0047874    0.0017075   0.0078673
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0308505   -0.0722397   0.0105388
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0145992   -0.0557362   0.0265378
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0084847   -0.0115886   0.0285581
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0068420    0.0040037   0.0096803
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0072011    0.0011093   0.0132928


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1543151   -0.4668226   0.0916125
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0226810   -0.1300049   0.0744496
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0370744   -0.0264990   0.0967106
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1064963    0.0794542   0.1327440
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0517749    0.0131595   0.0888792
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1545783   -0.0772858   0.3365384
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2900840   -0.0201657   0.5059815
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1872945    0.1446639   0.2278004
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1798240    0.0550065   0.2881553
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2097831   -0.5246507   0.0400587
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0407009   -0.1619889   0.0679271
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0264081   -0.0381004   0.0869080
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0776199    0.0452772   0.1088669
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0484368    0.0065768   0.0885329
