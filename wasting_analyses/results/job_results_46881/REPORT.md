# Risk Factor Analysis







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
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
* delta_W_nrooms
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

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               72     245
Birth       ki1000108-IRC              INDIA                          2+             173     245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               15      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1      16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             9384    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+             388    9772
6 months    ki1000108-IRC              INDIA                          1               88     289
6 months    ki1000108-IRC              INDIA                          2+             201     289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               9     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               5     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              62    1452
6 months    ki1148112-LCNI-5           MALAWI                         1              390     453
6 months    ki1148112-LCNI-5           MALAWI                         2+              63     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             362   11234
24 months   ki1000108-IRC              INDIA                          1               89     290
24 months   ki1000108-IRC              INDIA                          2+             201     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               8     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               4     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       5
24 months   ki1148112-LCNI-5           MALAWI                         1              277     321
24 months   ki1148112-LCNI-5           MALAWI                         2+              44     321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             220    5654


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/b6f20e07-62b5-49e5-983a-ab322b6b0847/222fe3bf-d5d0-4c60-9f1f-29a6ffbe5d89/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b6f20e07-62b5-49e5-983a-ab322b6b0847/222fe3bf-d5d0-4c60-9f1f-29a6ffbe5d89/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b6f20e07-62b5-49e5-983a-ab322b6b0847/222fe3bf-d5d0-4c60-9f1f-29a6ffbe5d89/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.1023244   -1.5688266   -0.6358222
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.9653735   -1.2186562   -0.7120908
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7495004   -0.7745468   -0.7244539
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.6608902   -0.7316419   -0.5901385
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5890870   -0.8827708   -0.2954032
6 months    ki1000108-IRC              INDIA                          2+                   NA                -0.6458165   -0.8368177   -0.4548152
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1362715   -0.2362441   -0.0362990
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.6544444   -1.3959478    0.0870589
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0648718   -0.0302953    0.1600388
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.7160000   -0.9380762   -0.4939238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0808423    0.0174154    0.1442691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.0912315   -0.2657337    0.4481967
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.5369375    0.4351075    0.6387675
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                 0.2652061   -0.0043023    0.5347145
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5699545   -0.5951282   -0.5447808
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.7029931   -0.7819285   -0.6240577
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7838758   -1.0021691   -0.5655824
24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.7817642   -0.9102339   -0.6532944
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8634043   -0.9623023   -0.7645062
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.0612500   -1.5690182   -0.5534818
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0167864   -0.1352447    0.1016720
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.0899496   -0.3860196    0.2061204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3047234   -1.3359435   -1.2735034
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.2945447   -1.3881095   -1.2009799


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0094286   -1.2311616   -0.7876956
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7487659   -0.7726563   -0.7248754
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.6243253   -0.7833786   -0.4652719
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1469923   -0.2464550   -0.0475297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0572461   -0.0359459    0.1504381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0817637    0.0194495    0.1440778
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4996468    0.4052394    0.5940542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5754055   -0.5983356   -0.5524753
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7841264   -0.8946395   -0.6736134
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8670766   -0.9643669   -0.7697862
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0275234   -0.1369083    0.0818616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3091670   -1.3388782   -1.2794557


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                  0.1369509   -0.3945866    0.6684884
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0886101    0.0136312    0.1635891
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0567294   -0.4076640    0.2942051
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.5181729   -1.2663853    0.2300394
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.7808718   -1.0224801   -0.5392634
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0103892   -0.3526004    0.3733789
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.2717314   -0.5603615    0.0168986
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.1330387   -0.2161862   -0.0498911
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                  0.0021116   -0.2516149    0.2558381
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1978457   -0.7151555    0.3194640
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0731632   -0.3919744    0.2456479
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0101787   -0.0885653    0.1089227


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0928958   -0.2924851   0.4782767
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0007345   -0.0044160   0.0058850
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0352382   -0.2762250   0.2057485
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0107208   -0.0306718   0.0092302
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0076257   -0.0166152   0.0013638
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0009214   -0.0134315   0.0152743
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0372907   -0.0755458   0.0009644
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0054510   -0.0126822   0.0017802
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0002507   -0.1768876   0.1763863
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0036723   -0.0168490   0.0095044
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0107370   -0.0538615   0.0323875
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0044435   -0.0129116   0.0040246
