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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    sstunted   n_cell      n
----------  -------------------------  -----------------------------  -------  ---------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       87     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        3     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        0     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0     90
Birth       ki1000108-IRC              INDIA                          0                0      365    388
Birth       ki1000108-IRC              INDIA                          0                1       16    388
Birth       ki1000108-IRC              INDIA                          1                0        7    388
Birth       ki1000108-IRC              INDIA                          1                1        0    388
Birth       ki1000109-EE               PAKISTAN                       0                0        2      2
Birth       ki1000109-EE               PAKISTAN                       0                1        0      2
Birth       ki1000109-EE               PAKISTAN                       1                0        0      2
Birth       ki1000109-EE               PAKISTAN                       1                1        0      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0       10    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        1    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0      160    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        9    180
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0       21     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        5     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     27
Birth       ki1135781-COHORTS          INDIA                          0                0     2855   4694
Birth       ki1135781-COHORTS          INDIA                          0                1       83   4694
Birth       ki1135781-COHORTS          INDIA                          1                0     1702   4694
Birth       ki1135781-COHORTS          INDIA                          1                1       54   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       11    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0      274    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       15    300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0       45    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        2    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      711    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1       62    820
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      318    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       40    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0        7    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1    366
6 months    ki1000108-IRC              INDIA                          0                0      370    407
6 months    ki1000108-IRC              INDIA                          0                1       29    407
6 months    ki1000108-IRC              INDIA                          1                0        8    407
6 months    ki1000108-IRC              INDIA                          1                1        0    407
6 months    ki1000109-EE               PAKISTAN                       0                0      186    370
6 months    ki1000109-EE               PAKISTAN                       0                1       62    370
6 months    ki1000109-EE               PAKISTAN                       1                0       90    370
6 months    ki1000109-EE               PAKISTAN                       1                1       32    370
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      141   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1        6   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      839   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1      105   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0       69    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        7    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      257    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       47    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      426    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        7    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      143    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        7    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      535    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       19    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      157    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        4    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1873   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       16   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       30   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      127    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        2    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      383    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       15    527
6 months    ki1135781-COHORTS          INDIA                          0                0     2788   4699
6 months    ki1135781-COHORTS          INDIA                          0                1      112   4699
6 months    ki1135781-COHORTS          INDIA                          1                0     1680   4699
6 months    ki1135781-COHORTS          INDIA                          1                1      119   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       37    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        2    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0      283    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       10    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     1028   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       53   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     2791   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      166   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      241    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1      120    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0        6    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        2    369
24 months   ki1000108-IRC              INDIA                          0                0      362    409
24 months   ki1000108-IRC              INDIA                          0                1       39    409
24 months   ki1000108-IRC              INDIA                          1                0        6    409
24 months   ki1000108-IRC              INDIA                          1                1        2    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      398    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       34    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      130    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       15    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      365    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       26    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      114    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        9    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      107    467
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       13    467
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      313    467
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       34    467
24 months   ki1135781-COHORTS          INDIA                          0                0     1912   3559
24 months   ki1135781-COHORTS          INDIA                          0                1      321   3559
24 months   ki1135781-COHORTS          INDIA                          1                0      904   3559
24 months   ki1135781-COHORTS          INDIA                          1                1      422   3559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0       31    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        4    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      205    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       51    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      974   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       59   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2670   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      302   4005


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/3d7b6132-3b9c-49b3-9d22-b98dfaba3a8c/58c9e139-ed5e-4ab6-aad4-3850794cb954/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d7b6132-3b9c-49b3-9d22-b98dfaba3a8c/58c9e139-ed5e-4ab6-aad4-3850794cb954/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d7b6132-3b9c-49b3-9d22-b98dfaba3a8c/58c9e139-ed5e-4ab6-aad4-3850794cb954/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d7b6132-3b9c-49b3-9d22-b98dfaba3a8c/58c9e139-ed5e-4ab6-aad4-3850794cb954/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0282505   0.0222587   0.0342423
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.0307517   0.0226759   0.0388275
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.2500000   0.1960352   0.3039648
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.2622951   0.1841337   0.3404565
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0408163   0.0221750   0.0594577
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1112288   0.0906768   0.1317809
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0921053   0.0270064   0.1572041
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1546053   0.1139117   0.1952988
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0161663   0.0042773   0.0280552
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0466667   0.0128834   0.0804499
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0386207   0.0316069   0.0456345
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0661479   0.0546617   0.0776340
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0490287   0.0351950   0.0628623
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0561380   0.0462633   0.0660126
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0787037   0.0532893   0.1041181
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1034483   0.0538359   0.1530607
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0664962   0.0417767   0.0912156
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0731707   0.0271040   0.1192374
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1083333   0.0526654   0.1640013
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0979827   0.0666693   0.1292962
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.1437528   0.1291991   0.1583065
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3182504   0.2931758   0.3433250
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0571152   0.0403034   0.0739270
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1016151   0.0893181   0.1139121


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.0291862   0.0243703   0.0340021
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.2540541   0.2096368   0.2984713
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1017415   0.0806841   0.1227990
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0491594   0.0429771   0.0553417
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0542348   0.0458525   0.0626170
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1006424   0.0733267   0.1279581
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.2087665   0.1954120   0.2221210
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0901373   0.0799465   0.1003281


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0885364   0.7766770   1.525617
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.0491803   0.7261859   1.515837
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 2.7251056   1.6370778   4.536254
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.6785713   0.7895723   3.568516
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.8866667   1.0285604   8.101463
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 1.7127571   1.3322122   2.202004
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.1450029   0.8310255   1.577607
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3144016   0.7372825   2.343270
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.1003752   0.5296782   2.285965
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.9044558   0.4938359   1.656502
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 2.2138726   1.9473253   2.516904
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.7791249   1.2970242   2.440421


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0009357   -0.0028263   0.0046977
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0040541   -0.0272696   0.0353777
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0609252    0.0357423   0.0861081
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0500000   -0.0114686   0.1114686
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0078474   -0.0014306   0.0171255
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0105387    0.0053720   0.0157054
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0052061   -0.0067556   0.0171678
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0062183   -0.0078173   0.0202539
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0015972   -0.0109158   0.0141102
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0076909   -0.0551512   0.0397693
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0650137    0.0538619   0.0761656
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0330221    0.0176925   0.0483518


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0320591   -0.1056968   0.1526524
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0159574   -0.1153830   0.1318320
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.5988233    0.3630716   0.7473142
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.3518518   -0.2498734   0.6638891
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3267898   -0.1300269   0.5989370
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.2143783    0.1056046   0.3099232
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0959918   -0.1523535   0.2908158
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0732237   -0.1065501   0.2237909
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0234563   -0.1785745   0.1908551
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0764184   -0.6676441   0.3052015
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.3114183    0.2584840   0.3605738
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.3663535    0.1744402   0.5136538
