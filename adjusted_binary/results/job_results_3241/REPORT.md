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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country      nhh          ever_stunted   n_cell     n
------------  -------------------------  -----------  ----------  -------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less               0       25   410
0-24 months   ki1000108-IRC              INDIA        3 or less               1       33   410
0-24 months   ki1000108-IRC              INDIA        4-5                     0       52   410
0-24 months   ki1000108-IRC              INDIA        4-5                     1      106   410
0-24 months   ki1000108-IRC              INDIA        6-7                     0       41   410
0-24 months   ki1000108-IRC              INDIA        6-7                     1       66   410
0-24 months   ki1000108-IRC              INDIA        8+                      0       29   410
0-24 months   ki1000108-IRC              INDIA        8+                      1       58   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0        9   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       29   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       35   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1      148   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       16   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1      111   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       12   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       58   418
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       47   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       70   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0       77   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1      187   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0       42   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1      100   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       45   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       61   629
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       83   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       57   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      179   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1      143   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0       84   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       67   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       50   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1       37   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       60   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       54   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      171   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1      171   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0       99   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       79   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       66   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       58   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0       85   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1      140   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      122   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1      218   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0       61   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1      121   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       28   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      1       42   817
0-6 months    ki1000108-IRC              INDIA        3 or less               0       36   410
0-6 months    ki1000108-IRC              INDIA        3 or less               1       22   410
0-6 months    ki1000108-IRC              INDIA        4-5                     0       83   410
0-6 months    ki1000108-IRC              INDIA        4-5                     1       75   410
0-6 months    ki1000108-IRC              INDIA        6-7                     0       65   410
0-6 months    ki1000108-IRC              INDIA        6-7                     1       42   410
0-6 months    ki1000108-IRC              INDIA        8+                      0       52   410
0-6 months    ki1000108-IRC              INDIA        8+                      1       35   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0       26   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       12   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0      109   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       73   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       78   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       48   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       41   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       29   416
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               0       79   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               1       38   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     0      166   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     1       98   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     0       90   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     1       52   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      0       74   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      1       32   629
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               0      108   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               1       32   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     0      241   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     1       81   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     0      116   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     1       35   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      0       68   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      1       19   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       74   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       40   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      244   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       98   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      129   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       49   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       82   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       42   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               0       48   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               1       22   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     0       66   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     1       45   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     0       43   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     1       24   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      0       17   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      1        4   269
6-24 months   ki1000108-IRC              INDIA        3 or less               0       25   236
6-24 months   ki1000108-IRC              INDIA        3 or less               1       11   236
6-24 months   ki1000108-IRC              INDIA        4-5                     0       52   236
6-24 months   ki1000108-IRC              INDIA        4-5                     1       31   236
6-24 months   ki1000108-IRC              INDIA        6-7                     0       41   236
6-24 months   ki1000108-IRC              INDIA        6-7                     1       24   236
6-24 months   ki1000108-IRC              INDIA        8+                      0       29   236
6-24 months   ki1000108-IRC              INDIA        8+                      1       23   236
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0        9   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       17   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       28   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       75   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       14   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       63   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0        8   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       29   243
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       30   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       32   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0       55   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1       89   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0       30   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1       48   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       32   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       29   345
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       59   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       25   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      150   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1       62   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0       64   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       32   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       47   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1       18   457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       55   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       14   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      161   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       73   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0       97   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       30   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       60   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       16   506
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0       78   710
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1      118   710
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      118   710
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1      173   710
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0       60   710
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1       97   710
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       28   710
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      1       38   710


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

* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b24c9bb2-c0ed-4b64-878a-b676e1b8d482/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b24c9bb2-c0ed-4b64-878a-b676e1b8d482/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b24c9bb2-c0ed-4b64-878a-b676e1b8d482/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b24c9bb2-c0ed-4b64-878a-b676e1b8d482/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.6106764   0.5047337   0.7166191
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.6760098   0.6058999   0.7461197
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6224179   0.5373474   0.7074884
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.6616410   0.5740129   0.7492691
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.7631579   0.6278220   0.8984938
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.8087432   0.7516931   0.8657933
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.8740157   0.8162349   0.9317966
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.8285714   0.7401768   0.9169660
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.8248619   0.7802926   0.8694312
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.7598516   0.7159575   0.8037457
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.8529889   0.8109460   0.8950318
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.7559449   0.7005946   0.8112952
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2922845   0.2393993   0.3451697
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3931876   0.3481025   0.4382727
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3279465   0.2743432   0.3815498
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2599380   0.2022121   0.3176640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1572251   0.1239239   0.1905262
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.4133204   0.3751825   0.4514582
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.3148349   0.2746790   0.3549907
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2119651   0.1804255   0.2435048
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.6092815   0.5512441   0.6673190
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.6336643   0.5859516   0.6813769
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.6501650   0.5895459   0.7107842
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.5715914   0.4811719   0.6620109
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.3734757   0.2658802   0.4810713
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.4771026   0.4023911   0.5518142
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.3786161   0.2928551   0.4643771
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.3676428   0.2779564   0.4573292
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3470173   0.2069982   0.4870363
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4117930   0.3433146   0.4802715
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3888289   0.3055513   0.4721065
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4472729   0.3434478   0.5510980
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2902911   0.2466703   0.3339119
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3513192   0.3056640   0.3969743
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3476057   0.3017591   0.3934523
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3006371   0.2454872   0.3557869
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2207110   0.1567897   0.2846323
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2516895   0.2051194   0.2982596
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2264537   0.1611312   0.2917762
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2137315   0.1365109   0.2909522
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3176011   0.2579227   0.3772795
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2872933   0.2442371   0.3303495
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2729600   0.2181939   0.3277260
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.3520900   0.2913323   0.4128478
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.3309578   0.1902607   0.4716549
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.3643949   0.2647270   0.4640628
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3707064   0.2563905   0.4850222
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.4429306   0.3127135   0.5731478
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.6538462   0.4706024   0.8370899
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.7281553   0.6420565   0.8142542
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.8181818   0.7318558   0.9045078
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.7837838   0.6508654   0.9167021
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4281671   0.3534074   0.5029268
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.5897972   0.5218260   0.6577683
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.5748202   0.4984542   0.6511862
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4381234   0.3493256   0.5269212
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2773301   0.1910508   0.3636094
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2933259   0.2325248   0.3541269
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3317431   0.2402869   0.4231993
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2748981   0.1729335   0.3768626
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1860909   0.0993178   0.2728641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2898032   0.2334729   0.3461335
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2254768   0.1543760   0.2965776
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1907369   0.1086809   0.2727930
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.5892241   0.5261893   0.6522588
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.5844992   0.5317708   0.6372277
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.6147640   0.5472247   0.6823032
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.5563802   0.4610746   0.6516858


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.6376989   0.6047193   0.6706785
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3021108   0.2694011   0.3348205
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.6000000   0.5639396   0.6360604


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.1069853   0.9046847   1.3545231
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.0192270   0.8175173   1.2707056
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.0834560   0.8715455   1.3468909
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0597324   0.8756092   1.2825731
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1452620   0.9477874   1.3838812
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.0857143   0.8827484   1.3353471
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.9211864   0.8518499   0.9961666
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.0340990   0.9611276   1.1126106
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9164503   0.8372448   1.0031488
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.3452224   1.0915114   1.6579059
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.1220113   0.8854161   1.4218279
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.8893323   0.6718509   1.1772135
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         2.6288455   2.0988768   3.2926318
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         2.0024471   1.5704237   2.5533201
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.3481639   1.0357987   1.7547288
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0400189   0.9242519   1.1702862
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0671012   0.9368756   1.2154281
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9381401   0.7821993   1.1251695
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.2774661   0.9207017   1.7724739
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         1.0137636   0.7030210   1.4618575
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.9843820   0.6751170   1.4353184
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1866644   0.7686122   1.8320974
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1204887   0.7097530   1.7689179
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.2889068   0.8112935   2.0476940
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.2102307   0.9956431   1.4710676
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.1974383   0.9854714   1.4549976
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0356400   0.8195035   1.3087805
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1403579   0.8104229   1.6046143
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0260191   0.6828113   1.5417365
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9683774   0.6110027   1.5347800
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.9045727   0.7153437   1.1438581
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.8594428   0.6555052   1.1268285
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.1085919   0.8619896   1.4257434
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.1010314   0.6638720   1.8260601
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.1201016   0.6644613   1.8881878
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.3383297   0.8011193   2.2357798
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1136493   0.8215720   1.5095631
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2513369   0.9275155   1.6882133
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.1987281   0.8638907   1.6633461
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.3774929   1.1212253   1.6923331
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.3425136   1.0829655   1.6642661
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0232533   0.7864100   1.3314267
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.0576777   0.7277709   1.5371348
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.1962030   0.7894320   1.8125711
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9912305   0.6107013   1.6088682
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.5573204   0.9395553   2.5812711
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.2116484   0.6899240   2.1279035
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.0249662   0.5435664   1.9327090
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         0.9919813   0.8647725   1.1379025
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0433450   0.8967253   1.2139378
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9442591   0.7730222   1.1534277


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0307870   -0.0673284    0.1289024
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0645933   -0.0630747    0.1922613
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1603150   -0.2029944   -0.1176356
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1420012    0.0937168    0.1902856
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.3203475    0.2819163    0.3587787
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0284174   -0.0195058    0.0763406
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0509145   -0.0495926    0.1514216
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0424058   -0.0911632    0.1759748
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0594704    0.0163958    0.1025451
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0178604   -0.0395126    0.0752335
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0154903   -0.0697802    0.0387996
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0461609   -0.0847421    0.1770638
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1033555   -0.0678495    0.2745605
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1457459    0.0764050    0.2150869
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0224511   -0.0563587    0.1012609
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0767549   -0.0064570    0.1599668
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0107759   -0.0418975    0.0634493


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0479950   -0.1177277    0.1891463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0780347   -0.0902029    0.2203102
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.2412396   -0.3136968   -0.1727787
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.3269765    0.2102158    0.4264755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.6707829    0.5994618    0.7294043
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0445624   -0.0336480    0.1168550
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.1199709   -0.1507819    0.3270218
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1088939   -0.3091566    0.3934492
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1700314    0.0446837    0.2789321
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0748641   -0.1993135    0.2863614
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0512735   -0.2481936    0.1145796
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1224041   -0.3020693    0.4084995
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1364967   -0.1231626    0.3361264
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.2539512    0.1275777    0.3620191
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0748915   -0.2283086    0.3032486
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.2920149   -0.1026039    0.5454007
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0179599   -0.0738483    0.1019190
