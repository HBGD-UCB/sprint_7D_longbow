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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/70955b6a-6db6-4819-8bfb-142694099e20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/70955b6a-6db6-4819-8bfb-142694099e20/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.0706001   0.9811808   1.1600193
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.0508257   1.0003158   1.1013355
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.2316371   1.2112875   1.2519866
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.1966359   1.1840620   1.2092098
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
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7929392   0.7174671   0.8684114
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7794865   0.7511288   0.8078441
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8622290   0.8505738   0.8738841
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8470421   0.8404034   0.8536808


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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0197744   -0.1324401    0.0928913
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0350011   -0.0587927   -0.0112096
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
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0134527   -0.0885980    0.0616925
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0151868   -0.0281751   -0.0021986
