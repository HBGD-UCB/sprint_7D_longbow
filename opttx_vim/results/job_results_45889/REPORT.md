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
![](/tmp/532ec854-075d-49ed-b204-382856da00dc/baa8abbf-96d9-48f7-8d4a-d0016b2b26f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/532ec854-075d-49ed-b204-382856da00dc/baa8abbf-96d9-48f7-8d4a-d0016b2b26f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        optimal              NA                0.6817010   0.5935044   0.7698977
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.4700972   0.3725095   0.5676849
0-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.3142587   0.2389031   0.3896144
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.3852900   0.2932669   0.4773132
0-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                0.0748225   0.0388536   0.1107914
0-6 months    ki1000108-IRC           INDIA        optimal              NA                0.4927801   0.4114972   0.5740629
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.3984903   0.3077252   0.4892554
0-6 months    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.2604332   0.1900266   0.3308399
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.2658256   0.1887742   0.3428769
6-24 months   ki1000108-IRC           INDIA        optimal              NA                0.1866551   0.0871124   0.2861978
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.3034030   0.2063130   0.4004929
6-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                0.0958898   0.0406649   0.1511147
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.1043379   0.0450600   0.1636158
6-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                0.0445077   0.0142477   0.0747677


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
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1148112-LCNI-5        MALAWI       observed             NA                0.0782609   0.0596958   0.0968259


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC           INDIA        observed             optimal           0.9624418   0.8628760   1.073496
0-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.0158837   0.8409398   1.227222
0-24 months   ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.1182778   0.9012232   1.387609
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           0.8594424   0.6943305   1.063818
0-24 months   ki1148112-LCNI-5        MALAWI       observed             optimal           1.0796667   0.7039240   1.655974
0-6 months    ki1000108-IRC           INDIA        observed             optimal           1.1037427   0.9684601   1.257923
0-6 months    ki1017093-NIH-Birth     BANGLADESH   observed             optimal           0.8956635   0.7348745   1.091633
0-6 months    ki1017093b-PROVIDE      BANGLADESH   observed             optimal           0.9928512   0.7726312   1.275840
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           0.9727251   0.7461415   1.268116
6-24 months   ki1000108-IRC           INDIA        observed             optimal           1.6595104   0.9982368   2.758839
6-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           0.9686794   0.7247915   1.294634
6-24 months   ki1017093b-PROVIDE      BANGLADESH   observed             optimal           1.6787566   0.9776523   2.882644
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.2603938   0.7469399   2.126801
6-24 months   ki1148112-LCNI-5        MALAWI       observed             optimal           1.7583668   0.9330852   3.313582


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        optimal              NA                -0.0256035   -0.1000558   0.0488488
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0074669   -0.0813684   0.0963022
0-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0371698   -0.0306800   0.1050197
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0541554   -0.1366965   0.0283856
0-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                 0.0059609   -0.0261110   0.0380327
0-6 months    ki1000108-IRC           INDIA        optimal              NA                 0.0511223   -0.0130333   0.1152780
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.0415771   -0.1207125   0.0375583
0-6 months    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                -0.0018618   -0.0671527   0.0634292
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0072504   -0.0777374   0.0632366
6-24 months   ki1000108-IRC           INDIA        optimal              NA                 0.1231010    0.0271810   0.2190210
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.0095028   -0.0975328   0.0785273
6-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.0650858    0.0123258   0.1178459
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0271689   -0.0272854   0.0816233
6-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                 0.0337532    0.0045510   0.0629553


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        optimal              NA                -0.0390239   -0.1589151   0.0684644
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0156354   -0.1891458   0.1851514
0-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.1057678   -0.1096030   0.2793357
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.1635451   -0.4402364   0.0599895
0-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                 0.0737882   -0.4206079   0.3961259
0-6 months    ki1000108-IRC           INDIA        optimal              NA                 0.0939918   -0.0325670   0.2050386
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.1164908   -0.3607766   0.0839410
0-6 months    ki1017093b-PROVIDE      BANGLADESH   optimal              NA                -0.0072003   -0.2942786   0.2162024
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0280397   -0.3402284   0.2114287
6-24 months   ki1000108-IRC           INDIA        optimal              NA                 0.3974127   -0.0017663   0.6375287
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                -0.0323333   -0.3797071   0.2275809
6-24 months   ki1017093b-PROVIDE      BANGLADESH   optimal              NA                 0.4043210   -0.0228585   0.6530963
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.2065972   -0.3387957   0.5298102
6-24 months   ki1148112-LCNI-5        MALAWI       optimal              NA                 0.4312904   -0.0717135   0.6982117
