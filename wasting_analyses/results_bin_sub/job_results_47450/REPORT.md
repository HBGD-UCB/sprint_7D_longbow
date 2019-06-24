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

agecat        studyid                    country                        nchldlt5    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                 0       69     291
0-24 months   ki1000108-IRC              INDIA                          1                 1       20     291
0-24 months   ki1000108-IRC              INDIA                          2+                0      165     291
0-24 months   ki1000108-IRC              INDIA                          2+                1       37     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      447     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       65     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0       11     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      496     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       45     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        6     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1552    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       85    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       77    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        2    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 0      956    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 1      117    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                0      714    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                1      129    1916
0-24 months   ki1148112-LCNI-5           MALAWI                         1                 0      376     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                 1       15     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                0       60     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                1        3     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    15663   17829
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1535   17829
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0      578   17829
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1       53   17829
0-6 months    ki1000108-IRC              INDIA                          1                 0       79     290
0-6 months    ki1000108-IRC              INDIA                          1                 1       10     290
0-6 months    ki1000108-IRC              INDIA                          2+                0      192     290
0-6 months    ki1000108-IRC              INDIA                          2+                1        9     290
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      491     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       21     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0       11     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      531     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        6     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1622    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       15    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       79    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                 0      122     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                0       23     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                1        0     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    16387   17741
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      725   17741
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0      606   17741
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1       23   17741
6-24 months   ki1000108-IRC              INDIA                          1                 0       73     291
6-24 months   ki1000108-IRC              INDIA                          1                 1       16     291
6-24 months   ki1000108-IRC              INDIA                          2+                0      169     291
6-24 months   ki1000108-IRC              INDIA                          2+                1       33     291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      396     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       52     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0        9     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      481     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       39     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        5     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1303    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       80    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       62    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        2    1447
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 0      956    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 1      117    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                0      714    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                1      129    1916
6-24 months   ki1148112-LCNI-5           MALAWI                         1                 0      369     446
6-24 months   ki1148112-LCNI-5           MALAWI                         1                 1       15     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                0       59     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                1        3     446
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10266   11565
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      924   11565
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0      340   11565
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1       35   11565


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/716605fe-c6a0-41ca-b56f-f67a944bd763/27421c5e-c69b-47bf-92be-af5f757cad34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/716605fe-c6a0-41ca-b56f-f67a944bd763/27421c5e-c69b-47bf-92be-af5f757cad34/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/716605fe-c6a0-41ca-b56f-f67a944bd763/27421c5e-c69b-47bf-92be-af5f757cad34/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/716605fe-c6a0-41ca-b56f-f67a944bd763/27421c5e-c69b-47bf-92be-af5f757cad34/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                0.2093207   0.1244008   0.2942407
0-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1810296   0.1276656   0.2343936
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1051964   0.0774250   0.1329678
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.1527073   0.1209093   0.1845053
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0886709   0.0839303   0.0934115
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.1023023   0.0845181   0.1200864
0-6 months    ki1000108-IRC          INDIA          1                    NA                0.1123596   0.0466351   0.1780840
0-6 months    ki1000108-IRC          INDIA          2+                   NA                0.0447761   0.0161359   0.0734163
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0422836   0.0391304   0.0454368
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.0396099   0.0234380   0.0557818
6-24 months   ki1000108-IRC          INDIA          1                    NA                0.1595165   0.0869801   0.2320528
6-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1557670   0.1059012   0.2056327
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1050056   0.0762763   0.1337349
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.1560559   0.1250861   0.1870257
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0825224   0.0767798   0.0882650
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.0887206   0.0586287   0.1188126


### Parameter: E(Y)


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          NA                   NA                0.1958763   0.1501989   0.2415537
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1283925   0.1061546   0.1506304
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0890684   0.0844497   0.0936870
0-6 months    ki1000108-IRC          INDIA          NA                   NA                0.0655172   0.0369898   0.0940447
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0421622   0.0390671   0.0452573
6-24 months   ki1000108-IRC          INDIA          NA                   NA                0.1683849   0.1253162   0.2114536
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1283925   0.1061546   0.1506304
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0829226   0.0772615   0.0885837


### Parameter: RR


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC          INDIA          2+                   1                 0.8648432   0.5236968   1.4282190
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.4516398   1.0785634   1.9537637
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 1.1537305   0.9656555   1.3784357
0-6 months    ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC          INDIA          2+                   1                 0.3985075   0.1674954   0.9481349
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 0.9367678   0.6193253   1.4169192
6-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC          INDIA          2+                   1                 0.9764946   0.5590994   1.7054957
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.4861674   1.0971776   2.0130683
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 1.0751096   0.7620514   1.5167752


### Parameter: PAR


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                -0.0134445   -0.0836870   0.0567981
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0231961    0.0057113   0.0406808
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0003975   -0.0005756   0.0013706
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.0468423   -0.0966631   0.0029785
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     1                    NA                -0.0001214   -0.0006842   0.0004415
6-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0088684   -0.0520711   0.0698080
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0233869    0.0054802   0.0412936
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0004002   -0.0007096   0.0015100


### Parameter: PAF


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                -0.0686375   -0.4945822    0.2359162
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1806654    0.0296652    0.3081675
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0044629   -0.0065300    0.0153359
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.7149615   -1.5950707   -0.1333383
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     1                    NA                -0.0028785   -0.0163162    0.0103814
6-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0526675   -0.3872925    0.3531005
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1821516    0.0254285    0.3136717
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0048263   -0.0086435    0.0181162
