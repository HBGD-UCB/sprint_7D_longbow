# Risk Factor Analysis







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    n_cell     n
----------  -------------------------  -------------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1               1     2
Birth       ki0047075b-MAL-ED          PERU           0               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              37    88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              51    88
Birth       ki1000108-IRC              INDIA          1             198   337
Birth       ki1000108-IRC              INDIA          0             139   337
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1              11    17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               6    17
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             162   368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   368
6 months    ki1000108-IRC              INDIA          1             229   398
6 months    ki1000108-IRC              INDIA          0             169   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             481   582
6 months    ki1017093b-PROVIDE         BANGLADESH     0             101   582
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   504
6 months    ki1113344-GMS-Nepal        NEPAL          0             496   504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             209   372
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             480   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0              98   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               7   445
24 months   ki1113344-GMS-Nepal        NEPAL          0             438   445


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

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
![](/tmp/18a63f58-e716-4dba-8087-8b64fd5d7756/62f4aee6-baac-4aaf-a1c3-bba5b984484e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/18a63f58-e716-4dba-8087-8b64fd5d7756/62f4aee6-baac-4aaf-a1c3-bba5b984484e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/18a63f58-e716-4dba-8087-8b64fd5d7756/62f4aee6-baac-4aaf-a1c3-bba5b984484e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2914795   -0.7697389    0.1867798
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.8819829   -1.3898409   -0.3741249
Birth       ki1000108-IRC              INDIA        1                    NA                -0.7949731   -1.0517325   -0.5382137
Birth       ki1000108-IRC              INDIA        0                    NA                -1.1081293   -1.4167348   -0.7995238
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.7990909   -1.4601804   -0.1380015
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.6483333   -1.6406455    0.3439788
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3822337   -0.6091658   -0.1553016
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.6555144   -0.8628727   -0.4481561
6 months    ki1000108-IRC              INDIA        1                    NA                -0.6784626   -0.8608250   -0.4961002
6 months    ki1000108-IRC              INDIA        0                    NA                -0.5630140   -0.7832815   -0.3427464
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1436213   -0.2349986   -0.0522441
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5193537   -0.7257854   -0.3129219
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1197489   -0.0050872    0.2445850
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0352348   -0.2007592    0.1302896
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.8406250   -1.1883379   -0.4929121
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.6206788   -0.7126572   -0.5287003
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2869522   -0.4531290   -0.1207754
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.7556994   -0.8879904   -0.6234084
24 months   ki1000108-IRC              INDIA        1                    NA                -0.6774796   -0.8034661   -0.5514931
24 months   ki1000108-IRC              INDIA        0                    NA                -0.8431393   -0.9885896   -0.6976890
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.8363598   -0.9246886   -0.7480309
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.1521573   -1.3765320   -0.9277826
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.6290035   -0.7986535   -0.4593535
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.5046614   -0.6710066   -0.3383162
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.9585714   -1.4549933   -0.4621496
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1218379   -1.2165987   -1.0270771


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.9860831   -1.1746070   -0.7975591
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.7458824   -1.2998567   -0.1919080
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA        NA                   NA                -0.6153685   -0.7522411   -0.4784959
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0640826   -0.0252594    0.1534245
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.6241700   -0.7143013   -0.5340386
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA        NA                   NA                -0.7479083   -0.8403586   -0.6554581
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.5518293   -0.6602513   -0.4434072
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.1192697   -1.2125104   -1.0260289


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5905033   -1.2896771    0.1086704
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                 -0.3131562   -0.7196868    0.0933744
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1507576   -1.0416025    1.3431177
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2732807   -0.5811840    0.0346225
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                  0.1154486   -0.1713246    0.4022218
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.3757323   -0.6011111   -0.1503536
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.1549837   -0.3626536    0.0526861
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                  0.2199462   -0.1397262    0.5796187
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.4687472   -0.6819574   -0.2555370
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.1656597   -0.3609915    0.0296721
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.3157976   -0.5572247   -0.0743705
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1243421   -0.1133284    0.3620127
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.1632665   -0.6686517    0.3421188


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3360205   -0.7628514    0.0908105
Birth       ki1000108-IRC              INDIA        1                    NA                -0.1911100   -0.3633246   -0.0188954
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0532086   -0.3691024    0.4755196
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1204429   -0.2977125    0.0568266
6 months    ki1000108-IRC              INDIA        1                    NA                 0.0630941   -0.0613071    0.1874953
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0647492   -0.1050371   -0.0244613
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0556663   -0.1416824    0.0303497
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.2164550   -0.1342338    0.5671439
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2701984   -0.4004571   -0.1399396
24 months   ki1000108-IRC              INDIA        1                    NA                -0.0704288   -0.1520483    0.0111908
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0515814   -0.0935254   -0.0096374
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0771743   -0.0617494    0.2160979
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1606982   -0.6534525    0.3320560
