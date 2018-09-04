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
![](/tmp/3d01619d-b6dd-47d1-8d41-b60221f821a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d01619d-b6dd-47d1-8d41-b60221f821a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d01619d-b6dd-47d1-8d41-b60221f821a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d01619d-b6dd-47d1-8d41-b60221f821a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                0.2396875   0.1301014   0.3492735
6 months    ki1000108-IRC              INDIA        4-5                  NA                0.2649018   0.1961583   0.3336454
6 months    ki1000108-IRC              INDIA        6-7                  NA                0.2340343   0.1534258   0.3146427
6 months    ki1000108-IRC              INDIA        8+                   NA                0.2216522   0.1332798   0.3100247
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2207731   0.0966335   0.3449126
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4113217   0.3378634   0.4847800
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4041408   0.3182874   0.4899942
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4790088   0.3610960   0.5969216
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.3036517   0.2507293   0.3565741
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3418803   0.2891815   0.3945790
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1966572   0.1462156   0.2470988
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2628054   0.1936900   0.3319207
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1645613   0.0960048   0.2331178
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1628934   0.1199692   0.2058176
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1197598   0.0635042   0.1760154
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1753003   0.0963207   0.2542800
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2463047   0.1866952   0.3059141
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2125997   0.1716637   0.2535357
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1949867   0.1427429   0.2472305
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2099632   0.1510535   0.2688730
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                0.3429045   0.2952239   0.3905851
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                0.3635402   0.3184541   0.4086264
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                0.3352970   0.2811799   0.3894141
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                0.2657120   0.2043171   0.3271069
24 months   ki1000108-IRC              INDIA        3 or less            NA                0.3490165   0.2318134   0.4662197
24 months   ki1000108-IRC              INDIA        4-5                  NA                0.4479213   0.3707731   0.5250694
24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3956585   0.3047849   0.4865320
24 months   ki1000108-IRC              INDIA        8+                   NA                0.4763648   0.3722463   0.5804833
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5540304   0.4934675   0.6145934
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6264105   0.5703994   0.6824215
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.4909639   0.4325224   0.5494054
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.5390753   0.4636403   0.6145102
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2373321   0.1780953   0.2965689
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3352852   0.2849465   0.3856240
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2577322   0.1956942   0.3197703
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.3198721   0.2457887   0.3939555
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1872991   0.1025959   0.2720022
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2680042   0.2116340   0.3243744
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2611608   0.1864546   0.3358670
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1829498   0.1033545   0.2625451
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.4351643   0.3606080   0.5097207
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.4557483   0.3941783   0.5173182
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.4171180   0.3352441   0.4989918
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.4278147   0.3007636   0.5548657


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


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.1051966   0.6534888   1.8691364
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         0.9764142   0.5509500   1.7304379
6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.9247551   0.5041975   1.6961050
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.8630972   1.0336039   3.3582800
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.8305712   1.0019572   3.3444452
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         2.1696884   1.1747336   4.0073322
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1258961   0.8973607   1.4126336
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.6476407   0.4780046   0.8774778
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8654829   0.6339748   1.1815307
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.9898647   0.6063303   1.6160038
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         0.7277521   0.3895775   1.3594807
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.0652587   0.5783575   1.9620669
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8631575   0.6343861   1.1744281
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7916485   0.5522222   1.1348827
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.8524534   0.5891899   1.2333489
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0601791   0.8819789   1.2743839
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9778143   0.7915276   1.2079437
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.7748862   0.5929649   1.0126208
24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.2833812   0.8802057   1.8712300
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.1336382   0.7543681   1.7035922
24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.3648775   0.9147968   2.0363984
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1306427   0.9889357   1.2926553
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8861677   0.7623614   1.0300800
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9730066   0.8200938   1.1544312
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.4127259   1.0610393   1.8809806
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0859559   0.7723006   1.5269964
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.3477825   0.9654324   1.8815584
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.4308894   0.8682082   2.3582412
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.3943520   0.8163729   2.3815313
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9767790   0.5213191   1.8301596
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0473016   0.8450233   1.2980004
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9585298   0.7409617   1.2399822
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9831107   0.7000417   1.3806414


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0060128   -0.0955562   0.1075818
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2081743    0.0864163   0.3299323
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0354953   -0.0857950   0.0148044
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0033263   -0.0650016   0.0583490
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0365144   -0.0914407   0.0184118
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0198406   -0.0218016   0.0614827
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0666314   -0.0429523   0.1762151
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0007481   -0.0538743   0.0553705
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0919573    0.0366484   0.1472662
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0695103   -0.0109140   0.1499346
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0038601   -0.0585563   0.0662764


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0244719   -0.4902899   0.3614296
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.4853143    0.1121710   0.7016302
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1323678   -0.3439226   0.0458849
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0206302   -0.4847134   0.2983926
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1740522   -0.4721504   0.0636837
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0546956   -0.0663567   0.1620061
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1603073   -0.1489586   0.3863279
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0013485   -0.1020890   0.0950778
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.2792598    0.0960963   0.4253078
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.2706688   -0.1170985   0.5238343
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0087924   -0.1440844   0.1412413
