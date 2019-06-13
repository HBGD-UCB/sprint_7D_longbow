---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country      nhh          ever_wasted   n_cell     n
------------  -------------------------  -----------  ----------  ------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less              0       20   410
0-24 months   ki1000108-IRC              INDIA        3 or less              1       38   410
0-24 months   ki1000108-IRC              INDIA        4-5                    0       63   410
0-24 months   ki1000108-IRC              INDIA        4-5                    1       95   410
0-24 months   ki1000108-IRC              INDIA        6-7                    0       38   410
0-24 months   ki1000108-IRC              INDIA        6-7                    1       69   410
0-24 months   ki1000108-IRC              INDIA        8+                     0       20   410
0-24 months   ki1000108-IRC              INDIA        8+                     1       67   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0        4   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        5   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       19   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       22   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       20   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       17   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       10   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1        9   106
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       58   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       57   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0      134   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1      129   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       72   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       69   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       62   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       43   624
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0       98   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       42   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0      211   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1      111   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       94   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       57   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       51   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       36   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       75   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       39   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      223   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1      119   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      120   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       58   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       89   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       35   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0      210   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1       15   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0      310   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1       30   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0      172   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1       10   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       59   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     1       11   817
0-6 months    ki1000108-IRC              INDIA        3 or less              0       25   410
0-6 months    ki1000108-IRC              INDIA        3 or less              1       33   410
0-6 months    ki1000108-IRC              INDIA        4-5                    0       81   410
0-6 months    ki1000108-IRC              INDIA        4-5                    1       77   410
0-6 months    ki1000108-IRC              INDIA        6-7                    0       47   410
0-6 months    ki1000108-IRC              INDIA        6-7                    1       60   410
0-6 months    ki1000108-IRC              INDIA        8+                     0       34   410
0-6 months    ki1000108-IRC              INDIA        8+                     1       53   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0        8   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        1   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       37   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1        4   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       28   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1        9   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       15   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     1        4   106
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              0       67   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              1       47   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    0      175   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    1       88   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    0       88   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    1       53   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     0       70   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     1       34   622
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              0      107   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              1       33   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    0      235   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    1       87   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    0      113   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    1       38   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     0       64   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     1       23   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       84   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       30   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      250   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       92   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      133   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       45   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       95   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       29   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              0       70   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    0      109   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    1        2   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    0       65   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    1        2   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     0       21   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     1        0   269
6-24 months   ki1000108-IRC              INDIA        3 or less              0       48   410
6-24 months   ki1000108-IRC              INDIA        3 or less              1       10   410
6-24 months   ki1000108-IRC              INDIA        4-5                    0      112   410
6-24 months   ki1000108-IRC              INDIA        4-5                    1       46   410
6-24 months   ki1000108-IRC              INDIA        6-7                    0       74   410
6-24 months   ki1000108-IRC              INDIA        6-7                    1       33   410
6-24 months   ki1000108-IRC              INDIA        8+                     0       49   410
6-24 months   ki1000108-IRC              INDIA        8+                     1       38   410
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0        3   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        5   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       22   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       18   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       26   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       11   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       12   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1        6   103
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       68   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       27   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0      159   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1       72   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       90   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       38   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       65   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       22   541
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0      101   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       11   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0      249   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       40   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0      101   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       29   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       65   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       19   615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       94   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       13   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      279   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       51   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      155   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       21   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0      106   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       11   730
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0      203   805
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1       15   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0      307   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1       29   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0      173   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1        8   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       59   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     1       11   805


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a31811dc-de41-426b-9109-4d8ba6034805/f448467f-7ee6-426e-b97e-8aabb6415d55/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a31811dc-de41-426b-9109-4d8ba6034805/f448467f-7ee6-426e-b97e-8aabb6415d55/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        optimal              NA                0.6548856   0.5772439   0.7325274
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.4280328   0.3211836   0.5348820
0-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.2947410   0.2223522   0.3671298
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.3334247   0.2487536   0.4180958
0-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                0.0870930   0.0471810   0.1270050
0-6 months    ki1000108-IRC           INDIA        optimal              NA                0.4892908   0.4089579   0.5696237
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.4150463   0.3256909   0.5044017
0-6 months    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.2411411   0.1746336   0.3076487
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.2609714   0.1823606   0.3395821
6-24 months   ki1000108-IRC           INDIA        optimal              NA                0.1890997   0.0879672   0.2902323
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.2785456   0.1767250   0.3803661
6-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.0976132   0.0422813   0.1529452
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.0926507   0.0369790   0.1483224
6-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                0.0448962   0.0144645   0.0753279


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        observed             NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE      BANGLADESH   observed             NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1148112-LCNI-5        MALAWI       observed             NA                0.0807834   0.0620863   0.0994804
0-6 months    ki1000108-IRC           INDIA        observed             NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093-NIH-Birth     BANGLADESH   observed             NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE      BANGLADESH   observed             NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.2585752   0.2273844   0.2897660
6-24 months   ki1000108-IRC           INDIA        observed             NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE      BANGLADESH   observed             NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1148112-LCNI-5        MALAWI       observed             NA                0.0782609   0.0596958   0.0968259


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC           INDIA        observed             optimal           1.0018506   0.9111239   1.101611
0-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.1157185   0.8861211   1.404805
0-24 months   ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.1923302   0.9528363   1.492021
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           0.9931316   0.7863734   1.254252
0-24 months   ki1148112-LCNI-5        MALAWI       observed             optimal           0.9275528   0.6240589   1.378643
0-6 months    ki1000108-IRC           INDIA        observed             optimal           1.1116138   0.9759167   1.266179
0-6 months    ki1017093-NIH-Birth     BANGLADESH   observed             optimal           0.8599358   0.7140133   1.035681
0-6 months    ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.0722825   0.8326896   1.380814
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           0.9908183   0.7552659   1.299835
6-24 months   ki1000108-IRC           INDIA        observed             optimal           1.6380568   0.9855066   2.722691
6-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.0551242   0.7543688   1.475786
6-24 months   ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.6491166   0.9689938   2.806608
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.4193830   0.8093173   2.489318
6-24 months   ki1148112-LCNI-5        MALAWI       observed             optimal           1.7431518   0.9267807   3.278638


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        optimal              NA                 0.0012119   -0.0609525   0.0633764
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0495313   -0.0489042   0.1479668
0-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0566876   -0.0096582   0.1230334
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0022901   -0.0801210   0.0755408
0-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                -0.0063096   -0.0408510   0.0282317
0-6 months    ki1000108-IRC           INDIA        optimal              NA                 0.0546116   -0.0088267   0.1180499
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.0581331   -0.1356544   0.0193882
0-6 months    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0174303   -0.0437149   0.0785755
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0023962   -0.0732514   0.0684591
6-24 months   ki1000108-IRC           INDIA        optimal              NA                 0.1206564    0.0238116   0.2175011
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0153546   -0.0780376   0.1087468
6-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0633624    0.0105598   0.1161650
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0388561   -0.0133301   0.0910423
6-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                 0.0333647    0.0040227   0.0627067


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        optimal              NA                 0.0018472   -0.0975455   0.0922390
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.1037166   -0.1285139   0.2881577
0-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.1613062   -0.0494982   0.3297680
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0069159   -0.2716605   0.2027119
0-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                -0.0781057   -0.6024129   0.2746489
0-6 months    ki1000108-IRC           INDIA        optimal              NA                 0.1004070   -0.0246776   0.2102223
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.1628775   -0.4005342   0.0344512
0-6 months    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0674099   -0.2009277   0.2757897
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0092668   -0.3240369   0.2306715
6-24 months   ki1000108-IRC           INDIA        optimal              NA                 0.3895206   -0.0147066   0.6327163
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0522443   -0.3256116   0.3223951
6-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.3936147   -0.0319984   0.6436980
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.2954685   -0.2356094   0.5982836
6-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                 0.4263265   -0.0790039   0.6949953
