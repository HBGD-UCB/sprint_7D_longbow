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
      W: []
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

unadjusted

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




# Results Detail

## Results Plots
![](/tmp/56afa385-f54c-4ba6-9217-1da35751ecbf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/56afa385-f54c-4ba6-9217-1da35751ecbf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.1779630   3.0653103   3.2906156
0-3 months     ki1000108-IRC              INDIA                          1                    NA                2.9063845   1.9745063   3.8382627
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                2.6897556   2.5777318   2.8017793
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.5992810   2.4817614   2.7168006
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.6602019   3.5764455   3.7439583
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.5885262   3.5639330   3.6131193
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5042441   3.4580294   3.5504587
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4187592   3.3464343   3.4910840
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.3212440   3.2778157   3.3646723
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.2400635   3.1605667   3.3195602
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5768514   3.5553701   3.5983327
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4563394   3.4284649   3.4842139
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.6616561   3.4017001   3.9216121
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6729713   3.6102406   3.7357020
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.5992715   3.5115552   3.6869879
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.6471459   3.6138939   3.6803979
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8068881   1.7046818   1.9090944
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.9008428   1.1896067   2.6120788
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8829475   1.8181899   1.9477050
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.7701196   1.4503290   2.0899102
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0321820   1.9571070   2.1072570
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.0131852   1.9099108   2.1164596
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9786777   1.9165197   2.0408357
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.8944205   1.8252930   1.9635480
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9588685   1.9181104   1.9996267
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9847256   1.9160509   2.0534003
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                2.0175559   1.9750729   2.0600390
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9661580   1.8969975   2.0353184
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7923965   1.7553491   1.8294440
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.6495462   1.3589956   1.9400968
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.7252387   1.6431906   1.8072868
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.7086066   1.6614112   1.7558019
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8886546   1.8701215   1.9071878
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8069033   1.7842125   1.8295941
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.8767695   1.7171555   2.0363836
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.8745764   1.8125792   1.9365736
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8983509   1.8251495   1.9715523
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8986227   1.8659633   1.9312821
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0590074   1.0102042   1.1078106
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.2480272   1.0711403   1.4249140
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2497479   1.2201637   1.2793322
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1906904   1.0068629   1.3745179
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.1095804   1.0643572   1.1548037
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.0921072   1.0757977   1.1084167
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.0234658   0.8579254   1.1890061
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.0104865   0.9248825   1.0960906
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.1782443   1.1578954   1.1985931
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1586550   1.1259601   1.1913499
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2293315   1.2092216   1.2494414
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2240285   1.1891596   1.2588974
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1949316   1.1729305   1.2169328
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0748591   0.7714657   1.3782524
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.1788106   1.1410858   1.2165353
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1635569   1.1394960   1.1876177
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.1066807   1.0942197   1.1191417
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0445726   1.0280547   1.0610905
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.0747746   0.9863249   1.1632242
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.0508257   1.0002118   1.1014396
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.2315511   1.2112941   1.2518081
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.1966400   1.1840693   1.2092108
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7400815   0.7133492   0.7668139
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6467578   0.4824516   0.8110641
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8309488   0.8111401   0.8507576
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7585329   0.6770278   0.8400381
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8573361   0.8430517   0.8716205
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8581737   0.8364276   0.8799198
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8773553   0.8636526   0.8910581
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8697494   0.8468582   0.8926406
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8512065   0.8231436   0.8792693
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8359606   0.8168517   0.8550695
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.8430448   0.8356408   0.8504489
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7743190   0.7644029   0.7842352
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8030273   0.7252140   0.8808405
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7794865   0.7510652   0.8079077
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8622563   0.8506503   0.8738622
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8469622   0.8403229   0.8536016


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
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.2715785   -1.2102411    0.6670842
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0904745   -0.2528327    0.0718836
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0716758   -0.1531391    0.0097876
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0854849   -0.1713142    0.0003445
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0811805   -0.1717661    0.0094051
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.1205120   -0.1557034   -0.0853206
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0113152   -0.2440318    0.2666621
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0478743   -0.0470926    0.1428413
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0939547   -0.6245875    0.8124969
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.1128279   -0.4391093    0.2134535
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0189968   -0.1466755    0.1086819
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0842572   -0.1898260    0.0213116
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0258570   -0.0540019    0.1057159
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0513980   -0.1325643    0.0297684
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1428503   -0.4357533    0.1500526
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0166321   -0.1112856    0.0780214
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0817513   -0.1110490   -0.0524537
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0021931   -0.1681489    0.1637626
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0002718   -0.0788431    0.0793868
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1890198    0.0055240    0.3725156
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0590575   -0.2452504    0.1271353
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0174732   -0.0699940    0.0350475
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0129792   -0.1993436    0.1733851
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0195893   -0.0580995    0.0189209
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0053030   -0.0455553    0.0349494
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1200726   -0.4242626    0.1841175
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0152537   -0.0599983    0.0294909
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0621081   -0.0827991   -0.0414171
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0239489   -0.1356547    0.0877570
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0349111   -0.0586363   -0.0111859
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0933237   -0.2597904    0.0731430
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0724159   -0.1562936    0.0114618
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0008376   -0.0251804    0.0268556
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0076059   -0.0342850    0.0190732
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0152458   -0.0491969    0.0187052
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0687258   -0.0811012   -0.0563504
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0235408   -0.1009144    0.0538328
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0152940   -0.0282267   -0.0023614
