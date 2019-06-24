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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
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

agecat      studyid                    country                        perdiar24    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%               22    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        146    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%              89    257
Birth       ki0047075b-MAL-ED          BRAZIL                         0%              108    191
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         81    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%               2    191
Birth       ki0047075b-MAL-ED          INDIA                          0%               12    206
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]        156    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%              38    206
Birth       ki0047075b-MAL-ED          NEPAL                          0%               14    173
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        103    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%              56    173
Birth       ki0047075b-MAL-ED          PERU                           0%               27    287
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    287
Birth       ki0047075b-MAL-ED          PERU                           >5%             151    287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%               95    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        154    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    252
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                8    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         90    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              25    123
Birth       ki1000109-EE               PAKISTAN                       0%                0      2
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]          2      2
Birth       ki1000109-EE               PAKISTAN                       >5%               0      2
Birth       ki1000109-ResPak           PAKISTAN                       0%                0      6
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]          2      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%               4      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]          8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%              14     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                6     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]         10     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%              11     27
Birth       ki1114097-CMIN             BANGLADESH                     0%               11     13
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]          0     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%               2     13
Birth       ki1114097-CMIN             BRAZIL                         0%                1    115
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]         66    115
Birth       ki1114097-CMIN             BRAZIL                         >5%              48    115
Birth       ki1114097-CMIN             PERU                           0%                1     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]          8     10
Birth       ki1114097-CMIN             PERU                           >5%               1     10
Birth       ki1114097-CONTENT          PERU                           0%                0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]          1      2
Birth       ki1114097-CONTENT          PERU                           >5%               1      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%              195    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        547    822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%              80    822
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        142    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              93    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0%              106    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    209
6 months    ki0047075b-MAL-ED          INDIA                          0%                3    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        191    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%              42    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%               14    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        143    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%              79    236
6 months    ki0047075b-MAL-ED          PERU                           0%                7    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]        109    273
6 months    ki0047075b-MAL-ED          PERU                           >5%             157    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               78    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247
6 months    ki1000109-EE               PAKISTAN                       0%              271    372
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]         80    372
6 months    ki1000109-EE               PAKISTAN                       >5%              21    372
6 months    ki1000109-ResPak           PAKISTAN                       0%               11    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         70    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%             154    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               73    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             261    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%               15    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        339    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             183    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%               12    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        401    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             170    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%               29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             200    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                2    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]        112    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%             129    243
6 months    ki1114097-CMIN             BRAZIL                         0%                1    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         60    108
6 months    ki1114097-CMIN             BRAZIL                         >5%              47    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%               25    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        332    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             472    829
6 months    ki1114097-CMIN             PERU                           0%               34    637
6 months    ki1114097-CMIN             PERU                           (0%, 5%]        301    637
6 months    ki1114097-CMIN             PERU                           >5%             302    637
6 months    ki1114097-CONTENT          PERU                           0%                6    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]        142    215
6 months    ki1114097-CONTENT          PERU                           >5%              67    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1243   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3119   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             469   4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        130    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              76    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0%               76    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    169
24 months   ki0047075b-MAL-ED          INDIA                          0%                3    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        183    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    227
24 months   ki0047075b-MAL-ED          NEPAL                          0%               12    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    228
24 months   ki0047075b-MAL-ED          PERU                           0%                1    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         84    201
24 months   ki0047075b-MAL-ED          PERU                           >5%             116    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        279    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             145    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                9    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        394    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             174    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                3    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]        114    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%             125    242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%               30    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%             326    538
24 months   ki1114097-CMIN             PERU                           0%               38    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]        193    426
24 months   ki1114097-CMIN             PERU                           >5%             195    426
24 months   ki1114097-CONTENT          PERU                           0%                4    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]        108    164
24 months   ki1114097-CONTENT          PERU                           >5%              52    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1211   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       3095   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             446   4752


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
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/26d0d6f7-fea4-4088-8f6a-9f95b6d64d99/6d22762a-bbd5-4a89-90ac-fc413eb1f344/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/26d0d6f7-fea4-4088-8f6a-9f95b6d64d99/6d22762a-bbd5-4a89-90ac-fc413eb1f344/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/26d0d6f7-fea4-4088-8f6a-9f95b6d64d99/6d22762a-bbd5-4a89-90ac-fc413eb1f344/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.5421443   -2.0187071   -1.0655815
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.9491462   -1.1077684   -0.7905240
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.2138285   -1.4361538   -0.9915033
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                -1.1863566   -1.5953126   -0.7774006
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -1.0471622   -1.2075153   -0.8868092
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  NA                -0.9871898   -1.2568754   -0.7175042
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.6608992   -1.5088254    0.1870269
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6986406   -0.8881408   -0.5091404
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.7452479   -1.0291212   -0.4613747
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.8778877   -1.3591803   -0.3965951
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.9133582   -1.0864734   -0.7402429
Birth       ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.9559484   -1.1121517   -0.7997451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.2537500   -2.1121999   -0.3953001
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.9958889   -1.2515539   -0.7402239
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.6080000   -0.9936631   -0.2223369
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.3916667   -2.3744611   -0.4088722
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.7940000   -1.4367037   -0.1512963
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2436364   -1.7669142   -0.7203586
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.4937004   -1.6499762   -1.3374245
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.4809977   -1.5791314   -1.3828640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.5983956   -1.7803644   -1.4164268
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.9866667   -1.5612360   -0.4120973
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.0936150   -1.2373445   -0.9498855
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -1.3909140   -1.5928426   -1.1889854
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.3715119   -0.8963136    0.1532898
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.6068986   -0.7454864   -0.4683108
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.5125920   -0.7215752   -0.3036088
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -1.0700000   -1.6970711   -0.4429289
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -1.3017584   -1.4646943   -1.1388225
6 months    ki0047075b-MAL-ED          PERU                           >5%                  NA                -1.3556369   -1.5032709   -1.2080030
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -1.4750000   -2.4233687   -0.5266313
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -1.3795292   -1.5239903   -1.2350680
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -1.2868579   -1.5070055   -1.0667103
6 months    ki1000109-EE               PAKISTAN                       0%                   NA                -2.2377508   -2.3876989   -2.0878027
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                -2.0452315   -2.2650974   -1.8253657
6 months    ki1000109-EE               PAKISTAN                       >5%                  NA                -2.3305253   -2.8973204   -1.7637303
6 months    ki1000109-ResPak           PAKISTAN                       0%                   NA                -1.6673202   -2.7989570   -0.5356835
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                -1.4102783   -1.8257738   -0.9947828
6 months    ki1000109-ResPak           PAKISTAN                       >5%                  NA                -1.4067675   -1.6523900   -1.1611451
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -1.8661033   -2.1089146   -1.6232921
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -1.5026782   -1.8327664   -1.1725900
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -1.8882203   -2.0428986   -1.7335419
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.7749402   -2.1709999   -1.3788804
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -1.3935379   -1.5081173   -1.2789586
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -1.4056620   -1.5540848   -1.2572393
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.5866392   -2.0214899   -1.1517885
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.0778995   -1.1676517   -0.9881473
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.0719474   -1.2245005   -0.9193943
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.1377944   -1.3095254   -0.9660634
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.2026481   -1.3016490   -1.1036472
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.2217044   -1.3565285   -1.0868803
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -1.6249698   -2.0153828   -1.2345567
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -1.4122539   -1.6437495   -1.1807583
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -1.6170518   -1.7539095   -1.4801941
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -0.8400907   -1.2576903   -0.4224911
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -0.4159568   -0.5279235   -0.3039900
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                -0.7084491   -0.8141982   -0.6026999
6 months    ki1114097-CMIN             PERU                           0%                   NA                -0.5879692   -0.9029609   -0.2729775
6 months    ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.3736166   -0.4968228   -0.2504104
6 months    ki1114097-CMIN             PERU                           >5%                  NA                -0.6434822   -0.7512838   -0.5356806
6 months    ki1114097-CONTENT          PERU                           0%                   NA                -1.0984167   -2.1224703   -0.0743631
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.3610399   -0.5741415   -0.1479383
6 months    ki1114097-CONTENT          PERU                           >5%                  NA                -0.1438060   -0.4445075    0.1568956
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.3281294   -1.4042742   -1.2519845
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.3338519   -1.3777758   -1.2899280
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.4615569   -1.5563422   -1.3667715
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -1.6450000   -2.1387687   -1.1512313
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -1.9155000   -2.0801222   -1.7508778
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -2.0138816   -2.2191890   -1.8085741
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -1.0145848   -1.4721052   -0.5570645
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -1.2763914   -1.4247475   -1.1280352
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -1.2966160   -1.5204273   -1.0728046
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -3.2400000   -4.2371443   -2.2428557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -2.5751603   -2.7349797   -2.4153408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -2.6249038   -2.8682232   -2.3815845
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -1.6500000   -1.7451747   -1.5548253
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -2.1683961   -2.3034427   -2.0333494
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -2.2229540   -2.3798407   -2.0660673
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -1.9511111   -2.2983399   -1.6038823
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -1.5681726   -1.6661219   -1.4702233
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -1.6078736   -1.7691497   -1.4465975
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -1.4056499   -1.5801319   -1.2311679
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -1.3972458   -1.5105183   -1.2839734
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -1.5348596   -1.7230644   -1.3466547
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -1.8425162   -2.2966918   -1.3883406
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                -1.3794191   -1.5378812   -1.2209570
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                -1.7116096   -1.8428238   -1.5803955
24 months   ki1114097-CMIN             PERU                           0%                   NA                -1.4058271   -1.6978205   -1.1138338
24 months   ki1114097-CMIN             PERU                           (0%, 5%]             NA                -1.3676798   -1.5130467   -1.2223130
24 months   ki1114097-CMIN             PERU                           >5%                  NA                -1.8010826   -1.9416087   -1.6605565
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -1.7088531   -1.7770560   -1.6406502
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -1.7556865   -1.7968592   -1.7145138
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -1.9007496   -1.9980227   -1.8034764


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4029220   -1.6085859   -1.1972581
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.6003317   -0.6767125   -0.5239510
6 months    ki1114097-CMIN             PERU                           NA                   NA                -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -1.5996561   -1.6995642   -1.4997481
24 months   ki1114097-CMIN             PERU                           NA                   NA                -1.5759624   -1.6729826   -1.4789423
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7582681   -1.7937283   -1.7228079


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.5929981    0.0897087    1.0962875
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                 0.3283158   -0.1958419    0.8524734
Birth       ki0047075b-MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0%                 0.1391943   -0.2923406    0.5707293
Birth       ki0047075b-MAL-ED          INDIA                          >5%                  0%                 0.1991668   -0.2883172    0.6866508
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0377413   -0.9070232    0.8315406
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.0843487   -0.9784202    0.8097227
Birth       ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.0354705   -0.5445090    0.4735681
Birth       ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.0780607   -0.5818567    0.4257353
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2578611   -0.6378513    1.1535736
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6457500   -0.2953516    1.5868516
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.5976667   -0.5766216    1.7719550
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1480303   -0.9653899    1.2614505
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                 0.0127026   -0.1576234    0.1830287
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1046953   -0.3357585    0.1263680
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1069484   -0.6992220    0.4853253
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.4042473   -1.0132671    0.2047724
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2353867   -0.7785153    0.3077419
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.1410801   -0.7064004    0.4242401
6 months    ki0047075b-MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                -0.2317584   -0.8796522    0.4161353
6 months    ki0047075b-MAL-ED          PERU                           >5%                  0%                -0.2856369   -0.9298527    0.3585789
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0954708   -0.8638373    1.0547790
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1881421   -0.7854431    1.1617272
6 months    ki1000109-EE               PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             0%                 0.1925193   -0.0736823    0.4587208
6 months    ki1000109-EE               PAKISTAN                       >5%                  0%                -0.0927745   -0.6790623    0.4935133
6 months    ki1000109-ResPak           PAKISTAN                       0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             0%                 0.2570419   -0.9492829    1.4633667
6 months    ki1000109-ResPak           PAKISTAN                       >5%                  0%                 0.2605527   -0.8978107    1.4189160
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.3634251   -0.0467244    0.7735746
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0221169   -0.3112252    0.2669913
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                 0.3814022   -0.0308635    0.7936679
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                 0.3692781   -0.0536522    0.7922085
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.5087397    0.0646967    0.9527826
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.5146918    0.0537809    0.9756027
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0648537   -0.2632773    0.1335699
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0839100   -0.3022023    0.1343823
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                 0.2127159   -0.2379042    0.6633360
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                 0.0079180   -0.4056196    0.4214556
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0%                 0.4241340   -0.0083310    0.8565990
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0%                 0.1316417   -0.2991785    0.5624619
6 months    ki1114097-CMIN             PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           (0%, 5%]             0%                 0.2143526   -0.1238868    0.5525919
6 months    ki1114097-CMIN             PERU                           >5%                  0%                -0.0555130   -0.3885973    0.2775713
6 months    ki1114097-CONTENT          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0%                 0.7373768   -0.3086147    1.7833682
6 months    ki1114097-CONTENT          PERU                           >5%                  0%                 0.9546107   -0.1126790    2.0219003
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0057225   -0.0905301    0.0790851
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1334275   -0.2544902   -0.0123649
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.2705000   -0.7909882    0.2499882
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                -0.3688816   -0.9036326    0.1658695
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2618065   -0.7421176    0.2185046
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0%                -0.2820311   -0.7926385    0.2285762
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.6648397   -0.3450310    1.6747105
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.6150962   -0.4113058    1.6414981
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                -0.5183961   -0.6836105   -0.3531816
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                -0.5729540   -0.7564524   -0.3894557
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3829385    0.0221590    0.7437181
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0%                 0.3432375   -0.0396173    0.7260924
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0084041   -0.1986356    0.2154437
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1292097   -0.3850286    0.1266093
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0%                 0.4630971   -0.0167991    0.9429932
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0%                 0.1309066   -0.3417647    0.6035779
24 months   ki1114097-CMIN             PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           (0%, 5%]             0%                 0.0381473   -0.2883033    0.3645979
24 months   ki1114097-CMIN             PERU                           >5%                  0%                -0.3952555   -0.7192216   -0.0712894
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                -0.0468334   -0.1240991    0.0304323
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                -0.1918965   -0.3066192   -0.0771737


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.4577474    0.0036813    0.9118135
Birth       ki0047075b-MAL-ED          INDIA                          0%                   NA                 0.1757255   -0.2268142    0.5782652
Birth       ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0480025   -0.8489715    0.7529665
Birth       ki0047075b-MAL-ED          PERU                           0%                   NA                -0.0543423   -0.5049713    0.3962867
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3199289   -0.5085096    1.1483673
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.2816667   -0.5523333    1.1156666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0039639   -0.1311276    0.1231999
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2190111   -0.7912200    0.3531979
6 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.1895474   -0.6975236    0.3184287
6 months    ki0047075b-MAL-ED          PERU                           0%                   NA                -0.2568010   -0.8771126    0.3635107
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1148785   -0.8064024    1.0361595
6 months    ki1000109-EE               PAKISTAN                       0%                   NA                 0.0372804   -0.0324903    0.1070510
6 months    ki1000109-ResPak           PAKISTAN                       0%                   NA                 0.2643982   -0.8431358    1.3719323
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0325809   -0.2827861    0.2176243
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.3675581   -0.0278952    0.7630113
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.4995351    0.0688786    0.9301916
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0608839   -0.2156993    0.0939315
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.0630690   -0.3072481    0.4333861
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                 0.2397590   -0.1715499    0.6510679
6 months    ki1114097-CMIN             PERU                           0%                   NA                 0.0747144   -0.2324907    0.3819195
6 months    ki1114097-CONTENT          PERU                           0%                   NA                 0.7844950   -0.2254843    1.7944743
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0166647   -0.0785705    0.0452411
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.2981132   -0.7939931    0.1977667
24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.2606345   -0.7125228    0.1912539
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.6341121   -0.3439520    1.6121763
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.5307945   -0.6692585   -0.3923305
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                 0.3649933    0.0164680    0.7135185
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0238832   -0.1772797    0.1295133
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                 0.2428601   -0.1986030    0.6843232
24 months   ki1114097-CMIN             PERU                           0%                   NA                -0.1701353   -0.4518966    0.1116260
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0494150   -0.1060550    0.0072251
