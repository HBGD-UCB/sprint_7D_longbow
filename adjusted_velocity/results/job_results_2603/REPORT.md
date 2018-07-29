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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        hdlvry    n_cell      n
-------------  -------------------------  -----------------------------  -------  -------  -----
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            474    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            160    634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            557    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            163    720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             33    313
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            280    313
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            369   1796
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1427   1796
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             87     87
0-3 months     ki1000108-IRC              INDIA                          0            370    377
0-3 months     ki1000108-IRC              INDIA                          1              7    377
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            127    976
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            849    976
0-3 months     ki1135781-COHORTS          INDIA                          0           2863   4580
0-3 months     ki1135781-COHORTS          INDIA                          1           1717   4580
0-3 months     ki1000109-EE               PAKISTAN                       0            193    295
0-3 months     ki1000109-EE               PAKISTAN                       1            102    295
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            428    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            146    574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            536    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            159    695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             28    275
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            247    275
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            412   1752
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1340   1752
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            298    305
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              7    305
3-6 months     ki1000108-IRC              INDIA                          0            389    397
3-6 months     ki1000108-IRC              INDIA                          1              8    397
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            124    919
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            795    919
3-6 months     ki1135781-COHORTS          INDIA                          0           2754   4481
3-6 months     ki1135781-COHORTS          INDIA                          1           1727   4481
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0            102    438
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            336    438
3-6 months     ki1000109-EE               PAKISTAN                       0            218    329
3-6 months     ki1000109-EE               PAKISTAN                       1            111    329
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1549   1577
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             28   1577
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            404    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            141    545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            523    676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            153    676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0             29    243
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            214    243
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            750   2803
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2053   2803
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            314    321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              7    321
6-12 months    ki1000108-IRC              INDIA                          0            392    400
6-12 months    ki1000108-IRC              INDIA                          1              8    400
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            131    936
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            805    936
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             67    332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            265    332
6-12 months    ki1135781-COHORTS          INDIA                          0           2239   3598
6-12 months    ki1135781-COHORTS          INDIA                          1           1359   3598
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0            105    446
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1            341    446
6-12 months    ki1000109-EE               PAKISTAN                       0              4      4
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1015   1025
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             10   1025
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            340    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118    458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            379    495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            116    495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             24    191
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            167    191
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            805   3107
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2302   3107
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            315    322
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              7    322
12-24 months   ki1000108-IRC              INDIA                          0            388    396
12-24 months   ki1000108-IRC              INDIA                          1              8    396
12-24 months   ki1135781-COHORTS          INDIA                          0           1876   2999
12-24 months   ki1135781-COHORTS          INDIA                          1           1123   2999
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0             86    341
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1            255    341
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              2      2


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

* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       y_rate_haz
## hdlvry -1.19468002409639 -1.1011615443038 -1.05205997647059
##      0                 1                1                 2
##      1                 0                0                 0
##       y_rate_haz
## hdlvry -0.995784821428571 -0.992163785714286 -0.876290642857143
##      0                  2                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## hdlvry -0.859928925925926 -0.854564428571429 -0.824336652173913
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## hdlvry -0.698859892857143 -0.686144162790698 -0.630864888888889
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## hdlvry -0.59297203030303 -0.544120966666667 -0.538705409638554 -0.506945
##      0                 1                  1                  1         1
##      1                 0                  0                  0         0
##       y_rate_haz
## hdlvry -0.4562505 -0.423661178571429 -0.342624896551724 -0.327791621359223
##      0          1                  1                  1                  1
##      1          0                  0                  0                  0
##       y_rate_haz
## hdlvry -0.310570515789474 -0.307788035714286 -0.297482010989011
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## hdlvry -0.281636111111111 -0.278514361445783 -0.275872395348837
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## hdlvry -0.267073463414634 -0.25245861 -0.213266517241379 -0.20054967032967
##      0                  1           1                  1                 1
##      1                  0           0                  0                 0
##       y_rate_haz
## hdlvry -0.189657070588235 -0.17743075 -0.155983076923077
##      0                  1           1                  1
##      1                  0           0                  0
##       y_rate_haz
## hdlvry -0.155539943181818 -0.144841428571429 -0.126118024390244
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## hdlvry -0.118287166666667 -0.0289682857142857 -0.0279693793103448
##      0                  1                   1                   1
##      1                  0                   0                   0
##       y_rate_haz
## hdlvry -0.00790044155844156 -0.00620748979591837 -0.00362103571428571
##      0                    1                    1                    1
##      1                    0                    0                    0
##       y_rate_haz
## hdlvry -0.00334249450549443 0.00362103571428572 0.0155187244897959
##      0                    1                   1                  1
##      1                    0                   0                  0
##       y_rate_haz
## hdlvry 0.0181051785714286 0.0187757407407407 0.0276515454545454
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## hdlvry 0.029820294117647 0.0337963333333333 0.0362103571428571
##      0                 1                  1                  1
##      1                 0                  0                  0
##       y_rate_haz
## hdlvry 0.0395022077922078 0.0513052771084337 0.0894608823529412 0.101389
##      0                  1                  1                  1        1
##      1                  0                  0                  0        0
##       y_rate_haz
## hdlvry 0.123115214285714 0.136485192307692 0.160087894736842
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## hdlvry 0.160823931034483 0.179120566666667 0.180494703296703
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## hdlvry 0.188103276315789 0.235367321428571 0.24408462962963
##      0                 1                 1                1
##      1                 0                 0                0
##       y_rate_haz
## hdlvry 0.249851464285714 0.307788035714286 0.332100704081633
##      0                 1                 1                 1
##      1                 0                 0                 0
##       y_rate_haz
## hdlvry 0.35014573255814 0.364078681818182 0.377321088607595
##      0                1                 1                 1
##      1                0                 0                 0
##       y_rate_haz
## hdlvry 0.398665485436893 0.43399437804878 0.503323964285714 0.5056776375
##      0                 1                1                 1            1
##      1                 0                0                 0            0
##       y_rate_haz
## hdlvry 0.542370072289157 0.579365714285714 0.59720593902439 0.608334
##      0                 1                 1                1        1
##      1                 0                 0                0        0
##       y_rate_haz
## hdlvry 0.643430192307692 0.704951752941176 0.744314541176471 0.7921015625
##      0                 1                 1                 1            1
##      1                 0                 0                 0            0
##       y_rate_haz
## hdlvry 0.8618065 1.00246588732394 1.03002006818182
##      0         1                1                1
##      1         0                0                0
```

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
![](/tmp/0cfceae4-a505-40b9-b80e-4b6b1ee5f3c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0cfceae4-a505-40b9-b80e-4b6b1ee5f3c6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2573121   -0.3135633   -0.2010609
0-3 months     ki1000108-IRC              INDIA                          1                    NA                 0.9507022    0.8365773    1.0648270
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.3869236   -0.4440888   -0.3297585
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.4053109   -0.4651267   -0.3454951
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0179486   -0.0254773    0.0613744
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0038599   -0.0072595    0.0149792
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0300346   -0.0511620   -0.0089071
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0676716   -0.0992791   -0.0360640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1145094   -0.1352139   -0.0938049
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1477871   -0.1820042   -0.1135700
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0592727   -0.0698658   -0.0486795
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0967053   -0.1093169   -0.0840937
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0024957   -0.0492327    0.0542241
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0387975    0.0108476    0.0667474
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0654700    0.0223302    0.1086098
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0683131    0.0524244    0.0842017
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0969975   -0.1452883   -0.0487067
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.2680102    0.0700520    0.4659684
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0509880   -0.0814920   -0.0204840
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0958580   -0.2540005    0.0622844
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0689209    0.0337409    0.1041009
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0744003    0.0283881    0.1204124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0413589   -0.0632006   -0.0195173
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0346496   -0.0659788   -0.0033205
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0317763   -0.0508842   -0.0126684
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0123941   -0.0436282    0.0188400
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0303449    0.0110589    0.0496309
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0152517   -0.0141628    0.0446663
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0860014   -0.1031692   -0.0688336
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2186519   -0.2949367   -0.1423672
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1880771   -0.2185068   -0.1576474
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1635945   -0.1852295   -0.1419596
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0574032   -0.0658894   -0.0489171
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0910467   -0.1011012   -0.0809921
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2169567    0.1808866    0.2530268
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0223014   -0.0507612    0.0061584
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0147423   -0.0473518    0.0178671
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0094299   -0.0240647    0.0052049
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1005054   -0.1215030   -0.0795078
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0065186   -0.0515395    0.0645766
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0258372   -0.0388730   -0.0128014
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0750090   -0.1071872   -0.0428308
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0964600   -0.1153931   -0.0775270
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0861829   -0.0934891   -0.0788766
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0608924   -0.1184910   -0.0032937
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1057454   -0.1394969   -0.0719940
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0616946   -0.0698192   -0.0535700
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0643027   -0.0766904   -0.0519149
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0323660   -0.0407273   -0.0240047
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0286411   -0.0419436   -0.0153385
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0604009   -0.0697922   -0.0510097
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2529788   -0.3116655   -0.1942921
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0681539   -0.0827750   -0.0535328
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0636633   -0.0736904   -0.0536362
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0919553   -0.0971311   -0.0867795
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1001029   -0.1063655   -0.0938403
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1117420   -0.1349678   -0.0885162
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0982822   -0.1198227   -0.0767418
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0308397   -0.0387677   -0.0229117
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0393588   -0.0445731   -0.0341446
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0450468   -0.0551704   -0.0349233
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0381690   -0.0639426   -0.0123955
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0315680   -0.0387454   -0.0243906
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0403240   -0.0582264   -0.0224215
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0086385   -0.0129989   -0.0042781
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0067354   -0.0129797   -0.0004912
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0063967   -0.0109836   -0.0018097
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0016044   -0.0084114    0.0052027
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0208919   -0.0284387   -0.0133451
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0163381   -0.0226057   -0.0100705
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0329439   -0.0353251   -0.0305626
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0424308   -0.0454482   -0.0394135
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0034716   -0.0053281    0.0122713
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0197191   -0.0293405   -0.0100977
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0133084   -0.0172017   -0.0094152
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0143700   -0.0166845   -0.0120555


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3932813   -0.4361258   -0.3504368
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0087093   -0.0074467    0.0248652
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0699385   -0.0782973   -0.0615796
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0349097    0.0045006    0.0653188
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0670726    0.0519630    0.0821823
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0954743   -0.1432951   -0.0476535
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0708740    0.0425313    0.0992167
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0318535   -0.0595705   -0.0041366
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0872216   -0.1042720   -0.0701712
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1634027   -0.1828407   -0.1439647
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0628577   -0.0694923   -0.0562230
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0289883   -0.0560864   -0.0018901
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090395   -0.0231928    0.0051138
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0991370   -0.1197790   -0.0784950
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862781   -0.0919075   -0.0806486
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0608711   -0.0702662   -0.0514759
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0622100   -0.0707695   -0.0536506
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0962096   -0.1003863   -0.0920329
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0968253   -0.1152285   -0.0784220
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0371814   -0.0417180   -0.0326448
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0462563   -0.0562940   -0.0362186
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0151200   -0.0203629   -0.0098772
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0364496   -0.0384372   -0.0344620
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0205537   -0.0303869   -0.0107206
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0142875   -0.0163733   -0.0122017


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  1.2080143    1.0823716    1.3336570
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0183873   -0.1009060    0.0641314
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0140887   -0.0554578    0.0272804
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0376370   -0.0755455    0.0002715
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0332777   -0.0731046    0.0065493
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0374327   -0.0537786   -0.0210868
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0363018   -0.0151631    0.0877667
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0028431   -0.0436407    0.0493268
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3650077    0.1612741    0.5687413
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0448700   -0.2056768    0.1159368
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0054794   -0.0520703    0.0630290
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0067093   -0.0315873    0.0450059
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0193822   -0.0171891    0.0559535
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0150932   -0.0497208    0.0195344
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1326505   -0.2106490   -0.0546520
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0244826   -0.0119262    0.0608913
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0336434   -0.0467975   -0.0204893
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2392581   -0.2839716   -0.1945446
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0053124   -0.0298413    0.0404661
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1070240    0.0453147    0.1687332
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0491718   -0.0834794   -0.0148643
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0102772   -0.0134805    0.0340348
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0448531   -0.1108221    0.0211159
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0026081   -0.0172735    0.0120574
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0037249   -0.0118509    0.0193007
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1925779   -0.2518897   -0.1332662
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0044906   -0.0132433    0.0222245
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0081476   -0.0162090   -0.0000861
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0134598   -0.0214005    0.0483201
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0085192   -0.0178717    0.0008334
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0068778   -0.0207510    0.0345067
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0087559   -0.0278372    0.0103253
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0019030   -0.0054453    0.0092514
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0047923   -0.0032135    0.0127981
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0045538   -0.0052434    0.0143510
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0094870   -0.0132859   -0.0056880
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0231907   -0.0345899   -0.0117915
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0010616   -0.0054167    0.0032935
