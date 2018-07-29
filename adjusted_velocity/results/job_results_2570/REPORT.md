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

**Outcome Variable:** y_rate_len

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
##       y_rate_len
## hdlvry 1.00105594936709 1.44841428571429 1.46586506024096 1.78921764705882
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_len
## hdlvry 1.81051785714286 1.87757407407407 1.89553347826087 2.12209534883721
##      0                2                1                1                1
##      1                0                0                0                0
##       y_rate_len
## hdlvry 2.15067575757576 2.17262142857143 2.17798592592592 2.24504214285714
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## hdlvry 2.36574333333333 2.44732068965517 2.56526385542169 2.7881975
##      0                1                1                1         1
##      1                0                0                0         0
##       y_rate_len
## hdlvry 2.8287531 2.87454527472528 2.93173012048193 2.96748292682927
##      0         1                1                1                1
##      1         0                0                0                0
##       y_rate_len
## hdlvry 3.04167 3.07509494505495 3.07788035714286 3.1377227368421
##      0       1                1                1               1
##      1       0                0                0               0
##       y_rate_len
## hdlvry 3.14655517241379 3.22059176470588 3.25893214285714 3.31204066666667
##      0                2                1                3                1
##      1                0                0                0                0
##       y_rate_len
## hdlvry 3.32461604651163 3.37963333333333 3.56013647727273 3.59470090909091
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## hdlvry 3.62103571428571 3.62660653846154 3.63807588235294 3.70130927710843
##      0                4                1                1                1
##      1                0                0                0                0
##       y_rate_len
## hdlvry 3.70935365853659 3.7101689010989 3.71759666666667 3.72449387755102
##      0                1               1                1                2
##      1                0               0                0                0
##       y_rate_len
## hdlvry 3.72753676470588 3.75270974025974 3.75514814814815 3.75735705882353
##      0                1                2                1                1
##      1                0                0                0                0
##       y_rate_len
## hdlvry 3.8020875 3.84578965517241 3.88213144736842 3.89957692307692
##      0         2                2                1                1
##      1         0                0                0                0
##       y_rate_len
## hdlvry 3.94290555555556 4.01099340659341 4.13066296296296 4.13430873786408
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## hdlvry 4.20882244186046 4.258338 4.27282214285714 4.34524285714286
##      0                1        1                1                3
##      1                0        0                0                0
##       y_rate_len
## hdlvry 4.37816136363636 4.40241710526316 4.42774746835443 4.63669207317073
##      0                1                1                1                2
##      1                0                0                0                0
##       y_rate_len
## hdlvry 4.70734642857143 4.88839821428571 5.00980941176471 5.05723445783132
##      0                1                1                1                1
##      1                0                0                0                0
##       y_rate_len
## hdlvry 5.06945 5.26442884615385 5.36765294117647 5.386290625
##      0       1                1                1           1
##      1       0                0                0           0
##       y_rate_len
## hdlvry 5.53030909090909 5.61260535714286 5.82629746478873
##      0                1                1                1
##      1                0                0                0
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
![](/tmp/182704c9-d4dc-4152-8f8d-fea634495eb4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/182704c9-d4dc-4152-8f8d-fea634495eb4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.1789304   3.0659858   3.2918750
0-3 months     ki1000108-IRC              INDIA                          1                    NA                6.6154444   6.3782513   6.8526375
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.6858064   2.5743416   2.7972712
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.6067612   2.4898170   2.7237055
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.6056019   3.5232379   3.6879659
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.5897844   3.5656618   3.6139070
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5063428   3.4604220   3.5522636
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4295262   3.3610340   3.4980184
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.3212397   3.2778135   3.3646659
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.2400782   3.1606053   3.3195510
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5566613   3.5352933   3.5780294
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4696957   3.4441654   3.4952260
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.5639363   3.4583393   3.6695332
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6750426   3.6127184   3.7373668
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.6038965   3.5186583   3.6891348
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.6467191   3.6138419   3.6795963
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8067171   1.7046174   1.9088169
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                2.6822887   2.2763972   3.0881801
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8827130   1.8180383   1.9473877
3-6 months     ki1000108-IRC              INDIA                          1                    NA                2.0089887   1.7994005   2.2185769
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0263221   1.9523514   2.1002928
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.0233321   1.9270037   2.1196605
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.8950366   1.8499484   1.9401248
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.8981568   1.8295926   1.9667211
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9614711   1.9217265   2.0012156
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9845510   1.9257867   2.0433154
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                2.0163548   1.9746556   2.0580541
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9716479   1.9085409   2.0347548
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7924091   1.7553947   1.8294235
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4922268   1.3355119   1.6489416
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.6794277   1.6068624   1.7519929
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.7079489   1.6612568   1.7546409
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8728281   1.8544739   1.8911823
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.7882429   1.7664401   1.8100456
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                2.3919368   2.3065640   2.4773097
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.8864611   1.8241682   1.9487540
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8861857   1.8175594   1.9548119
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8970714   1.8650962   1.9290465
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0594443   1.0106146   1.1082740
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.4637685   1.3703105   1.5572265
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2495319   1.2200107   1.2790531
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1219697   1.0558716   1.1880679
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.0719693   1.0290355   1.1149031
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.0926555   1.0758028   1.1095081
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.1434660   1.0067742   1.2801578
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.0151455   0.9330696   1.0972214
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1778831   1.1576564   1.1981098
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1615434   1.1297090   1.1933777
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2283540   1.2084313   1.2482766
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2257892   1.1934148   1.2581637
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1948428   1.1728538   1.2168317
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0990344   0.8379901   1.3600787
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1666552   1.1322832   1.2010272
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1623539   1.1385124   1.1861954
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0976539   1.0853035   1.1100042
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0617253   1.0468558   1.0765948
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.0021253   0.9462046   1.0580460
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.0493910   0.9990123   1.0997697
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.2259584   1.2071732   1.2447436
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.1987030   1.1861918   1.2112142
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7399787   0.7132727   0.7666848
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9589005   0.9058235   1.0119776
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8305895   0.8108148   0.8503642
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7670844   0.7298705   0.8042983
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8570774   0.8429765   0.8711783
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8592530   0.8385183   0.8799876
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8774859   0.8638942   0.8910777
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8744885   0.8529991   0.8959778
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8229549   0.7995569   0.8463530
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8342984   0.8155808   0.8530160
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8349066   0.8277386   0.8420746
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7805914   0.7717358   0.7894470
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8432048   0.8184945   0.8679150
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7818700   0.7542430   0.8094970
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8612841   0.8501254   0.8724428
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8479741   0.8413275   0.8546208


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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.0536838   1.0105552   1.0968123
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2059812   1.1951907   1.2167718
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7380528   0.7116168   0.7644888
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8398056   0.8238438   0.8557674
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8173099   0.8112554   0.8233643
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7824445   0.7538031   0.8110859
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8509248   0.8449817   0.8568678


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  3.4365140    3.1732614    3.6997666
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0790452   -0.2396403    0.0815499
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0158175   -0.0958939    0.0642589
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0768166   -0.1592765    0.0056433
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0811615   -0.1717157    0.0093926
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0869656   -0.1195433   -0.0543880
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1111063   -0.0017609    0.2239735
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0428226   -0.0490773    0.1347224
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.8755715    0.4575200    1.2936231
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.1262757   -0.0925777    0.3451290
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0029899   -0.1227101    0.1167302
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0031202   -0.0715717    0.0778122
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0230800   -0.0452866    0.0914465
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0447070   -0.1189749    0.0295609
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3001823   -0.4608565   -0.1395080
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0285212   -0.0573866    0.1144290
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0845853   -0.1129776   -0.0561929
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.5054758   -0.6088461   -0.4021055
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0108857   -0.0633960    0.0851674
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4043242    0.2990853    0.5095631
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.1275621   -0.1990552   -0.0560691
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0206862   -0.0329235    0.0742958
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.1283205   -0.2832764    0.0266354
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0163397   -0.0539704    0.0212909
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0025647   -0.0402559    0.0351265
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0958083   -0.3576013    0.1659847
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0043013   -0.0461306    0.0375279
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0359285   -0.0550684   -0.0167886
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0472657   -0.0356483    0.1301797
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0272554   -0.0496618   -0.0048491
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2189218    0.1598604    0.2779832
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0635051   -0.1049536   -0.0220565
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0021756   -0.0225357    0.0268869
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0029975   -0.0283816    0.0223867
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0113434   -0.0185493    0.0412362
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0543152   -0.0655401   -0.0430902
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0613348   -0.0931784   -0.0294911
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0133100   -0.0257991   -0.0008208
