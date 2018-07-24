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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                    country                        hdlvry    n_cell      n
-------------  -------------------------  -----------------------------  -------  -------  -----
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            474    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            160    634
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            428    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            146    574
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            404    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            141    545
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            340    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118    458
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            557    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            163    720
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            536    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            159    695
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            523    676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            153    676
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            379    495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            116    495
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             33    313
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            280    313
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             28    275
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            247    275
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0             29    243
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            214    243
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             24    191
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            167    191
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            369   1796
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1427   1796
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            750   2803
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2053   2803
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            805   3107
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2302   3107
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            412   1752
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1340   1752
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            298    305
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              7    305
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            314    321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              7    321
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            315    322
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              7    322
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             87     87
3-6 months     ki1000108-IRC              INDIA                          0            389    397
3-6 months     ki1000108-IRC              INDIA                          1              8    397
6-12 months    ki1000108-IRC              INDIA                          0            392    400
6-12 months    ki1000108-IRC              INDIA                          1              8    400
12-24 months   ki1000108-IRC              INDIA                          0            388    396
12-24 months   ki1000108-IRC              INDIA                          1              8    396
0-3 months     ki1000108-IRC              INDIA                          0            370    377
0-3 months     ki1000108-IRC              INDIA                          1              7    377
12-24 months   ki1000304-ZnMort           INDIA                          1              1      1
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            127    976
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            849    976
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            124    919
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            795    919
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            131    936
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            805    936
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             67    332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            265    332
0-3 months     ki1135781-COHORTS          INDIA                          0           2863   4580
0-3 months     ki1135781-COHORTS          INDIA                          1           1717   4580
3-6 months     ki1135781-COHORTS          INDIA                          0           2754   4481
3-6 months     ki1135781-COHORTS          INDIA                          1           1727   4481
6-12 months    ki1135781-COHORTS          INDIA                          0           2239   3598
6-12 months    ki1135781-COHORTS          INDIA                          1           1359   3598
12-24 months   ki1135781-COHORTS          INDIA                          0           1876   2999
12-24 months   ki1135781-COHORTS          INDIA                          1           1123   2999
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         0            454    508
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1             54    508
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         0            425    481
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1             56    481
3-6 months     ki1148112-iLiNS-DYAD-M     MALAWI                         0              6      6
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0            102    438
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            336    438
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0            105    446
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1            341    446
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0             86    341
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1            255    341
0-3 months     ki1000109-EE               PAKISTAN                       0            193    295
0-3 months     ki1000109-EE               PAKISTAN                       1            102    295
3-6 months     ki1000109-EE               PAKISTAN                       0            218    329
3-6 months     ki1000109-EE               PAKISTAN                       1            111    329
6-12 months    ki1000109-EE               PAKISTAN                       0              4      4
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1549   1577
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             28   1577
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1015   1025
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             10   1025
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              2      2


The following strata were considered:

* diffcat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
##       y_rate_haz
## hdlvry -0.337148963855422 -0.130862546511628 0.0575451081081081
##      0                  1                  1                  1
##      1                  0                  0                  0
##       y_rate_haz
## hdlvry 0.0615576071428572 0.324672640449438 0.58298675
##      0                  1                 1          1
##      1                  0                 0          0
```




# Results Detail

## Results Plots
![](/tmp/9a067a43-f030-4168-85e3-b0b6944ad8d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9a067a43-f030-4168-85e3-b0b6944ad8d7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2570446   -0.3133181   -0.2007712
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.3890887   -0.8631374    0.0849601
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.3871578   -0.4443395   -0.3299761
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.4048678   -0.4652013   -0.3445344
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0376248   -0.0139335    0.0891830
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0043839   -0.0071256    0.0158934
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0300680   -0.0513691   -0.0087669
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0746315   -0.1086256   -0.0406374
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1151092   -0.1360011   -0.0942173
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1459098   -0.1825794   -0.1092401
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0511395   -0.0617068   -0.0405722
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1012847   -0.1148179   -0.0877514
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0268147   -0.0793486    0.1329779
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0358638    0.0073526    0.0643750
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0644870    0.0220638    0.1069101
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0677412    0.0516917    0.0837907
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0970669   -0.1454070   -0.0487268
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0276755   -0.3500119    0.2946609
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0508820   -0.0813924   -0.0203717
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.1009918   -0.2683302    0.0663466
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0691071    0.0337732    0.1044410
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0743440    0.0270057    0.1216823
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0062338   -0.0321697    0.0197022
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0358496   -0.0673995   -0.0042996
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0320220   -0.0511816   -0.0128624
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0132325   -0.0452066    0.0187416
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0307744    0.0111518    0.0503971
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0132884   -0.0186490    0.0452258
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0860756   -0.1032606   -0.0688905
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1506207   -0.2839698   -0.0172717
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1581992   -0.1968130   -0.1195854
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1649823   -0.1874439   -0.1425206
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0512191   -0.0597589   -0.0426793
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0814174   -0.0918884   -0.0709463
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0359489   -0.1106242    0.0387264
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0281992   -0.0564910    0.0000927
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0104120   -0.0442624    0.0234385
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0086175   -0.0236174    0.0063824
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1006331   -0.1216225   -0.0796436
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0320275   -0.1157735    0.0517186
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0256573   -0.0387196   -0.0125950
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0435471   -0.1211440    0.0340497
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0854289   -0.1049513   -0.0659066
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0864163   -0.0936018   -0.0792308
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1072723   -0.1752556   -0.0392891
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1081981   -0.1430427   -0.0733534
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0615562   -0.0697751   -0.0533374
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0656492   -0.0784998   -0.0527985
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0320503   -0.0404914   -0.0236092
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0299095   -0.0442562   -0.0155629
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0603803   -0.0697767   -0.0509839
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1106831   -0.2403074    0.0189412
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0600948   -0.0758344   -0.0443553
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0628613   -0.0729520   -0.0527707
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0897502   -0.0949622   -0.0845383
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1068516   -0.1137820   -0.0999212
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                -0.0438858   -0.0546294   -0.0331422
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                -0.0451228   -0.0737725   -0.0164731
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0890780   -0.1264623   -0.0516936
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0978751   -0.1195112   -0.0762390
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0291286   -0.0376940   -0.0205632
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0401232   -0.0453621   -0.0348843
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0450653   -0.0551951   -0.0349355
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0998494   -0.1614239   -0.0382749
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0314316   -0.0386198   -0.0242435
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0481150   -0.0746149   -0.0216151
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0086164   -0.0131194   -0.0041133
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0068907   -0.0142308    0.0004494
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0062285   -0.0108923   -0.0015648
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0041121   -0.0117344    0.0035102
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0132068   -0.0218538   -0.0045598
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0157653   -0.0221391   -0.0093915
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0319005   -0.0343311   -0.0294698
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0440490   -0.0474212   -0.0406768
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                -0.0226512   -0.0284033   -0.0168992
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                -0.0102017   -0.0240170    0.0036136
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0169149   -0.0422870    0.0084572
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0210767   -0.0309720   -0.0111813
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0135261   -0.0176141   -0.0094380
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0145538   -0.0168770   -0.0122305


### Parameter: E(Y)


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
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
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                -0.0440173   -0.0540903   -0.0339443
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0968253   -0.1152285   -0.0784220
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0371814   -0.0417180   -0.0326448
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0462563   -0.0562940   -0.0362186
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0151200   -0.0203629   -0.0098772
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0364496   -0.0384372   -0.0344620
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                -0.0212018   -0.0265446   -0.0158590
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0205537   -0.0303869   -0.0107206
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0142875   -0.0163733   -0.0122017


### Parameter: ATE


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.1320440   -0.6094212    0.3453331
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0177100   -0.1008356    0.0654156
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0332409   -0.0818800    0.0153983
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0445635   -0.0846800   -0.0044470
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0308006   -0.0730041    0.0114029
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0501451   -0.0673154   -0.0329749
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0090491   -0.0936069    0.1117052
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0032543   -0.0427851    0.0492937
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0693914   -0.2565496    0.3953324
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0501098   -0.2202069    0.1199873
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0052369   -0.0538342    0.0643080
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0296158   -0.0760253    0.0167937
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0187895   -0.0184856    0.0560646
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0174860   -0.0549700    0.0199980
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0645452   -0.1989970    0.0699067
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0067830   -0.0514546    0.0378886
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0301983   -0.0437102   -0.0166864
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0077497   -0.0697913    0.0852907
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0017945   -0.0348238    0.0384128
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0686056   -0.0177307    0.1549419
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0178898   -0.0965784    0.0607987
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0009873   -0.0243369    0.0223623
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0009257   -0.0773186    0.0754671
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0040929   -0.0193471    0.0111613
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0021408   -0.0145049    0.0187864
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0503028   -0.1802672    0.0796616
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0027665   -0.0214629    0.0159298
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0171014   -0.0257729   -0.0084299
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                 -0.0012370   -0.0318349    0.0293608
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0087971   -0.0562773    0.0386830
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0109946   -0.0209136   -0.0010756
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0547841   -0.1171862    0.0076181
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0166834   -0.0441409    0.0107741
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0017257   -0.0068857    0.0103370
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0021164   -0.0068195    0.0110524
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0025585   -0.0133007    0.0081837
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0121485   -0.0163054   -0.0079917
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  0.0124495   -0.0025154    0.0274145
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0041618   -0.0294309    0.0211074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0010277   -0.0055787    0.0035233
