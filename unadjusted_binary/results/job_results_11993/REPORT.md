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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country      nhh          stunted   n_cell     n
----------  -------------------------  -----------  ----------  --------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less          0       51   388
Birth       ki1000108-IRC              INDIA        3 or less          1        3   388
Birth       ki1000108-IRC              INDIA        4-5                0      128   388
Birth       ki1000108-IRC              INDIA        4-5                1       22   388
Birth       ki1000108-IRC              INDIA        6-7                0       89   388
Birth       ki1000108-IRC              INDIA        6-7                1       14   388
Birth       ki1000108-IRC              INDIA        8+                 0       75   388
Birth       ki1000108-IRC              INDIA        8+                 1        6   388
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          0        7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                0       10    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                1        1    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                0        7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 0        3    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 1        0    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0        7    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        1    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                0        7    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                1        2    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                0        5    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                1        2    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 0        3    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        0    27
6 months    ki1000108-IRC              INDIA        3 or less          0       44   407
6 months    ki1000108-IRC              INDIA        3 or less          1       14   407
6 months    ki1000108-IRC              INDIA        4-5                0      116   407
6 months    ki1000108-IRC              INDIA        4-5                1       42   407
6 months    ki1000108-IRC              INDIA        6-7                0       81   407
6 months    ki1000108-IRC              INDIA        6-7                1       25   407
6 months    ki1000108-IRC              INDIA        8+                 0       66   407
6 months    ki1000108-IRC              INDIA        8+                 1       19   407
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          0       23   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          1       10   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                0       96   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                1       70   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                0       65   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                1       50   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 0       33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 1       33   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          0       74   537
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          1       21   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                0      151   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                1       76   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                0      101   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                1       27   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 0       67   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 1       20   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          0       84   583
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          1       18   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                0      232   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                1       45   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                0      110   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                1       16   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 0       63   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 1       15   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       78   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1       26   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      257   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       69   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      138   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       32   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 0       92   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 1       23   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less          0      146   816
6 months    ki1148112-LCNI-5           MALAWI       3 or less          1       78   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                0      212   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                1      128   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                0      117   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                1       65   816
6 months    ki1148112-LCNI-5           MALAWI       8+                 0       45   816
6 months    ki1148112-LCNI-5           MALAWI       8+                 1       25   816
24 months   ki1000108-IRC              INDIA        3 or less          0       39   409
24 months   ki1000108-IRC              INDIA        3 or less          1       19   409
24 months   ki1000108-IRC              INDIA        4-5                0       88   409
24 months   ki1000108-IRC              INDIA        4-5                1       70   409
24 months   ki1000108-IRC              INDIA        6-7                0       66   409
24 months   ki1000108-IRC              INDIA        6-7                1       41   409
24 months   ki1000108-IRC              INDIA        8+                 0       46   409
24 months   ki1000108-IRC              INDIA        8+                 1       40   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          0       36   429
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          1       39   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                0       71   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                1      113   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                0       49   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                1       51   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 0       35   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 1       35   429
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          0       75   577
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          1       30   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                0      177   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                1       96   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                0       82   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                1       35   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 0       53   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 1       29   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       53   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1       16   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      168   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       64   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                0       95   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       35   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 0       66   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 1       17   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less          0       89   574
24 months   ki1148112-LCNI-5           MALAWI       3 or less          1       70   574
24 months   ki1148112-LCNI-5           MALAWI       4-5                0      129   574
24 months   ki1148112-LCNI-5           MALAWI       4-5                1      108   574
24 months   ki1148112-LCNI-5           MALAWI       6-7                0       75   574
24 months   ki1148112-LCNI-5           MALAWI       6-7                1       54   574
24 months   ki1148112-LCNI-5           MALAWI       8+                 0       29   574
24 months   ki1148112-LCNI-5           MALAWI       8+                 1       20   574


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fa6a79f9-5aa4-4c95-8632-4461b77854b6/85334d53-4251-4122-9a09-37752f6838d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa6a79f9-5aa4-4c95-8632-4461b77854b6/85334d53-4251-4122-9a09-37752f6838d0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa6a79f9-5aa4-4c95-8632-4461b77854b6/85334d53-4251-4122-9a09-37752f6838d0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa6a79f9-5aa4-4c95-8632-4461b77854b6/85334d53-4251-4122-9a09-37752f6838d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                0.2413793   0.1311161   0.3516425
6 months    ki1000108-IRC              INDIA        4-5                  NA                0.2658228   0.1968544   0.3347912
6 months    ki1000108-IRC              INDIA        6-7                  NA                0.2358491   0.1549328   0.3167654
6 months    ki1000108-IRC              INDIA        8+                   NA                0.2235294   0.1348541   0.3122047
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3030303   0.1460254   0.4600352
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4216867   0.3464651   0.4969084
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4347826   0.3440601   0.5255051
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.5000000   0.3792135   0.6207865
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2210526   0.1375322   0.3045731
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3348018   0.2733535   0.3962500
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.2109375   0.1401950   0.2816800
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2298851   0.1413885   0.3183816
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1764706   0.1024255   0.2505157
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1624549   0.1189787   0.2059311
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1269841   0.0687977   0.1851705
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1923077   0.1047700   0.2798453
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2500000   0.1667209   0.3332791
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2116564   0.1672837   0.2560292
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1882353   0.1294332   0.2470374
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2000000   0.1268418   0.2731582
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                0.3482143   0.2857882   0.4106404
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                0.3764706   0.3249395   0.4280016
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                0.3571429   0.2874871   0.4267986
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                0.3571429   0.2448264   0.4694594
24 months   ki1000108-IRC              INDIA        3 or less            NA                0.3275862   0.2066527   0.4485198
24 months   ki1000108-IRC              INDIA        4-5                  NA                0.4430380   0.3654875   0.5205884
24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3831776   0.2909485   0.4754067
24 months   ki1000108-IRC              INDIA        8+                   NA                0.4651163   0.3595705   0.5706621
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5200000   0.4068000   0.6332000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6141304   0.5437104   0.6845505
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.5100000   0.4119070   0.6080930
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.5000000   0.3827330   0.6172670
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2857143   0.1992310   0.3721975
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3516484   0.2949588   0.4083379
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2991453   0.2161054   0.3821852
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.3536585   0.2500869   0.4572302
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2318841   0.1322070   0.3315611
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2758621   0.2182937   0.3334304
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2692308   0.1929084   0.3455531
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2048193   0.1179132   0.2917254
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.4402516   0.3630235   0.5174796
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.4556962   0.3922346   0.5191578
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.4186047   0.3333988   0.5038106
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.4081633   0.2704275   0.5458990


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.3627451   0.3297365   0.3957537
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.4390244   0.3983906   0.4796582


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.1012658   0.6512357   1.862285
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         0.9770889   0.5518536   1.729993
6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.9260504   0.5056838   1.695861
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3915663   0.8044999   2.407031
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.4347826   0.8207455   2.508209
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.6500000   0.9315637   2.922505
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.5145794   0.9951004   2.305246
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9542411   0.5757728   1.581485
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0399562   0.6063976   1.783498
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.9205776   0.5596610   1.514244
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         0.7195767   0.3865879   1.339387
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.0897436   0.5867620   2.023889
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8466258   0.5711563   1.254954
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7529412   0.4769027   1.188755
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.8000000   0.4877826   1.312060
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0811463   0.8628331   1.354697
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0256410   0.7869469   1.336735
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         1.0256410   0.7141387   1.473019
24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.3524317   0.8988331   2.034940
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.1697000   0.7528014   1.817475
24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.4198286   0.9205382   2.189929
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1810201   0.9234239   1.510475
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9807692   0.7335145   1.311369
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9615385   0.6982244   1.324153
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.2307692   0.8734492   1.734266
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0470085   0.6943578   1.578764
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.2378049   0.8123413   1.886105
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1896552   0.7377339   1.918415
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1610577   0.6937899   1.943031
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.8832831   0.4828221   1.615894
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0350814   0.8273753   1.294930
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9508306   0.7267843   1.243944
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9271137   0.6338124   1.356142


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0043209   -0.0978865   0.1065284
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1259171   -0.0252514   0.2770856
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0471038   -0.0297991   0.1240066
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0152356   -0.0819952   0.0515240
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0402098   -0.1164315   0.0360119
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0145308   -0.0388269   0.0678885
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0880617   -0.0249156   0.2010390
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0347786   -0.0679378   0.1374949
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0435751   -0.0353563   0.1225066
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0249253   -0.0683335   0.1181840
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0012272   -0.0668860   0.0644316


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0175862   -0.5003286   0.3567164
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2935490   -0.1635757   0.5710867
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1756579   -0.1667458   0.4175767
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0944931   -0.5974360   0.2501013
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1916667   -0.6159515   0.1212178
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0400579   -0.1189093   0.1764401
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.2118661   -0.1128883   0.4418532
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0626891   -0.1421360   0.2307818
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1323308   -0.1436567   0.3417170
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0970575   -0.3498114   0.3959859
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0027952   -0.1640797   0.1361431
