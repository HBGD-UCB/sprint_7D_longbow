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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country
* intXhfoodsec

## Data Summary

agecat      studyid                     country      intXhfoodsec                      stunted   n_cell       n
----------  --------------------------  -----------  -------------------------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI       Food Insecure_Birth                     0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI       Food Insecure_Birth                     1        1       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_Birth                     0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_Birth                     1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                       0     8466   11994
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                       1     3528   11994
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth              0     5944    8670
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth              1     2726    8670
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth                     0     3054    4546
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth                     1     1492    4546
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                       0      552     792
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                       1      240     792
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth              0      428     618
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth              1      190     618
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth                     0      164     228
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth                     1       64     228
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months                    0      100     122
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months                    1       22     122
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months           0       68      89
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months           1       21      89
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months                  0      151     210
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months                  1       59     210
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months                    0      427     495
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months                    1       68     495
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6 months           0       45      46
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6 months           1        1      46
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months                  0      110     141
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months                  1       31     141
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months                    0      288     400
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months                    1      112     400
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months           0       99     149
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months           1       50     149
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months                  0      859    1234
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months                  1      375    1234
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months                    0      148     181
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months                    1       33     181
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months           0       87     120
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months           1       33     120
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months                  0      250     334
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months                  1       84     334
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months                    0    13018   16787
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months                    1     3769   16787
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months           0     8212   11156
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months           1     2944   11156
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months                  0     3815    5518
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months                  1     1703    5518
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months                    0     3540    4740
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months                    1     1200    4740
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months           0     2478    3356
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months           1      878    3356
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months                  0      935    1222
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months                  1      287    1222
24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_24 months                   0        5       8
24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_24 months                   1        3       8
24 months   iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_24 months          0        6      10
24 months   iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_24 months          1        4      10
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months                 0        9      16
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months                 1        7      16
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months                   0      517     843
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months                   1      326     843
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months          0       65     110
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months          1       45     110
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months                 0      122     234
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months                 1      112     234
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months                   0       94     159
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months                   1       65     159
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months          0       31      69
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months          1       38      69
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months                 0      256     541
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months                 1      285     541
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months                   0       12      17
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months                   1        5      17
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months          0        8      14
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months          1        6      14
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months                 0       18      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months                 1       15      33
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months                   0       38      69
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months                   1       31      69
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months          0       10      28
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months          1       18      28
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months                 0       13      38
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months                 1       25      38
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months                   0      561     981
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months                   1      420     981
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months          0      442     743
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months          1      301     743
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months                 0      161     270
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months                 1      109     270


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Secure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Secure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_Birth
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/da30e201-f31a-40ad-a895-70aa80c00e8e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da30e201-f31a-40ad-a895-70aa80c00e8e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da30e201-f31a-40ad-a895-70aa80c00e8e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da30e201-f31a-40ad-a895-70aa80c00e8e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Control              NA                0.3013745    0.2808883   0.3218606
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Maternal             NA                0.2869940    0.2699670   0.3040211
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                0.3424721    0.3188173   0.3661269
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Maternal             NA                0.2867613    0.2615662   0.3119565
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Control              NA                0.3321555    0.2969753   0.3673357
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Maternal             NA                0.3242770    0.2915665   0.3569874
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Control              NA                0.3448276    0.2508535   0.4388017
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                LNS                  NA                0.3392857    0.2500926   0.4284788
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Other                NA                0.2500000    0.1747163   0.3252837
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                0.2933333    0.1823600   0.4043067
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       LNS                  NA                0.3033708    0.2074951   0.3992464
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Other                NA                0.3172414    0.2364901   0.3979927
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Control              NA                0.2258065    0.0762329   0.3753800
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              LNS                  NA                0.3461538    0.1596749   0.5326328
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Other                NA                0.2807018    0.1590437   0.4023598
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months             Control              NA                0.1578947    0.0628419   0.2529475
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months             LNS                  NA                0.2000000    0.1023576   0.2976424
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months    Control              NA                0.2448980    0.1238105   0.3659854
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months    LNS                  NA                0.2250000    0.0948591   0.3551409
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           Control              NA                0.2649573    0.1848013   0.3451132
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           LNS                  NA                0.3010753    0.2076217   0.3945288
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Control              NA                0.2100840    0.1368183   0.2833497
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             LNS                  NA                0.1102941    0.0575933   0.1629949
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Other                NA                0.1166667    0.0760114   0.1573220
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Control              NA                0.1333333    0.0112579   0.2554088
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           LNS                  NA                0.3250000    0.1793343   0.4706657
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Other                NA                0.1971831    0.1043062   0.2900600
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             Control              NA                0.2602740    0.1594924   0.3610555
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             LNS                  NA                0.2844037    0.2354461   0.3333612
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    Control              NA                0.3684211    0.1507906   0.5860515
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    LNS                  NA                0.3307692    0.2496191   0.4119194
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           Control              NA                0.3446602    0.2797341   0.4095863
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           LNS                  NA                0.2957198    0.2678111   0.3236286
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Control              NA                0.1578947    0.0629697   0.2528198
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Maternal             NA                0.1935484    0.1238177   0.2632791
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Control              NA                0.2448980    0.1239879   0.3658081
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Maternal             NA                0.2957746    0.1891709   0.4023784
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Control              NA                0.2649573    0.1848724   0.3450421
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Maternal             NA                0.2442396    0.1869904   0.3014888
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Control              NA                0.2309441    0.2168440   0.2450442
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Maternal             NA                0.2181495    0.2027990   0.2334999
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                0.2796071    0.2588137   0.3004004
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Maternal             NA                0.2486305    0.2284671   0.2687939
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Control              NA                0.3235294    0.2920272   0.3550317
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Maternal             NA                0.2941387    0.2644179   0.3238594
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Control              NA                0.2257282    0.1835979   0.2678584
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             LNS                  NA                0.2550186    0.2200368   0.2900003
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Other                NA                0.2677165    0.2360833   0.2993497
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                0.2559809    0.2043506   0.3076111
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    LNS                  NA                0.2408994    0.1976186   0.2841801
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Other                NA                0.2767970    0.2400416   0.3135523
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Control              NA                0.2382353    0.1692647   0.3072058
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           LNS                  NA                0.2034483    0.1293466   0.2775499
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Other                NA                0.2483108    0.1975349   0.2990867
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months          Control              NA                0.6250000    0.2785240   0.9714760
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months          LNS                  NA                0.2500000   -0.0598975   0.5598975
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Control              NA                0.3776596    0.3083184   0.4470007
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            LNS                  NA                0.3446602    0.2797219   0.4095985
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Other                NA                0.4097996    0.3642831   0.4553160
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Control              NA                0.5384615    0.3459637   0.7309594
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   LNS                  NA                0.3548387    0.1856389   0.5240386
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Other                NA                0.3773585    0.2462625   0.5084545
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Control              NA                0.5263158    0.3964160   0.6562155
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          LNS                  NA                0.4857143    0.3683809   0.6030477
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Other                NA                0.4485981    0.3541596   0.5430366
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            Control              NA                0.4375000    0.2650777   0.6099223
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            LNS                  NA                0.4015748    0.3160476   0.4871020
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   Control              NA                0.7500000    0.4477448   1.0522552
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   LNS                  NA                0.5245902    0.3983500   0.6508303
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          Control              NA                0.5113636    0.4068275   0.6158997
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          LNS                  NA                0.5298013    0.4837971   0.5758056
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months            Control              NA                1.0000000    0.9999999   1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months            Maternal             NA                0.2500000    0.0312978   0.4687022
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months   Control              NA                0.3333333   -0.2202379   0.8869046
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months   Maternal             NA                0.4545455    0.1491855   0.7599054
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months          Control              NA                0.6250000    0.2843246   0.9656754
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months          Maternal             NA                0.4000000    0.2049860   0.5950140
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Control              NA                0.4166667    0.1832138   0.6501195
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Maternal             NA                0.4848485    0.2760464   0.6936505
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                0.5454545    0.1739769   0.9169322
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Maternal             NA                0.7058824    0.4166421   0.9951226
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Control              NA                0.8461538    0.6073222   1.0849855
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Maternal             NA                0.5600000    0.3084232   0.8115768
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Control              NA                0.4129555    0.3106011   0.5153099
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            LNS                  NA                0.3985507    0.3127346   0.4843669
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Other                NA                0.4541485    0.3867339   0.5215631
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                0.4531250    0.3560349   0.5502151
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   LNS                  NA                0.4162896    0.3244357   0.5081435
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Other                NA                0.3696970    0.2909925   0.4484015
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Control              NA                0.4500000    0.3019993   0.5980007
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          LNS                  NA                0.3898305    0.2030809   0.5765801
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Other                NA                0.3816794    0.2684663   0.4948925


### Parameter: E(Y)


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                NA                   NA                0.2941471   0.2808057   0.3074885
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       NA                   NA                0.3144175   0.2970608   0.3317743
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              NA                   NA                0.3282006   0.3041845   0.3522167
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                NA                   NA                0.3030303   0.2535848   0.3524758
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       NA                   NA                0.3074434   0.2533436   0.3615431
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              NA                   NA                0.2807018   0.1956190   0.3657845
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months             NA                   NA                0.1803279   0.1118253   0.2488304
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months    NA                   NA                0.2359551   0.1472434   0.3246667
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           NA                   NA                0.2809524   0.2200169   0.3418878
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             NA                   NA                0.1373737   0.1070175   0.1677300
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           NA                   NA                0.2198582   0.1512553   0.2884610
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             NA                   NA                0.2800000   0.2359438   0.3240562
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    NA                   NA                0.3355705   0.2594969   0.4116440
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           NA                   NA                0.3038898   0.2782176   0.3295620
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             NA                   NA                0.1823204   0.1259150   0.2387259
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    NA                   NA                0.2750000   0.1947750   0.3552250
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           NA                   NA                0.2514970   0.2048967   0.2980974
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             NA                   NA                0.2245190   0.2140772   0.2349607
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    NA                   NA                0.2638939   0.2493990   0.2783888
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           NA                   NA                0.3086263   0.2869561   0.3302965
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             NA                   NA                0.2531646   0.2324869   0.2738422
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    NA                   NA                0.2616210   0.2368622   0.2863797
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           NA                   NA                0.2348609   0.1990155   0.2707063
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months          NA                   NA                0.4375000   0.1864543   0.6885457
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            NA                   NA                0.3867141   0.3538200   0.4196083
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   NA                   NA                0.4090909   0.3167902   0.5013916
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          NA                   NA                0.4786325   0.4144904   0.5427746
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            NA                   NA                0.4088050   0.3321496   0.4854605
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   NA                   NA                0.5507246   0.4324975   0.6689518
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          NA                   NA                0.5268022   0.4846911   0.5689133
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months            NA                   NA                0.2941176   0.0708556   0.5173796
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months   NA                   NA                0.4285714   0.1595611   0.6975818
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months          NA                   NA                0.4545455   0.2820248   0.6270661
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            NA                   NA                0.4492754   0.2919615   0.6065892
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   NA                   NA                0.6428571   0.4086980   0.8770163
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          NA                   NA                0.6578947   0.4656219   0.8501676
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            NA                   NA                0.4281346   0.3806850   0.4755841
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   NA                   NA                0.4051144   0.3541177   0.4561111
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          NA                   NA                0.4037037   0.3222219   0.4851855


### Parameter: RR


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Maternal             Control           0.9522839   0.8701428   1.0421790
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Maternal             Control           0.8373275   0.7486640   0.9364914
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Maternal             Control           0.9762806   0.8434352   1.1300499
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                LNS                  Control           0.9839286   0.6738808   1.4366270
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Other                Control           0.7250000   0.4829616   1.0883370
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       LNS                  Control           1.0342186   0.6317806   1.6930056
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Other                Control           1.0815047   0.6854811   1.7063233
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              LNS                  Control           1.5329670   0.6527284   3.6002540
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Other                Control           1.2431078   0.5632910   2.7433724
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months             Control              Control           1.0000000   1.0000000   1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months             LNS                  Control           1.2666667   0.5835086   2.7496498
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months    LNS                  Control           0.9187500   0.4292668   1.9663797
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           Control              Control           1.0000000   1.0000000   1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           LNS                  Control           1.1363163   0.7366471   1.7528269
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             LNS                  Control           0.5250000   0.2905701   0.9485662
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Other                Control           0.5553333   0.3391900   0.9092106
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           LNS                  Control           2.4375000   0.8794907   6.7555080
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Other                Control           1.4788732   0.5281681   4.1408519
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             LNS                  Control           1.0927088   0.7152714   1.6693142
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    LNS                  Control           0.8978022   0.4735781   1.7020397
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           LNS                  Control           0.8580041   0.6950008   1.0592375
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Maternal             Control           1.2258065   0.6081832   2.4706394
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Maternal             Control           1.2077465   0.6553925   2.2256153
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Maternal             Control           0.9218076   0.6288191   1.3513097
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Maternal             Control           0.9445985   0.8605727   1.0368285
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Maternal             Control           0.8892140   0.7965724   0.9926298
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Maternal             Control           0.9091559   0.7900547   1.0462117
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             LNS                  Control           1.1297598   0.8962140   1.4241655
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Other                Control           1.1860130   0.9509518   1.4791780
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    LNS                  Control           0.9410835   0.7183279   1.2329161
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Other                Control           1.0813190   0.8493160   1.3766970
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           LNS                  Control           0.8539804   0.5362496   1.3599684
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Other                Control           1.0422923   0.7311995   1.4857413
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months          Control              Control           1.0000000   1.0000000   1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months          LNS                  Control           0.4000000   0.1028798   1.5552124
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            LNS                  Control           0.9126214   0.7015142   1.1872572
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Other                Control           1.0851030   0.8755406   1.3448246
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   LNS                  Control           0.6589862   0.3631210   1.1959174
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Other                Control           0.7008086   0.4257039   1.1536957
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          LNS                  Control           0.9228571   0.6533539   1.3035283
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Other                Control           0.8523364   0.6162080   1.1789483
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            LNS                  Control           0.9178853   0.5864559   1.4366184
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   LNS                  Control           0.6994536   0.4374278   1.1184365
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          LNS                  Control           1.0360559   0.8297071   1.2937239
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months            Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months            Maternal             Control           0.2500000   0.1042354   0.5996042
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months   Maternal             Control           1.3636364   0.2273442   8.1792445
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months          Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months          Maternal             Control           0.6400000   0.3080203   1.3297823
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Maternal             Control           1.1636364   0.5742406   2.3579832
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Maternal             Control           1.2941176   0.5849388   2.8631039
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Maternal             Control           0.6618182   0.3890192   1.1259169
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            LNS                  Control           0.9651179   0.6950184   1.3401841
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Other                Control           1.0997517   0.8238662   1.4680221
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   LNS                  Control           0.9187081   0.6753487   1.2497611
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Other                Control           0.8158830   0.6030938   1.1037503
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          LNS                  Control           0.8662900   0.4844888   1.5489695
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Other                Control           0.8481764   0.5446797   1.3207822


### Parameter: PAR


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Control              NA                -0.0072274   -0.0206340    0.0061793
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                -0.0280546   -0.0458084   -0.0103007
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Control              NA                -0.0039549   -0.0280753    0.0201656
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Control              NA                -0.0417973   -0.1196782    0.0360836
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                 0.0141100   -0.0821495    0.1103695
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Control              NA                 0.0548953   -0.0771513    0.1869419
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months             Control              NA                 0.0224331   -0.0502653    0.0951316
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months    Control              NA                -0.0089429   -0.0888621    0.0709763
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           Control              NA                 0.0159951   -0.0385837    0.0705739
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Control              NA                -0.0727103   -0.1336074   -0.0118132
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Control              NA                 0.0865248   -0.0286590    0.2017087
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             Control              NA                 0.0197260   -0.0718741    0.1113262
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    Control              NA                -0.0328506   -0.2355105    0.1698093
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           Control              NA                -0.0407704   -0.0996521    0.0181113
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Control              NA                 0.0244257   -0.0563025    0.1051540
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Control              NA                 0.0301020   -0.0653770    0.1255811
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Control              NA                -0.0134603   -0.0774277    0.0505071
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Control              NA                -0.0064251   -0.0169087    0.0040584
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                -0.0157132   -0.0304831   -0.0009433
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Control              NA                -0.0149031   -0.0369735    0.0071673
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Control              NA                 0.0274364   -0.0083526    0.0632254
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                 0.0056401   -0.0385226    0.0498028
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Control              NA                -0.0033744   -0.0616571    0.0549083
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months          Control              NA                -0.1875000   -0.4385457    0.0635457
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Control              NA                 0.0090545   -0.0521471    0.0702562
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.1293706   -0.2968750    0.0381338
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Control              NA                -0.0476833   -0.1606767    0.0653101
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            Control              NA                -0.0286950   -0.1824446    0.1250546
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   Control              NA                -0.1992754   -0.4893639    0.0908132
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          Control              NA                 0.0154386   -0.0801965    0.1110737
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months            Control              NA                -0.7058823   -0.9291443   -0.4826204
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months   Control              NA                 0.0952381   -0.4022313    0.5927075
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months          Control              NA                -0.1704545   -0.4697064    0.1287974
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Control              NA                 0.0326087   -0.1170675    0.1822849
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                 0.0974026   -0.1891181    0.3839233
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Control              NA                -0.1882591   -0.4192080    0.0426898
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Control              NA                 0.0151791   -0.0710429    0.1014011
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.0480106   -0.1329445    0.0369233
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Control              NA                -0.0462963   -0.1710850    0.0784924


### Parameter: PAF


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Control              NA                -0.0245706   -0.0709897    0.0198365
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                -0.0892272   -0.1478836   -0.0335681
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Control              NA                -0.0120501   -0.0882184    0.0587869
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Control              NA                -0.1379310   -0.4263353    0.0921581
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                 0.0458947   -0.3249632    0.3129493
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Control              NA                 0.1955645   -0.4394278    0.5504349
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months             Control              NA                 0.1244019   -0.3848982    0.4464055
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months    Control              NA                -0.0379009   -0.4382588    0.2510122
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           Control              NA                 0.0569318   -0.1586609    0.2324090
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Control              NA                -0.5292882   -1.0328736   -0.1504515
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Control              NA                 0.3935484   -0.4162112    0.7403046
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             Control              NA                 0.0704501   -0.3215784    0.3461886
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    Control              NA                -0.0978947   -0.9031526    0.3666441
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           Control              NA                -0.1341618   -0.3454531    0.0439481
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Control              NA                 0.1339713   -0.4420489    0.4799027
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Control              NA                 0.1094620   -0.3144365    0.3966556
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Control              NA                -0.0535206   -0.3411255    0.1724074
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Control              NA                -0.0286174   -0.0765345    0.0171669
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                -0.0595436   -0.1170851   -0.0049661
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Control              NA                -0.0482885   -0.1222466    0.0207956
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Control              NA                 0.1083738   -0.0456054    0.2396775
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                 0.0215583   -0.1628101    0.1766944
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Control              NA                -0.0143677   -0.2954780    0.2057435
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months          Control              NA                -0.4285714   -1.2281084    0.0840588
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Control              NA                 0.0234140   -0.1483952    0.1695192
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.3162393   -0.8034817    0.0393659
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Control              NA                -0.0996241   -0.3634325    0.1131405
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            Control              NA                -0.0701923   -0.5210019    0.2470019
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   Control              NA                -0.3618421   -1.0245293    0.0839283
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          Control              NA                 0.0293062   -0.1703392    0.1948946
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months            Control              NA                -2.3999999   -6.2635318   -0.5915122
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months   Control              NA                 0.2222222   -2.4656098    0.8254454
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months          Control              NA                -0.3750000   -1.2512771    0.1601989
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Control              NA                 0.0725806   -0.3353008    0.3558705
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                 0.1515152   -0.4412512    0.5004850
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Control              NA                -0.2861538   -0.7419465    0.0503774
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Control              NA                 0.0354540   -0.1890180    0.2175485
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.1185112   -0.3505442    0.0736569
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Control              NA                -0.1146789   -0.4725029    0.1561925
