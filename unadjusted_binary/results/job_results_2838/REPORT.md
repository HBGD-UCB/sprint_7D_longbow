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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       77      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        2      90
Birth       ki1000108-IRC              INDIA                          0                 0       67     388
Birth       ki1000108-IRC              INDIA                          0                 1        1     388
Birth       ki1000108-IRC              INDIA                          1                 0      305     388
Birth       ki1000108-IRC              INDIA                          1                 1       15     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       18      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        0      19
Birth       ki1119695-PROBIT           BELARUS                        0                 0     1596   13884
Birth       ki1119695-PROBIT           BELARUS                        0                 1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        1                 0    12283   13884
Birth       ki1119695-PROBIT           BELARUS                        1                 1        4   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     1133   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       29   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 0    12150   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      404   13716
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0        4   39172
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1        2   39172
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    35088   39172
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4078   39172
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0        2    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1514    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      128    1644
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       23     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      304     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       40     369
6 months    ki1000108-IRC              INDIA                          0                 0       64     407
6 months    ki1000108-IRC              INDIA                          0                 1        5     407
6 months    ki1000108-IRC              INDIA                          1                 0      314     407
6 months    ki1000108-IRC              INDIA                          1                 1       24     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      132     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        2     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      437     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      183     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        4     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      258     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       12     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0      189    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1797    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       19    2005
6 months    ki1119695-PROBIT           BELARUS                        0                 0     1771   15761
6 months    ki1119695-PROBIT           BELARUS                        0                 1       28   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 0    13747   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 1      215   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0      682    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       25    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     7200    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      321    8228
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2058   33458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1       96   33458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    29370   33458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1934   33458
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      651    8094
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       20    8094
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     7002    8094
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      421    8094
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      233     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1      114     372
24 months   ki1000108-IRC              INDIA                          0                 0       66     409
24 months   ki1000108-IRC              INDIA                          0                 1        3     409
24 months   ki1000108-IRC              INDIA                          1                 0      302     409
24 months   ki1000108-IRC              INDIA                          1                 1       38     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      130     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1        7     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      398     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       42     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0       92     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        7     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      147     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       14     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ki1119695-PROBIT           BELARUS                        0                 0      465    4035
24 months   ki1119695-PROBIT           BELARUS                        0                 1        7    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 0     3505    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 1       58    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0       22     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1        7     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      299     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      122     450
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0      888   17155
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1       72   17155
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    13602   17155
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2593   17155
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      617    8030
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       28    8030
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     6690    8030
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      695    8030


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/eb4bfea9-2ed6-4010-861c-c71340ec7f94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eb4bfea9-2ed6-4010-861c-c71340ec7f94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eb4bfea9-2ed6-4010-861c-c71340ec7f94/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eb4bfea9-2ed6-4010-861c-c71340ec7f94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0249570    0.0159875   0.0339265
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0321810    0.0290937   0.0352682
6 months    ki1000108-IRC              INDIA        0                    NA                0.0724638    0.0112169   0.1337106
6 months    ki1000108-IRC              INDIA        1                    NA                0.0710059    0.0435916   0.0984202
6 months    ki1119695-PROBIT           BELARUS      0                    NA                0.0155642    0.0081933   0.0229351
6 months    ki1119695-PROBIT           BELARUS      1                    NA                0.0153989    0.0100170   0.0207808
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0353607    0.0217460   0.0489754
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0426805    0.0381119   0.0472491
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0445682    0.0315608   0.0575757
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0617812    0.0577574   0.0658051
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0298063    0.0129768   0.0466357
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0567156    0.0477151   0.0657161
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3600000    0.1715900   0.5484100
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3285303    0.2790458   0.3780147
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0510949    0.0141916   0.0879981
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0954545    0.0679748   0.1229342
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0707071    0.0201159   0.1212983
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0869565    0.0433483   0.1305648
24 months   ki1119695-PROBIT           BELARUS      0                    NA                0.0148305   -0.0010089   0.0306699
24 months   ki1119695-PROBIT           BELARUS      1                    NA                0.0162784    0.0034501   0.0291067
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.2413793    0.0854619   0.3972967
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.2897862    0.2464028   0.3331696
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0750000    0.0506573   0.0993427
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1601111    0.1511115   0.1691108
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0434109    0.0192442   0.0675775
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0941097    0.0832909   0.1049284


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0315690   0.0286427   0.0344952
6 months    ki1000108-IRC              INDIA        NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1119695-PROBIT           BELARUS      NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0420515   0.0377145   0.0463885
6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0606731   0.0568223   0.0645238
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0544848   0.0460908   0.0628788
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0807692   0.0475849   0.1139536
24 months   ki1119695-PROBIT           BELARUS      NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.2866667   0.2448394   0.3284940
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1553483   0.1465904   0.1641062
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0900374   0.0798750   0.1001998


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.2894585   0.8889094   1.870498
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.9798817   0.3869206   2.481564
6 months    ki1119695-PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS      1                    0                 0.9893819   0.7033643   1.391706
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.2070044   0.8093821   1.799965
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.3862166   1.0268026   1.871437
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.9028088   1.0603214   3.414702
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.9125841   0.5293636   1.573228
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.8681818   0.8585216   4.065248
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.2298137   0.5133025   2.946492
24 months   ki1119695-PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS      1                    0                 1.0976304   0.5128046   2.349418
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.2005429   0.6186031   2.329932
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 2.1348153   1.5386817   2.961910
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 2.1678836   1.2263267   3.832355


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0066120   -0.0020704   0.0152944
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0012107   -0.0569370   0.0545156
6 months    ki1119695-PROBIT           BELARUS      0                    NA                -0.0001464   -0.0048486   0.0045558
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0066909   -0.0064360   0.0198177
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0161048    0.0033042   0.0289055
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0246785    0.0072932   0.0420638
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0293548   -0.2110652   0.1523555
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0338271   -0.0012929   0.0689471
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0100622   -0.0313086   0.0514329
24 months   ki1119695-PROBIT           BELARUS      0                    NA                 0.0012785   -0.0087765   0.0113336
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0452874   -0.1061274   0.1967021
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0803483    0.0562000   0.1044966
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0466265    0.0222100   0.0710430


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.2094462   -0.1185678   0.4412718
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0169915   -1.1942765   0.5286502
6 months    ki1119695-PROBIT           BELARUS      0                    NA                -0.0094954   -0.3653037   0.2535865
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.1591108   -0.2183008   0.4196059
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.2654363    0.0223065   0.4481053
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.4529436    0.0446255   0.6867504
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0887805   -0.8036630   0.3427581
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3983316   -0.1719098   0.6910983
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1245791   -0.5676421   0.5111373
24 months   ki1119695-PROBIT           BELARUS      0                    NA                 0.0793677   -0.8142793   0.5328372
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.1579791   -0.5764038   0.5502427
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.5172139    0.3364626   0.6487275
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.5178573    0.1667330   0.7210239
