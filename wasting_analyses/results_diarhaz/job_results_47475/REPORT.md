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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        perdiar6    n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              86   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             75   257
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             176   191
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   191
Birth       ki0047075b-MAL-ED       INDIA                          0%              47   206
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       109   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   206
Birth       ki0047075b-MAL-ED       NEPAL                          0%              60   173
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             56   173
Birth       ki0047075b-MAL-ED       PERU                           0%              83   287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        88   287
Birth       ki0047075b-MAL-ED       PERU                           >5%            116   287
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             193   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   252
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              60   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        42   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   123
Birth       ki1000109-ResPak        PAKISTAN                       0%               1     6
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     6
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               8    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             12    27
Birth       ki1114097-CMIN          BANGLADESH                     0%              11    13
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2    13
Birth       ki1114097-CMIN          BRAZIL                         0%              38   115
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        47   115
Birth       ki1114097-CMIN          BRAZIL                         >5%             30   115
Birth       ki1114097-CMIN          PERU                           0%               4    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         5    10
Birth       ki1114097-CMIN          PERU                           >5%              1    10
Birth       ki1114097-CONTENT       PERU                           0%               0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2
Birth       ki1114097-CONTENT       PERU                           >5%              1     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    ki1000109-ResPak        PAKISTAN                       0%              41   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        64   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%            130   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             158   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   583
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        59   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            103   243
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       190   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            270   672
6 months    ki1114097-CMIN          PERU                           0%             184   635
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   635
6 months    ki1114097-CMIN          PERU                           >5%            267   635
6 months    ki1114097-CONTENT       PERU                           0%             115   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215
6 months    ki1114097-CONTENT       PERU                           >5%             57   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       128   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             151   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%             99   242
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              99   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        77   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%            103   279
24 months   ki1114097-CMIN          PERU                           0%              97   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]        79   244
24 months   ki1114097-CMIN          PERU                           >5%             68   244
24 months   ki1114097-CONTENT       PERU                           0%              84   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164
24 months   ki1114097-CONTENT       PERU                           >5%             44   164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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




# Results Detail

## Results Plots
![](/tmp/4b9a5307-c7e8-4537-a465-a36afb6daa91/5c21aba4-5172-4933-9547-f9e6a8332d27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4b9a5307-c7e8-4537-a465-a36afb6daa91/5c21aba4-5172-4933-9547-f9e6a8332d27/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4b9a5307-c7e8-4537-a465-a36afb6daa91/5c21aba4-5172-4933-9547-f9e6a8332d27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.1353291   -1.3513050   -0.9193532
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.0487092   -1.2547044   -0.8427140
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.2875500   -1.5154129   -1.0596872
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.1115323   -1.4127965   -0.8102680
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.9905466   -1.1767713   -0.8043218
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.9692818   -1.1996500   -0.7389135
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.6621439   -0.9496850   -0.3746029
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.6581370   -0.9128530   -0.4034211
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.6628199   -0.9478108   -0.3778290
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.9369412   -1.1539999   -0.7198826
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.0141248   -1.2215414   -0.8067081
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.8725110   -1.0447816   -0.7002404
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.6932642   -0.8381158   -0.5484127
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.8254000   -1.0726550   -0.5781450
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.3400000   -1.1836353    0.5036353
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.0144516   -1.2868987   -0.7420045
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.8211709   -1.2563568   -0.3859850
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.0268771   -1.5372766   -0.5164777
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.4237500   -2.1656043   -0.6818957
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.1171429   -1.5897509   -0.6445348
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.8966667   -1.5653535   -0.2279798
Birth       ki1114097-CMIN          BRAZIL                         0%                   NA                 0.1570256   -0.1237925    0.4378438
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                 0.0056239   -0.2594004    0.2706482
Birth       ki1114097-CMIN          BRAZIL                         >5%                  NA                 0.0120059   -0.3483622    0.3723740
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.1671229   -1.3855450   -0.9487008
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.1011014   -1.2865005   -0.9157022
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.3647599   -1.5975464   -1.1319735
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.2196033   -1.4679947   -0.9712120
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.1220065   -1.2810509   -0.9629621
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.3819012   -1.6358142   -1.1279882
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.6053585   -0.8038877   -0.4068293
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.5002972   -0.6998260   -0.3007685
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.5051467   -0.6950857   -0.3152076
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -1.4410917   -1.6544935   -1.2276899
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.3801816   -1.5690655   -1.1912977
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.2342056   -1.3966024   -1.0718087
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.0555833   -1.2041502   -0.9070165
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.1556970   -1.4033215   -0.9080724
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.6637037   -1.5451618    0.2177544
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4128992   -1.6111403   -1.2146581
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3479530   -1.5393526   -1.1565535
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2525102   -1.4869036   -1.0181167
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -1.1446585   -1.6445131   -0.6448039
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -1.3611190   -1.7413550   -0.9808829
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                -1.4938192   -1.7785719   -1.2090666
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -1.4563663   -1.6288142   -1.2839184
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -1.3506820   -1.5099813   -1.1913827
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -1.4215057   -1.5568713   -1.2861400
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.0426087   -1.1784781   -0.9067393
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.0866354   -1.1986189   -0.9746518
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.0957215   -1.2345970   -0.9568460
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.1578713   -1.2557735   -1.0599692
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.3034811   -1.4654938   -1.1414684
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.2088706   -1.3464267   -1.0713145
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -1.6801564   -1.9390447   -1.4212680
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -2.0105850   -2.2835367   -1.7376334
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -1.7361378   -1.9414461   -1.5308295
6 months    ki1114097-CMIN          BRAZIL                         0%                   NA                -0.5073638   -0.7822016   -0.2325259
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.7354862   -1.0586013   -0.4123711
6 months    ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.9430406   -1.4534611   -0.4326201
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.5473767   -0.7000679   -0.3946856
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.5615152   -0.7089182   -0.4141121
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.7263340   -0.8632479   -0.5894201
6 months    ki1114097-CMIN          PERU                           0%                   NA                -0.4332435   -0.5740561   -0.2924309
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.5077309   -0.6764382   -0.3390236
6 months    ki1114097-CMIN          PERU                           >5%                  NA                -0.5655256   -0.6796711   -0.4513802
6 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.3766165   -0.6229140   -0.1303190
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.3319919   -0.7399927    0.0760090
6 months    ki1114097-CONTENT       PERU                           >5%                  NA                -0.1766902   -0.4917465    0.1383661
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -1.9903044   -2.2717814   -1.7088273
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -1.9226013   -2.1163780   -1.7288247
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -1.9188479   -2.1250029   -1.7126929
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -1.8678893   -2.1409895   -1.5947891
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -1.7720727   -1.9426325   -1.6015128
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -1.9338987   -2.1934558   -1.6743415
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -1.3697146   -1.5590384   -1.1803907
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -1.1859980   -1.3966079   -0.9753880
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -1.3023438   -1.5335028   -1.0711848
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -1.9150679   -2.1511060   -1.6790298
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -1.9023454   -2.1172387   -1.6874521
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -1.5228835   -1.6950794   -1.3506876
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -1.5899153   -1.7422064   -1.4376241
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -1.8030769   -2.1130160   -1.4931379
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -1.2288889   -1.9106554   -0.5471224
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -2.6343551   -2.8543887   -2.4143216
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.6064838   -2.8182772   -2.3946903
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.5652253   -2.8618669   -2.2685837
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -2.1701001   -2.3655565   -1.9746438
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -2.0904470   -2.2701798   -1.9107141
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -2.2405262   -2.4052025   -2.0758499
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -1.5230720   -1.6811689   -1.3649751
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -1.6127445   -1.7434547   -1.4820342
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -1.6078172   -1.7521424   -1.4634921
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -1.3773050   -1.4832574   -1.2713526
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.5333016   -1.7359871   -1.3306161
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -1.4181131   -1.5896833   -1.2465429
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -2.4016691   -2.6129971   -2.1903411
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -2.7193632   -3.0004393   -2.4382872
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -2.4750435   -2.6616075   -2.2884795
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -1.5015618   -1.7427647   -1.2603590
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -1.2816173   -1.5052732   -1.0579614
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -1.8743647   -2.0988595   -1.6498698
24 months   ki1114097-CMIN          PERU                           0%                   NA                -1.3752520   -1.5580583   -1.1924457
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -1.4944094   -1.7459292   -1.2428896
24 months   ki1114097-CMIN          PERU                           >5%                  NA                -1.5780252   -1.8090389   -1.3470116
24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.7054400   -0.9615697   -0.4493103
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.6823963   -1.0427801   -0.3220125
24 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.7538858   -1.0592232   -0.4485484


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.7068651   -0.8323249   -0.5814053
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1114097-CMIN          BRAZIL                         NA                   NA                 0.0576522   -0.1471825    0.2624869
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-ResPak        PAKISTAN                       NA                   NA                -1.4029220   -1.6085859   -1.1972581
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN          BRAZIL                         NA                   NA                -0.6841667   -0.8870073   -0.4813261
6 months    ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -0.6242708   -0.7083402   -0.5402014
6 months    ki1114097-CMIN          PERU                           NA                   NA                -0.5133753   -0.5929878   -0.4337629
6 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -1.5769713   -1.7148941   -1.4390486
24 months   ki1114097-CMIN          PERU                           NA                   NA                -1.4709290   -1.5934208   -1.3484372
24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0866198   -0.2127748    0.3860145
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1522210   -0.4691680    0.1647260
Birth       ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.1209857   -0.2180301    0.4600014
Birth       ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.1422505   -0.2250090    0.5095100
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0040069   -0.3833863    0.3914001
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0006760   -0.4072468    0.4058948
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0771835   -0.3766061    0.2222391
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0644302   -0.2114589    0.3403193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.1321358   -0.4186964    0.1544249
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3532642   -0.5027161    1.2092446
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1932807   -0.3216328    0.7081942
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0124256   -0.5901882    0.5653371
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.3066071   -0.5729985    1.1862128
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.5270833   -0.4716608    1.5258275
Birth       ki1114097-CMIN          BRAZIL                         0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                -0.1514017   -0.4774970    0.1746936
Birth       ki1114097-CMIN          BRAZIL                         >5%                  0%                -0.1450197   -0.5449979    0.2549584
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0660215   -0.2207130    0.3527561
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1976371   -0.5178087    0.1225346
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0975969   -0.1974185    0.3926122
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.1622979   -0.5180752    0.1934795
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1050612   -0.1765748    0.3866973
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.1002118   -0.1742555    0.3746791
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0609101   -0.2232345    0.3450547
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.2068861   -0.0604732    0.4742454
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.1001136   -0.3888869    0.1886597
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3918796   -0.5020111    1.2857703
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0649462   -0.2104005    0.3402929
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1603890   -0.1464126    0.4671907
6 months    ki1000109-ResPak        PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                -0.2164604   -0.8451217    0.4122009
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  0%                -0.3491607   -0.9255254    0.2272039
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1056843   -0.1281064    0.3394750
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0348606   -0.1831423    0.2528636
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0440266   -0.2163702    0.1283169
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0531128   -0.2435627    0.1373372
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1456098   -0.3347153    0.0434957
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0509993   -0.2200531    0.1180545
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.3304287   -0.7065813    0.0457239
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0559814   -0.3867650    0.2748022
6 months    ki1114097-CMIN          BRAZIL                         0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                -0.2281224   -0.6524213    0.1961764
6 months    ki1114097-CMIN          BRAZIL                         >5%                  0%                -0.4356768   -1.0150965    0.1437428
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                -0.0141384   -0.2259347    0.1976578
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                -0.1789573   -0.3834590    0.0255444
6 months    ki1114097-CMIN          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             0%                -0.0744874   -0.2935755    0.1446007
6 months    ki1114097-CMIN          PERU                           >5%                  0%                -0.1322821   -0.3133917    0.0488274
6 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0446247   -0.4323292    0.5215785
6 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.1999264   -0.2005311    0.6003838
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0677031   -0.2728067    0.4082128
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0714565   -0.2763791    0.4192922
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0958167   -0.2254231    0.4170564
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0660093   -0.4417987    0.3097801
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.1837166   -0.0998878    0.4673210
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0673708   -0.2321566    0.3668982
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0127225   -0.3057347    0.3311797
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.3921844    0.1013188    0.6830501
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.2131617   -0.5584946    0.1321712
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.3610264   -0.3375423    1.0595950
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0278713   -0.2774358    0.3331785
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0691298   -0.3002494    0.4385090
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0796532   -0.1819250    0.3412314
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0704261   -0.3213248    0.1804727
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0896724   -0.2937113    0.1143665
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0847452   -0.2979413    0.1284510
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1559966   -0.3843856    0.0723925
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0408081   -0.2424183    0.1608021
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.3176941   -0.6692582    0.0338699
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0733744   -0.3554425    0.2086938
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                 0.2199445   -0.1083840    0.5482730
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                -0.3728028   -0.7022681   -0.0433376
24 months   ki1114097-CMIN          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             0%                -0.1191574   -0.4305065    0.1921918
24 months   ki1114097-CMIN          PERU                           >5%                  0%                -0.2027732   -0.4977997    0.0922533
24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0230437   -0.4210476    0.4671350
24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0484458   -0.4485452    0.3516535


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0509322   -0.1281685   0.2300328
Birth       ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.1009012   -0.1542254   0.3560278
Birth       ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0467578   -0.2723068   0.1787911
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0047113   -0.1765009   0.1859234
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0136008   -0.0812993   0.0540976
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0806304   -0.1389899   0.3002507
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.3137500   -0.3052564   0.9327564
Birth       ki1114097-CMIN          BRAZIL                         0%                   NA                -0.0993734   -0.2994174   0.1006705
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0385548   -0.2246686   0.1475589
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0007639   -0.2254304   0.2239026
6 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0442992   -0.1152178   0.2038161
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1142907   -0.0702863   0.2988677
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0077927   -0.0810491   0.0654638
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0527777   -0.0914774   0.1970329
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.2582635   -0.7144664   0.1979394
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0489842   -0.1028660   0.2008345
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0444953   -0.1603814   0.0713907
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0408070   -0.1157228   0.0341088
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1042812   -0.3101468   0.1015843
6 months    ki1114097-CMIN          BRAZIL                         0%                   NA                -0.1768029   -0.4312043   0.0775985
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0768941   -0.2027828   0.0489946
6 months    ki1114097-CMIN          PERU                           0%                   NA                -0.0801318   -0.2011074   0.0408438
6 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0626948   -0.0998890   0.2252787
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0471912   -0.1768155   0.2711978
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0220743   -0.2219496   0.2660983
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0944953   -0.0683321   0.2573226
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.1649684   -0.0377772   0.3677141
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0329209   -0.1165698   0.0507280
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0284673   -0.1315484   0.1884829
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0106944   -0.1824720   0.1610833
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0630458   -0.1993542   0.0732626
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0522281   -0.1289949   0.0245388
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1092813   -0.2820086   0.0634459
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0754095   -0.2650412   0.1142222
24 months   ki1114097-CMIN          PERU                           0%                   NA                -0.0956769   -0.2479751   0.0566212
24 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0092205   -0.1602355   0.1786765
