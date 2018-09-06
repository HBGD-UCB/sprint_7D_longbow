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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        hdlvry    n_cell      n
-------------  -------------------------  -----------------------------  -------  -------  -----
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             87     87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              0     87
0-3 months     ki1000108-IRC              INDIA                          0            370    377
0-3 months     ki1000108-IRC              INDIA                          1              7    377
0-3 months     ki1000109-EE               PAKISTAN                       0            386    590
0-3 months     ki1000109-EE               PAKISTAN                       1            204    590
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            127    976
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            849    976
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            474    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            160    634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            557    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            163    720
0-3 months     ki1135781-COHORTS          INDIA                          0           2863   4580
0-3 months     ki1135781-COHORTS          INDIA                          1           1717   4580
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             66    626
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            560    626
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            738   3592
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           2854   3592
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            298    305
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              7    305
3-6 months     ki1000108-IRC              INDIA                          0            389    397
3-6 months     ki1000108-IRC              INDIA                          1              8    397
3-6 months     ki1000109-EE               PAKISTAN                       0            436    658
3-6 months     ki1000109-EE               PAKISTAN                       1            222    658
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            124    919
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            795    919
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            428    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            146    574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            536    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            159    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1549   1577
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             28   1577
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0            204    876
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            672    876
3-6 months     ki1135781-COHORTS          INDIA                          0           2754   4481
3-6 months     ki1135781-COHORTS          INDIA                          1           1727   4481
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             56    550
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            494    550
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            824   3504
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           2680   3504
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            314    321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              7    321
6-12 months    ki1000108-IRC              INDIA                          0            392    400
6-12 months    ki1000108-IRC              INDIA                          1              8    400
6-12 months    ki1000109-EE               PAKISTAN                       0              8      8
6-12 months    ki1000109-EE               PAKISTAN                       1              0      8
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            131    936
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            805    936
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             67    332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            265    332
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            404    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            141    545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            523    676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            153    676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1015   1025
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             10   1025
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0            210    892
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1            682    892
6-12 months    ki1135781-COHORTS          INDIA                          0           2239   3598
6-12 months    ki1135781-COHORTS          INDIA                          1           1359   3598
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0             57    485
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            428    485
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1498   5600
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           4102   5600
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            315    322
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              7    322
12-24 months   ki1000108-IRC              INDIA                          0            388    396
12-24 months   ki1000108-IRC              INDIA                          1              8    396
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            340    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118    458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            379    495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            116    495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              2      2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      2
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0            172    682
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1            510    682
12-24 months   ki1135781-COHORTS          INDIA                          0           1876   2999
12-24 months   ki1135781-COHORTS          INDIA                          1           1123   2999
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             47    381
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            334    381
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1607   6207
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           4600   6207


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d47ea077-ef0b-4c06-80f4-2cc4a68f9815/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d47ea077-ef0b-4c06-80f4-2cc4a68f9815/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.1779630   3.0653103   3.2906156
0-3 months     ki1000108-IRC              INDIA                          1                    NA                2.9063845   1.9745063   3.8382627
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.6867358   2.5778573   2.7956144
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.6176834   2.5060590   2.7293077
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.6275193   3.5401725   3.7148661
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.5890680   3.5650276   3.6131084
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5060711   3.4601577   3.5519845
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4267719   3.3587588   3.4947850
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.3212052   3.2777954   3.3646151
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.2401965   3.1609139   3.3194791
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5642269   3.5431528   3.5853009
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4668060   3.4405643   3.4930476
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.4969147   3.2957640   3.6980654
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6709444   3.6083187   3.7335701
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.6046610   3.5191353   3.6901867
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.6470997   3.6142565   3.6799429
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8068881   1.7046818   1.9090944
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.9008428   1.1896067   2.6120788
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8829475   1.8181899   1.9477050
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.7701196   1.4503290   2.0899102
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0304379   1.9557436   2.1051322
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.0209928   1.9222684   2.1197172
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9673305   1.9194936   2.0151674
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.8974614   1.8278093   1.9671135
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9616990   1.9212253   2.0021727
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                2.0070876   1.9437516   2.0704237
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                2.0163544   1.9746554   2.0580534
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9716499   1.9085449   2.0347549
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7926442   1.7556146   1.8296739
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4347157   1.2806071   1.5888243
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7445548   1.6828617   1.8062479
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.7126816   1.6668060   1.7585572
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8798171   1.8615533   1.8980808
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8010913   1.7792139   1.8229687
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                2.0868157   1.9633906   2.2102408
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.8783924   1.8164169   1.9403678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8864059   1.8171492   1.9556626
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8964829   1.8646359   1.9283299
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0590074   1.0102042   1.1078106
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.2480272   1.0711403   1.4249140
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2497479   1.2201637   1.2793322
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1906904   1.0068629   1.3745179
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.1076571   1.0643660   1.1509482
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.0921020   1.0750407   1.1091633
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.0266156   0.8708352   1.1823960
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.0124029   0.9275038   1.0973021
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1810114   1.1614219   1.2006009
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1777762   1.1498364   1.2057160
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2283560   1.2084329   1.2482790
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2257863   1.1934064   1.2581663
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1949823   1.1729827   1.2169820
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0347159   0.8290512   1.2403807
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1569507   1.1239635   1.1899378
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1611461   1.1373264   1.1849659
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.1027985   1.0904859   1.1151110
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0551651   1.0397487   1.0705815
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.0659812   0.9858876   1.1460747
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.0500123   0.9996993   1.1003253
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.2264713   1.2076234   1.2453192
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.1987420   1.1862091   1.2112749
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7400815   0.7133492   0.7668139
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6467578   0.4824516   0.8110641
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8309488   0.8111401   0.8507576
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7585329   0.6770278   0.8400381
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8572828   0.8432321   0.8713334
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8566994   0.8366741   0.8767247
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8776682   0.8640222   0.8913143
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8742218   0.8520051   0.8964384
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8019458   0.7798894   0.8240022
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8311714   0.8125440   0.8497987
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8383227   0.8310549   0.8455904
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7769522   0.7677411   0.7861633
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8185776   0.7825181   0.8546371
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7826315   0.7538385   0.8114244
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8609084   0.8496976   0.8721191
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8479609   0.8413203   0.8546014


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6584728   2.5745279   2.7424177
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.5978528   3.5675578   3.6281478
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5316726   3.5145737   3.5487714
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6717783   3.6046717   3.7388850
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6373098   3.6059106   3.6687089
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8090444   1.7078462   1.9102427
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0257728   1.9650303   2.0865152
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9057893   1.8442152   1.9673633
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7898602   1.7530949   1.8266255
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7124798   1.6715373   1.7534223
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8571473   1.8427398   1.8715548
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.8747997   1.8153916   1.9342078
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8985588   1.8677350   1.9293826
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0631293   1.0151394   1.1111193
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0945527   1.0814129   1.1076925
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1937602   1.1717617   1.2157587
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1671480   1.1467111   1.1875848
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0832218   1.0732207   1.0932230
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.0531497   1.0100284   1.0962709
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2059987   1.1951874   1.2168101
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7380528   0.7116168   0.7644888
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8398056   0.8238438   0.8557674
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8173099   0.8112554   0.8233643
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7811460   0.7528156   0.8094764
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8509740   0.8450306   0.8569174


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.2715785   -1.2102411    0.6670842
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0690525   -0.2243142    0.0862093
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0384513   -0.1250723    0.0481697
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0792992   -0.1613614    0.0027629
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0810088   -0.1713123    0.0092947
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0974209   -0.1305025   -0.0643393
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1740297   -0.0246944    0.3727538
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0424387   -0.0497087    0.1345862
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0939547   -0.6245875    0.8124969
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.1128279   -0.4391093    0.2134535
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0094451   -0.1321481    0.1132579
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0698691   -0.1654764    0.0257382
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0453886   -0.0296051    0.1203824
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0447045   -0.1189703    0.0295612
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3579285   -0.5162805   -0.1995765
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0318732   -0.1085972    0.0448509
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0787258   -0.1070979   -0.0503536
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2084233   -0.3399532   -0.0768934
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0100770   -0.0647511    0.0849052
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1890198    0.0055240    0.3725156
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0590575   -0.2452504    0.1271353
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0155551   -0.0675328    0.0364226
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0142127   -0.1901420    0.1617167
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0032352   -0.0363809    0.0299105
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0025696   -0.0402664    0.0351271
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1602664   -0.3671102    0.0465774
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0041954   -0.0365034    0.0448943
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0476334   -0.0672739   -0.0279928
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0159689   -0.1192674    0.0873297
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0277292   -0.0501784   -0.0052801
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0933237   -0.2597904    0.0731430
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0724159   -0.1562936    0.0114618
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0005834   -0.0248507    0.0236840
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0034465   -0.0294747    0.0225817
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0292255    0.0004627    0.0579884
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0613705   -0.0730109   -0.0497301
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0359461   -0.0739936    0.0021014
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0129475   -0.0254988   -0.0003962
