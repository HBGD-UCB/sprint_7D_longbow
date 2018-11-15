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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country      nhh          wast_rec90d   n_cell     n
------------  -------------------------  -----------  ----------  ------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less              0       17   395
0-24 months   ki1000108-IRC              INDIA        3 or less              1       32   395
0-24 months   ki1000108-IRC              INDIA        4-5                    0       61   395
0-24 months   ki1000108-IRC              INDIA        4-5                    1       75   395
0-24 months   ki1000108-IRC              INDIA        6-7                    0       47   395
0-24 months   ki1000108-IRC              INDIA        6-7                    1       60   395
0-24 months   ki1000108-IRC              INDIA        8+                     0       37   395
0-24 months   ki1000108-IRC              INDIA        8+                     1       66   395
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       17   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        1   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       96   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1        3   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       69   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1        6   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       39   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1        3   234
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       39   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       40   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0       88   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1       91   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       45   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       55   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       30   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       33   421
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0       20   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       27   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0       54   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       87   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       36   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       39   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       18   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       26   307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       19   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       29   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0       63   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       88   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0       23   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       46   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       12   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       31   311
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0       16    78
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1        5    78
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0       30    78
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1        4    78
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0        9    78
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1        2    78
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       10    78
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     1        2    78
0-6 months    ki1000108-IRC              INDIA        3 or less              0       12   240
0-6 months    ki1000108-IRC              INDIA        3 or less              1       26   240
0-6 months    ki1000108-IRC              INDIA        4-5                    0       31   240
0-6 months    ki1000108-IRC              INDIA        4-5                    1       50   240
0-6 months    ki1000108-IRC              INDIA        6-7                    0       24   240
0-6 months    ki1000108-IRC              INDIA        6-7                    1       41   240
0-6 months    ki1000108-IRC              INDIA        8+                     0       20   240
0-6 months    ki1000108-IRC              INDIA        8+                     1       36   240
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0        3    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        0    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       31    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1        0    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       27    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1        0    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       17    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     1        0    78
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              0       14   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              1       34   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    0       27   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    1       61   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    0       13   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    1       40   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     0       10   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     1       24   223
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              0        9   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              1       24   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    0       17   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    1       73   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    0        7   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    1       31   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     0        6   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     1       17   184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0        3   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       27   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0       11   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       82   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0        5   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       41   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     0        2   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       27   198
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              0        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              1        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    0        2     4
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    1        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    0        2     4
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    1        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     0        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     1        0     4
6-24 months   ki1000108-IRC              INDIA        3 or less              0        5   155
6-24 months   ki1000108-IRC              INDIA        3 or less              1        6   155
6-24 months   ki1000108-IRC              INDIA        4-5                    0       30   155
6-24 months   ki1000108-IRC              INDIA        4-5                    1       25   155
6-24 months   ki1000108-IRC              INDIA        6-7                    0       23   155
6-24 months   ki1000108-IRC              INDIA        6-7                    1       19   155
6-24 months   ki1000108-IRC              INDIA        8+                     0       17   155
6-24 months   ki1000108-IRC              INDIA        8+                     1       30   155
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       14   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        1   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       65   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1        3   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       42   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1        6   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       22   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1        3   156
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       25   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1        6   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0       61   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1       30   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       32   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       15   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       20   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1        9   198
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0       11   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1        3   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0       37   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       14   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       29   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1        8   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       12   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1        9   123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       16   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1        2   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0       52   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1        6   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0       18   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1        5   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       10   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1        4   113
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0       16    74
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1        5    74
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0       28    74
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1        4    74
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0        7    74
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1        2    74
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       10    74
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     1        2    74


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
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/028719d9-79ae-4722-a962-b80532275373/2a4b73a5-8762-4cd3-a621-f80c39d4224c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/028719d9-79ae-4722-a962-b80532275373/2a4b73a5-8762-4cd3-a621-f80c39d4224c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/028719d9-79ae-4722-a962-b80532275373/2a4b73a5-8762-4cd3-a621-f80c39d4224c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/028719d9-79ae-4722-a962-b80532275373/2a4b73a5-8762-4cd3-a621-f80c39d4224c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                0.6530612   0.4957283   0.8103942
0-24 months   ki1000108-IRC           INDIA        4-5                  NA                0.5514706   0.4595591   0.6433820
0-24 months   ki1000108-IRC           INDIA        6-7                  NA                0.5607477   0.4676055   0.6538899
0-24 months   ki1000108-IRC           INDIA        8+                   NA                0.6407767   0.5401604   0.7413930
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.5063291   0.3872714   0.6253869
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.5083799   0.4291011   0.5876587
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.5500000   0.4493259   0.6506741
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.5238095   0.3992857   0.6483333
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.5744681   0.4153948   0.7335413
0-24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.6170213   0.5382157   0.6958269
0-24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.5200000   0.4076313   0.6323687
0-24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.5909091   0.4293879   0.7524303
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.6041667   0.4582490   0.7500843
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.5827815   0.5054087   0.6601542
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.6666667   0.5520128   0.7813206
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.7209302   0.5872516   0.8546089
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                0.6842105   0.5433626   0.8250585
0-6 months    ki1000108-IRC           INDIA        4-5                  NA                0.6172840   0.5071231   0.7274448
0-6 months    ki1000108-IRC           INDIA        6-7                  NA                0.6307692   0.5104178   0.7511207
0-6 months    ki1000108-IRC           INDIA        8+                   NA                0.6428571   0.5116435   0.7740708
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.7083333   0.5824756   0.8341911
0-6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.6931818   0.5961748   0.7901888
0-6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.7547170   0.6380983   0.8713357
0-6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.7058824   0.5516883   0.8600764
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.7272727   0.5723745   0.8821709
0-6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.8111111   0.7342291   0.8879931
0-6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.8157895   0.6901446   0.9414344
0-6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.7391304   0.5561946   0.9220662
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                0.5454545   0.2197802   0.8711289
6-24 months   ki1000108-IRC           INDIA        4-5                  NA                0.4545455   0.3122734   0.5968175
6-24 months   ki1000108-IRC           INDIA        6-7                  NA                0.4523810   0.3012030   0.6035589
6-24 months   ki1000108-IRC           INDIA        8+                   NA                0.6382979   0.4831935   0.7934023
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.1935484   0.0330016   0.3540952
6-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.3296703   0.2363549   0.4229858
6-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.3191489   0.1718814   0.4664164
6-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.3103448   0.1515470   0.4691427


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-6 months    ki1000108-IRC           INDIA        NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
6-24 months   ki1000108-IRC           INDIA        NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3030303   0.2377927   0.3682679


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC           INDIA        4-5                  3 or less         0.8444393   0.6299810   1.131904
0-24 months   ki1000108-IRC           INDIA        6-7                  3 or less         0.8586449   0.6407711   1.150600
0-24 months   ki1000108-IRC           INDIA        8+                   3 or less         0.9811893   0.7360153   1.308033
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.0040503   0.7572030   1.331370
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.0862500   0.8061978   1.463585
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.0345238   0.7404263   1.445437
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.0740741   0.7916113   1.457325
0-24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         0.9051852   0.6370588   1.286161
0-24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.0286195   0.6970323   1.517947
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.9646038   0.7319038   1.271288
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         1.1034483   0.8200920   1.484709
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         1.1932638   0.8799131   1.618204
0-6 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC           INDIA        4-5                  3 or less         0.9021842   0.6870280   1.184721
0-6 months    ki1000108-IRC           INDIA        6-7                  3 or less         0.9218935   0.6962754   1.220620
0-6 months    ki1000108-IRC           INDIA        8+                   3 or less         0.9395604   0.7031128   1.255522
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.9786096   0.7805179   1.226976
0-6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.0654828   0.8419421   1.348375
0-6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.9965398   0.7519793   1.320637
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.1152778   0.8833614   1.408081
0-6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.1217105   0.8624459   1.458914
0-6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.0163043   0.7331876   1.408745
6-24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC           INDIA        4-5                  3 or less         0.8333333   0.4246670   1.635268
6-24 months   ki1000108-IRC           INDIA        6-7                  3 or less         0.8293651   0.4183925   1.644022
6-24 months   ki1000108-IRC           INDIA        8+                   3 or less         1.1702128   0.6142262   2.229468
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.7032967   0.7092180   4.090730
6-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.6489362   0.6381154   4.260970
6-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.6034483   0.6051792   4.248405


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0631878   -0.2091334   0.0827577
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0138609   -0.0930759   0.1207977
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0085938   -0.1356801   0.1528677
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0196275   -0.1135596   0.1528147
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.0467105   -0.1788035   0.0853824
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0046712   -0.1073646   0.1167069
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0607708   -0.0763575   0.1978990
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0293255   -0.3424212   0.2837702
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.1094819   -0.0388530   0.2578168


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.1071210   -0.3840235   0.1143815
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0266459   -0.2023207   0.2120087
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0147391   -0.2666953   0.2336444
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0314648   -0.2075823   0.2231913
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.0732714   -0.3027688   0.1157974
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0065514   -0.1636785   0.1518790
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0771160   -0.1152573   0.2363063
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0568182   -0.8760558   0.4046741
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.3612903   -0.3836061   0.7051545
