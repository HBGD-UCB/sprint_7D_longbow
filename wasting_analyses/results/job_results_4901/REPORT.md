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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* brthmon
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
* delta_W_nchldlt5
* delta_brthmon
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

agecat        studyid                    country                        vagbrth    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       11     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        9     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      109     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      197     326
0-24 months   ki1000108-IRC              INDIA                          0                    0       24     395
0-24 months   ki1000108-IRC              INDIA                          0                    1       39     395
0-24 months   ki1000108-IRC              INDIA                          1                    0      138     395
0-24 months   ki1000108-IRC              INDIA                          1                    1      194     395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       26     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       43     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      102     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      136     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       18     190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       43     190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       58     190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       71     190
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       24     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       32     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      240     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      409     705
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0       68    4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1      391    4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      547    4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1     3425    4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      119    3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      182    3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1494    3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1748    3543
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      412   15099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      482   15099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     8303   15099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5902   15099
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      168    3577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       94    3577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2414    3577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      901    3577
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        8     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        8     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       58     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      129     203
0-6 months    ki1000108-IRC              INDIA                          0                    0       16     240
0-6 months    ki1000108-IRC              INDIA                          0                    1       31     240
0-6 months    ki1000108-IRC              INDIA                          1                    0       71     240
0-6 months    ki1000108-IRC              INDIA                          1                    1      122     240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0        6     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       40     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0       33     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      105     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        4     112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       37     112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       10     112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       61     112
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0        8     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       17     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       91     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      219     335
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0       50    4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1      388    4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      438    4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1     3387    4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       42    2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      177    2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      600    2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1680    2499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0      164    9454
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      482    9454
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2906    9454
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5902    9454
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0       34    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       66    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      368    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      552    1020
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        3     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        1     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       51     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       68     123
6-24 months   ki1000108-IRC              INDIA                          0                    0        8     155
6-24 months   ki1000108-IRC              INDIA                          0                    1        8     155
6-24 months   ki1000108-IRC              INDIA                          1                    0       67     155
6-24 months   ki1000108-IRC              INDIA                          1                    1       72     155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       20     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        3     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       69     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       31     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       14      78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        6      78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       48      78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       10      78
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       16     370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       15     370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      149     370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      190     370
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0       18     168
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1        3     168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      109     168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1       38     168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       77    1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1        5    1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      894    1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       68    1044
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      248    5645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0    5645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5397    5645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0    5645
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      134    2557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       28    2557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2046    2557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      349    2557


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3f7ee1de-be8c-41f9-bdec-310052d13c6b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f7ee1de-be8c-41f9-bdec-310052d13c6b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f7ee1de-be8c-41f9-bdec-310052d13c6b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f7ee1de-be8c-41f9-bdec-310052d13c6b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4500000   0.2006580   0.6993420
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6437908   0.5870303   0.7005514
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.6207246   0.4791006   0.7623487
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5840095   0.5280858   0.6399331
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7894365   0.6832348   0.8956383
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5889621   0.5259319   0.6519923
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7108761   0.5897244   0.8320279
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5545109   0.4719497   0.6370721
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5259758   0.4125976   0.6393541
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6282093   0.5891160   0.6673026
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8695255   0.8434355   0.8956154
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8634837   0.8529177   0.8740497
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6358097   0.5965732   0.6750462
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5398751   0.5227181   0.5570320
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4600852   0.4302196   0.4899507
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4151853   0.4038376   0.4265331
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3887354   0.3053772   0.4720936
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2720041   0.2499890   0.2940192
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5000000   0.2472620   0.7527380
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6898396   0.6225361   0.7571431
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.6595745   0.5187984   0.8003505
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6321244   0.5625866   0.7016621
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8695652   0.7703543   0.9687761
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7608696   0.6908322   0.8309069
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6800000   0.4929570   0.8670430
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7064516   0.6550297   0.7578735
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.9023588   0.8772940   0.9274236
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8863115   0.8761911   0.8964320
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7715376   0.7387339   0.8043413
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7363315   0.7185720   0.7540910
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.6840103   0.6559241   0.7120964
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6725285   0.6588223   0.6862347
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6941736   0.5762570   0.8120901
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6005553   0.5558173   0.6452933
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5000000   0.2294903   0.7705097
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5179856   0.4297875   0.6061838
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3000000   0.0725547   0.5274453
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1724138   0.0793318   0.2654957
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4630670   0.2949159   0.6312181
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5599758   0.5055322   0.6144194
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0609756   0.0065400   0.1154112
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0706861   0.0547411   0.0866311
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1771307   0.0993625   0.2548988
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1458378   0.1261106   0.1655650


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6000000   0.5288495   0.6711505
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6255319   0.5876598   0.6634040
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5447361   0.5281997   0.5612725
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4228095   0.4116714   0.4339475
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2781661   0.2567200   0.2996121
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7044776   0.6548846   0.7540707
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7430972   0.7259776   0.7602169
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752697   0.6619203   0.6886192
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2051282   0.1132549   0.2970015
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5540541   0.5015831   0.6065250
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0699234   0.0546210   0.0852257
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1474384   0.1282205   0.1666563


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4306463   0.8163766   2.5071137
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9408511   0.7346560   1.2049187
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.7460537   0.6278762   0.8864744
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.7800387   0.6240112   0.9750792
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1943691   0.9547844   1.4940730
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.9930516   0.9616073   1.0255242
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8491143   0.7926624   0.9095867
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9024097   0.8413498   0.9679009
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.6997153   0.5563747   0.8799853
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3796791   0.8245122   2.3086554
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9583821   0.7537882   1.2185071
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8750000   0.7556881   1.0131495
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0388994   0.7816335   1.3808416
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.9822163   0.9532954   1.0120147
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9543689   0.9108885   0.9999248
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9832141   0.9395443   1.0289136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8651372   0.7186567   1.0414740
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0359712   0.5874383   1.8269773
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.5747126   0.2266054   1.4575764
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2092761   0.8316510   1.7583682
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1592516   0.4616155   2.9112199
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8233348   0.5200519   1.3034857


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1819018   -0.0576922    0.4214959
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0308512   -0.1588064    0.0971040
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.2063747   -0.3000566   -0.1126927
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1108761   -0.2089881   -0.0127642
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0995561   -0.0088134    0.2079255
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0083203   -0.0330447    0.0164040
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0910736   -0.1292032   -0.0529439
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0372757   -0.0668265   -0.0077249
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1105693   -0.1902001   -0.0309386
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1748768   -0.0657175    0.4154712
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0220745   -0.1483923    0.1042433
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0815217   -0.1728369    0.0097935
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244776   -0.1550298    0.2039850
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0168322   -0.0406592    0.0069949
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0284404   -0.0603391    0.0034583
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0087405   -0.0371455    0.0196644
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0882912   -0.2011687    0.0245863
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0161290   -0.2390237    0.2712818
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0948718   -0.2780930    0.0883494
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0909871   -0.0691553    0.2511295
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0089478   -0.0433206    0.0612162
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0296922   -0.1045141    0.0451296


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2878641   -0.2169136    0.5832592
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0523014   -0.2928483    0.1434894
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.3539498   -0.5312340   -0.1971914
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1847936   -0.3618333   -0.0307692
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1591543   -0.0330905    0.3156248
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0096613   -0.0387902    0.0186509
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1671884   -0.2403182   -0.0983704
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0881620   -0.1607831   -0.0200841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3974940   -0.7155819   -0.1383831
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2591241   -0.2023404    0.5434761
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0346266   -0.2530595    0.1457291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1034483   -0.2274251    0.0080062
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0347458   -0.2569309    0.2587375
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0190081   -0.0462894    0.0075619
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0382728   -0.0823055    0.0039685
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0129438   -0.0559637    0.0283235
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1457233   -0.3491565    0.0270350
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0312500   -0.6139924    0.4185372
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.4625000   -1.6271554    0.1858471
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1642206   -0.1815208    0.4087898
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1279653   -1.0561158    0.6301548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2013875   -0.8327963    0.2124974
