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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

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

agecat      studyid                 country                        perdiar6    stunted   n_cell     n
----------  ----------------------  -----------------------------  ---------  --------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     Q1                0      209   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     Q1                1       47   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     Q2                0        1   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     Q2                1        0   257
6 months    ki0047075b-MAL-ED       BANGLADESH                     Q1                0      195   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     Q1                1       45   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     Q2                0        1   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     Q2                1        0   241
24 months   ki0047075b-MAL-ED       BANGLADESH                     Q1                0      113   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     Q1                1       98   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     Q2                0        1   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     Q2                1        0   212
Birth       ki0047075b-MAL-ED       BRAZIL                         Q1                0      170   191
Birth       ki0047075b-MAL-ED       BRAZIL                         Q1                1       21   191
6 months    ki0047075b-MAL-ED       BRAZIL                         Q1                0      203   209
6 months    ki0047075b-MAL-ED       BRAZIL                         Q1                1        6   209
24 months   ki0047075b-MAL-ED       BRAZIL                         Q1                0      163   169
24 months   ki0047075b-MAL-ED       BRAZIL                         Q1                1        6   169
Birth       ki0047075b-MAL-ED       INDIA                          Q1                0      173   206
Birth       ki0047075b-MAL-ED       INDIA                          Q1                1       33   206
6 months    ki0047075b-MAL-ED       INDIA                          Q1                0      190   236
6 months    ki0047075b-MAL-ED       INDIA                          Q1                1       45   236
6 months    ki0047075b-MAL-ED       INDIA                          Q2                0        0   236
6 months    ki0047075b-MAL-ED       INDIA                          Q2                1        1   236
24 months   ki0047075b-MAL-ED       INDIA                          Q1                0      132   227
24 months   ki0047075b-MAL-ED       INDIA                          Q1                1       94   227
24 months   ki0047075b-MAL-ED       INDIA                          Q2                0        0   227
24 months   ki0047075b-MAL-ED       INDIA                          Q2                1        1   227
6 months    ki0047075b-MAL-ED       NEPAL                          Q1                0      220   236
6 months    ki0047075b-MAL-ED       NEPAL                          Q1                1       12   236
6 months    ki0047075b-MAL-ED       NEPAL                          Q2                0        4   236
6 months    ki0047075b-MAL-ED       NEPAL                          Q2                1        0   236
24 months   ki0047075b-MAL-ED       NEPAL                          Q1                0      176   228
24 months   ki0047075b-MAL-ED       NEPAL                          Q1                1       48   228
24 months   ki0047075b-MAL-ED       NEPAL                          Q2                0        3   228
24 months   ki0047075b-MAL-ED       NEPAL                          Q2                1        1   228
Birth       ki0047075b-MAL-ED       NEPAL                          Q1                0      153   173
Birth       ki0047075b-MAL-ED       NEPAL                          Q1                1       17   173
Birth       ki0047075b-MAL-ED       NEPAL                          Q2                0        2   173
Birth       ki0047075b-MAL-ED       NEPAL                          Q2                1        1   173
Birth       ki0047075b-MAL-ED       PERU                           Q1                0      248   287
Birth       ki0047075b-MAL-ED       PERU                           Q1                1       34   287
Birth       ki0047075b-MAL-ED       PERU                           Q2                0        5   287
Birth       ki0047075b-MAL-ED       PERU                           Q2                1        0   287
6 months    ki0047075b-MAL-ED       PERU                           Q1                0      209   273
6 months    ki0047075b-MAL-ED       PERU                           Q1                1       60   273
6 months    ki0047075b-MAL-ED       PERU                           Q2                0        4   273
6 months    ki0047075b-MAL-ED       PERU                           Q2                1        0   273
24 months   ki0047075b-MAL-ED       PERU                           Q1                0      125   201
24 months   ki0047075b-MAL-ED       PERU                           Q1                1       74   201
24 months   ki0047075b-MAL-ED       PERU                           Q2                0        2   201
24 months   ki0047075b-MAL-ED       PERU                           Q2                1        0   201
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                0      225   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                1       27   252
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                0      204   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                1       50   254
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                0      154   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                1       84   238
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                0      105   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                1       18   123
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                0      189   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                1       58   247
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                0       61   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                1      153   214
Birth       ki1000109-ResPak        PAKISTAN                       Q1                0        3     6
Birth       ki1000109-ResPak        PAKISTAN                       Q1                1        2     6
Birth       ki1000109-ResPak        PAKISTAN                       Q2                0        1     6
Birth       ki1000109-ResPak        PAKISTAN                       Q2                1        0     6
6 months    ki1000109-ResPak        PAKISTAN                       Q1                0      138   235
6 months    ki1000109-ResPak        PAKISTAN                       Q1                1       77   235
6 months    ki1000109-ResPak        PAKISTAN                       Q2                0       14   235
6 months    ki1000109-ResPak        PAKISTAN                       Q2                1        6   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     Q1                0      387   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     Q1                1      142   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     Q2                0        6   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     Q2                1        2   537
24 months   ki1017093-NIH-Birth     BANGLADESH                     Q1                0      191   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     Q1                1      233   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     Q2                0        0   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     Q2                1        5   429
Birth       ki1017093-NIH-Birth     BANGLADESH                     Q1                0       24    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     Q1                1        1    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     Q2                0        1    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     Q2                1        0    26
6 months    ki1017093b-PROVIDE      BANGLADESH                     Q1                0      486   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     Q1                1       93   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     Q2                0        3   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     Q2                1        1   583
24 months   ki1017093b-PROVIDE      BANGLADESH                     Q1                0      384   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     Q1                1      189   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     Q2                0        3   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     Q2                1        1   577
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     Q1                0       22    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     Q1                1        5    27
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q1                0      563   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q1                1      149   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q2                0        2   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q2                1        1   715
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q1                0      379   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q1                1      132   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q2                0        3   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q2                1        0   514
6 months    ki1114097-CMIN          BANGLADESH                     Q1                0      141   243
6 months    ki1114097-CMIN          BANGLADESH                     Q1                1       89   243
6 months    ki1114097-CMIN          BANGLADESH                     Q2                0        9   243
6 months    ki1114097-CMIN          BANGLADESH                     Q2                1        2   243
6 months    ki1114097-CMIN          BANGLADESH                     Q3                0        0   243
6 months    ki1114097-CMIN          BANGLADESH                     Q3                1        2   243
24 months   ki1114097-CMIN          BANGLADESH                     Q1                0       72   242
24 months   ki1114097-CMIN          BANGLADESH                     Q1                1      158   242
24 months   ki1114097-CMIN          BANGLADESH                     Q2                0        5   242
24 months   ki1114097-CMIN          BANGLADESH                     Q2                1        5   242
24 months   ki1114097-CMIN          BANGLADESH                     Q3                0        0   242
24 months   ki1114097-CMIN          BANGLADESH                     Q3                1        2   242
Birth       ki1114097-CMIN          BANGLADESH                     Q1                0        7    13
Birth       ki1114097-CMIN          BANGLADESH                     Q1                1        6    13
Birth       ki1114097-CMIN          BRAZIL                         Q1                0      109   115
Birth       ki1114097-CMIN          BRAZIL                         Q1                1        5   115
Birth       ki1114097-CMIN          BRAZIL                         Q2                0        1   115
Birth       ki1114097-CMIN          BRAZIL                         Q2                1        0   115
6 months    ki1114097-CMIN          BRAZIL                         Q1                0       97   108
6 months    ki1114097-CMIN          BRAZIL                         Q1                1       10   108
6 months    ki1114097-CMIN          BRAZIL                         Q2                0        1   108
6 months    ki1114097-CMIN          BRAZIL                         Q2                1        0   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q1                0      567   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q1                1       54   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q2                0       34   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q2                1        4   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q3                0        6   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q3                1        3   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q4                0        4   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q4                1        0   672
24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q1                0      179   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q1                1       85   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q2                0        6   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q2                1        7   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q3                0        0   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q3                1        1   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q4                0        0   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q4                1        1   279
6 months    ki1114097-CMIN          PERU                           Q1                0      544   635
6 months    ki1114097-CMIN          PERU                           Q1                1       37   635
6 months    ki1114097-CMIN          PERU                           Q2                0       42   635
6 months    ki1114097-CMIN          PERU                           Q2                1        4   635
6 months    ki1114097-CMIN          PERU                           Q3                0        6   635
6 months    ki1114097-CMIN          PERU                           Q3                1        2   635
24 months   ki1114097-CMIN          PERU                           Q1                0      171   244
24 months   ki1114097-CMIN          PERU                           Q1                1       60   244
24 months   ki1114097-CMIN          PERU                           Q2                0        5   244
24 months   ki1114097-CMIN          PERU                           Q2                1        6   244
24 months   ki1114097-CMIN          PERU                           Q3                0        1   244
24 months   ki1114097-CMIN          PERU                           Q3                1        1   244
Birth       ki1114097-CMIN          PERU                           Q1                0       10    10
6 months    ki1114097-CONTENT       PERU                           Q1                0      193   215
6 months    ki1114097-CONTENT       PERU                           Q1                1       19   215
6 months    ki1114097-CONTENT       PERU                           Q2                0        3   215
6 months    ki1114097-CONTENT       PERU                           Q2                1        0   215
24 months   ki1114097-CONTENT       PERU                           Q1                0      141   164
24 months   ki1114097-CONTENT       PERU                           Q1                1       20   164
24 months   ki1114097-CONTENT       PERU                           Q2                0        2   164
24 months   ki1114097-CONTENT       PERU                           Q2                1        1   164
Birth       ki1114097-CONTENT       PERU                           Q1                0        2     2


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##         stunted
## perdiar6   0   1
##       Q1 163   6
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         stunted
## perdiar6   0   1
##       Q1 154  84
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         stunted
## perdiar6   0   1
##       Q1  61 153
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         stunted
## perdiar6   0   1
##       Q1 203   6
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         stunted
## perdiar6   0   1
##       Q1 204  50
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         stunted
## perdiar6   0   1
##       Q1 189  58
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
##         stunted
## perdiar6   0   1
##       Q1 170  21
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         stunted
## perdiar6   0   1
##       Q1 173  33
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         stunted
## perdiar6   0   1
##       Q1 225  27
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         stunted
## perdiar6   0   1
##       Q1 105  18
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         stunted
## perdiar6  0  1
##       Q1 22  5
##       Q2  0  0
##       Q3  0  0
##       Q4  0  0
##         stunted
## perdiar6 0 1
##       Q1 7 6
##       Q2 0 0
##       Q3 0 0
##       Q4 0 0
##         stunted
## perdiar6  0
##       Q1 10
##       Q2  0
##       Q3  0
##       Q4  0
```




# Results Detail

## Results Plots
![](/tmp/660d4c9b-2995-4b9d-aeb6-bce12fdbedbd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/660d4c9b-2995-4b9d-aeb6-bce12fdbedbd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/660d4c9b-2995-4b9d-aeb6-bce12fdbedbd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/660d4c9b-2995-4b9d-aeb6-bce12fdbedbd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid            country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------------  ---------  -------------------  ---------------  ----------  ----------  ----------
6 months   ki1000109-ResPak   PAKISTAN   Q1                   NA                0.3581420   0.2939872   0.4222968
6 months   ki1000109-ResPak   PAKISTAN   Q2                   NA                0.2943104   0.1106823   0.4779384


### Parameter: E(Y)


agecat     studyid            country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------------  ---------  -------------------  ---------------  ----------  ----------  ----------
6 months   ki1000109-ResPak   PAKISTAN   NA                   NA                0.3531915   0.2919518   0.4144312


### Parameter: RR


agecat     studyid            country    intervention_level   baseline_level    estimate   ci_lower   ci_upper
---------  -----------------  ---------  -------------------  ---------------  ---------  ---------  ---------
6 months   ki1000109-ResPak   PAKISTAN   Q1                   Q1                 1.00000     1.0000   1.000000
6 months   ki1000109-ResPak   PAKISTAN   Q2                   Q1                 0.82177     0.4302   1.569749


### Parameter: PAR


agecat     studyid            country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -----------------  ---------  -------------------  ---------------  -----------  -----------  ----------
6 months   ki1000109-ResPak   PAKISTAN   Q1                   NA                -0.0049505   -0.0229298   0.0130288


### Parameter: PAF


agecat     studyid            country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -----------------  ---------  -------------------  ---------------  -----------  -----------  ----------
6 months   ki1000109-ResPak   PAKISTAN   Q1                   NA                -0.0140165   -0.0662331   0.0356429
