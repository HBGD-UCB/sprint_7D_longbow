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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       10      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       73      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        5      88
Birth       ki1000108-IRC              INDIA                          0                0       52     343
Birth       ki1000108-IRC              INDIA                          0                1       14     343
Birth       ki1000108-IRC              INDIA                          1                0      237     343
Birth       ki1000108-IRC              INDIA                          1                1       40     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        1      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       15      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1      17
Birth       ki1119695-PROBIT           BELARUS                        0                0     1501   13824
Birth       ki1119695-PROBIT           BELARUS                        0                1       92   13824
Birth       ki1119695-PROBIT           BELARUS                        1                0    11412   13824
Birth       ki1119695-PROBIT           BELARUS                        1                1      819   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1016   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1       83   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0    11011   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      703   12813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0        2   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    15434   15689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      253   15689
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        1     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      677     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        5     683
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      331     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       12     368
6 months    ki1000108-IRC              INDIA                          0                0       64     408
6 months    ki1000108-IRC              INDIA                          0                1        4     408
6 months    ki1000108-IRC              INDIA                          1                0      322     408
6 months    ki1000108-IRC              INDIA                          1                1       18     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      134     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      443     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      270     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      187    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        2    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1805    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2004
6 months    ki1119695-PROBIT           BELARUS                        0                0     1794   15757
6 months    ki1119695-PROBIT           BELARUS                        0                1        4   15757
6 months    ki1119695-PROBIT           BELARUS                        1                0    13947   15757
6 months    ki1119695-PROBIT           BELARUS                        1                1       12   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0      701    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1        5    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     7418    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       73    8197
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0     1068   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        7   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    15408   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      222   16705
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      333    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        4    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3695    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       24    4056
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      344     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        3     372
24 months   ki1000108-IRC              INDIA                          0                0       67     409
24 months   ki1000108-IRC              INDIA                          0                1        2     409
24 months   ki1000108-IRC              INDIA                          1                0      337     409
24 months   ki1000108-IRC              INDIA                          1                1        3     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      135     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      434     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        7     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0       98     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      160     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0                0      462    3971
24 months   ki1119695-PROBIT           BELARUS                        0                1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        1                0     3505    3971
24 months   ki1119695-PROBIT           BELARUS                        1                1        3    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0       28     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      359     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       30     417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      458    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1       17    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     7763    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      317    8555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      316    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        7    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     3581    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      104    4008


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/1aa52d06-d228-44c7-a6b7-1d0f0fbed339/711fba48-2dee-488a-94bf-385ddd5990a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1aa52d06-d228-44c7-a6b7-1d0f0fbed339/711fba48-2dee-488a-94bf-385ddd5990a1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1aa52d06-d228-44c7-a6b7-1d0f0fbed339/711fba48-2dee-488a-94bf-385ddd5990a1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1aa52d06-d228-44c7-a6b7-1d0f0fbed339/711fba48-2dee-488a-94bf-385ddd5990a1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA        0                    NA                0.2121212   0.1133497   0.3108928
Birth       ki1000108-IRC        INDIA        1                    NA                0.1444043   0.1029503   0.1858583
Birth       ki1119695-PROBIT     BELARUS      0                    NA                0.0577527   0.0294460   0.0860593
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.0669610   0.0326677   0.1012543
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0755232   0.0599006   0.0911458
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0600137   0.0557124   0.0643149
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0070822   0.0008961   0.0132682
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0097450   0.0075203   0.0119697
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0065116   0.0016099   0.0114134
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0142035   0.0120341   0.0163728
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0357895   0.0189031   0.0526759
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0392327   0.0347479   0.0437174
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0216718   0.0056736   0.0376701
24 months   kiGH5241-JiVitA-4    BANGLADESH   1                    NA                0.0282225   0.0220464   0.0343986


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1119695-PROBIT     BELARUS      NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0613439   0.0571889   0.0654990
6 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0095157   0.0074139   0.0116175
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0137085   0.0116390   0.0157780
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0390415   0.0347089   0.0433741
24 months   kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.0276946   0.0218340   0.0335552


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC        INDIA        1                    0                 0.6807633   0.3939399   1.1764196
Birth       ki1119695-PROBIT     BELARUS      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT     BELARUS      1                    0                 1.1594443   0.8449585   1.5909788
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 0.7946387   0.6383995   0.9891152
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 1.3759978   0.5578710   3.3939209
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    0                 2.1812447   1.0194849   4.6668944
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    0                 1.0962070   0.6740508   1.7827587
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4    BANGLADESH   1                    0                 1.3022679   0.6065679   2.7958972


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC        INDIA        0                    NA                -0.0546868   -0.1412394   0.0318658
Birth       ki1119695-PROBIT     BELARUS      0                    NA                 0.0081472   -0.0100292   0.0263236
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.0141793   -0.0289935   0.0006350
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                 0.0024335   -0.0035742   0.0084412
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0071968    0.0022767   0.0121170
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0032520   -0.0132789   0.0197829
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                 0.0060228   -0.0095887   0.0216342


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA        0                    NA                -0.3473625   -1.0213073    0.1018754
Birth       ki1119695-PROBIT     BELARUS      0                    NA                 0.1236302   -0.1649149    0.3407038
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.2311435   -0.4974336   -0.0122081
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                 0.2557383   -0.7325140    0.6802765
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.5249924    0.0071734    0.7727375
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0832966   -0.4543321    0.4221779
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                 0.2174713   -0.6006481    0.6174355
