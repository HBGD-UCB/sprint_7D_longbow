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

agecat        studyid                    country        cleanck    ever_co   n_cell     n
------------  -------------------------  -------------  --------  --------  -------  ----
0-24 months   ki0047075b-MAL-ED          PERU           1                0        1     2
0-24 months   ki0047075b-MAL-ED          PERU           1                1        0     2
0-24 months   ki0047075b-MAL-ED          PERU           0                0        1     2
0-24 months   ki0047075b-MAL-ED          PERU           0                1        0     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     3
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0      142   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       21   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0      145   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1       65   373
0-24 months   ki1000108-IRC              INDIA          1                0      198   400
0-24 months   ki1000108-IRC              INDIA          1                1       33   400
0-24 months   ki1000108-IRC              INDIA          0                0      130   400
0-24 months   ki1000108-IRC              INDIA          0                1       39   400
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      508   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                1       63   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                0      102   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       27   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      329   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       31   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      200   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       17   577
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                0        9   537
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   537
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                0      354   537
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                1      174   537
0-6 months    ki0047075b-MAL-ED          PERU           1                0        1     2
0-6 months    ki0047075b-MAL-ED          PERU           1                1        0     2
0-6 months    ki0047075b-MAL-ED          PERU           0                0        1     2
0-6 months    ki0047075b-MAL-ED          PERU           0                1        0     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                1        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                0      156   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                1        6   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                0      181   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                1       25   368
0-6 months    ki1000108-IRC              INDIA          1                0      219   399
0-6 months    ki1000108-IRC              INDIA          1                1       12   399
0-6 months    ki1000108-IRC              INDIA          0                0      156   399
0-6 months    ki1000108-IRC              INDIA          0                1       12   399
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                0      549   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                1       22   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                0      121   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                1        8   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                0      355   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                1        5   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                0      210   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                1        7   577
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                0        9   537
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                1        0   537
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                0      507   537
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                1       21   537
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0      147   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       16   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0      156   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1       54   373
6-24 months   ki1000108-IRC              INDIA          1                0      202   400
6-24 months   ki1000108-IRC              INDIA          1                1       29   400
6-24 months   ki1000108-IRC              INDIA          0                0      137   400
6-24 months   ki1000108-IRC              INDIA          0                1       32   400
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      456   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                1       51   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                0       83   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       24   614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      316   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       27   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      200   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       16   559
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                0        8   529
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   529
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                0      350   529
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                1      171   529


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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




# Results Detail

## Results Plots
![](/tmp/ae8b61ef-12b2-4b53-81d2-bf3dabdb8c4a/5f4d6175-fae6-47ed-953b-1843fb45d0ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae8b61ef-12b2-4b53-81d2-bf3dabdb8c4a/5f4d6175-fae6-47ed-953b-1843fb45d0ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae8b61ef-12b2-4b53-81d2-bf3dabdb8c4a/5f4d6175-fae6-47ed-953b-1843fb45d0ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae8b61ef-12b2-4b53-81d2-bf3dabdb8c4a/5f4d6175-fae6-47ed-953b-1843fb45d0ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1335358   0.0794927   0.1875789
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3062950   0.2433379   0.3692520
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.1419024   0.0966199   0.1871850
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.2314115   0.1670776   0.2957454
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1106306   0.0848438   0.1364175
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2026078   0.1312591   0.2739565
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0864911   0.0573455   0.1156367
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0778650   0.0421426   0.1135874
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0370370   0.0079162   0.0661579
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1213592   0.0767066   0.1660119
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.0523752   0.0236341   0.0811163
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.0728133   0.0330792   0.1125475
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0385289   0.0227309   0.0543269
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0620155   0.0203658   0.1036652
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0138889   0.0017893   0.0259885
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0322581   0.0087296   0.0557865
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0988344   0.0523726   0.1452961
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2563450   0.1967894   0.3159007
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.1253624   0.0825999   0.1681249
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.1911776   0.1317103   0.2506449
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1008020   0.0746188   0.1269852
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2398234   0.1593186   0.3203281
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0790552   0.0504055   0.1077049
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0711708   0.0371523   0.1051894


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1800000   0.1423032   0.2176968
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0831889   0.0606356   0.1057422
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.0601504   0.0367913   0.0835094
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0207972   0.0091432   0.0324513
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1525000   0.1172250   0.1877750
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0769231   0.0548136   0.0990325


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.2937294   1.4559578   3.613563
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 1.6307788   1.0677492   2.490697
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.8313893   1.1994934   2.796169
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9002659   0.5088126   1.592883
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 3.2766990   1.3753959   7.806302
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 1.3902250   0.6430711   3.005462
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.6095842   0.7327878   3.535487
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 2.3225806   0.7456384   7.234581
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.5936830   1.5332461   4.387548
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 1.5249993   0.9605571   2.421119
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.3791529   1.5541996   3.641983
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9002676   0.4943761   1.639403


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0970272    0.0488789   0.1451755
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0380976    0.0045446   0.0716505
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0179408    0.0037945   0.0320871
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0033022   -0.0208046   0.0142002
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0472021    0.0170547   0.0773495
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0077752   -0.0126701   0.0282204
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0043282   -0.0039085   0.0125650
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0069083   -0.0030683   0.0168850
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0888332    0.0454233   0.1322431
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0271376   -0.0038696   0.0581448
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0213478    0.0063636   0.0363321
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0021321   -0.0196577   0.0153935


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4208273    0.1820262   0.5899123
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.2116531    0.0057371   0.3749230
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1395394    0.0250294   0.2406002
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0396953   -0.2726492   0.1506172
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.5603345    0.1129210   0.7820874
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.1292623   -0.2813025   0.4082708
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1009924   -0.1095560   0.2715873
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.3321759   -0.2968904   0.6561089
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4733540    0.2084490   0.6496043
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.1779513   -0.0489553   0.3557742
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1747676    0.0477724   0.2848258
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0277173   -0.2826344   0.1765363
