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
![](/tmp/e379f052-2fc1-4be2-8728-133d3a184a0f/17b26ad5-3307-4c88-abef-04a1161b67a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e379f052-2fc1-4be2-8728-133d3a184a0f/17b26ad5-3307-4c88-abef-04a1161b67a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        optimal              NA                0.6716985   0.5522987   0.7910982
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                0.8346524   0.7201028   0.9492021
0-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                0.6470733   0.5527408   0.7414058
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.4896272   0.4082846   0.5709698
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.5844091   0.4857701   0.6830481
0-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                0.6381137   0.5446786   0.7315488
0-6 months    ki1000108-IRC              INDIA        optimal              NA                0.4890612   0.3761909   0.6019314
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                0.3716322   0.2109834   0.5322809
0-6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              NA                0.2979643   0.2019903   0.3939383
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.2258311   0.1489269   0.3027353
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.2970780   0.2320784   0.3620775
6-24 months   ki1000108-IRC              INDIA        optimal              NA                0.2590249   0.1311259   0.3869239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                0.6674838   0.4752327   0.8597350
6-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                0.5106509   0.3804793   0.6408226
6-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.3859833   0.2615221   0.5104444
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.2819676   0.1804318   0.3835035
6-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                0.7091513   0.6250958   0.7932068


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        observed             NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        observed             NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH   observed             NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1148112-LCNI-5           MALAWI       observed             NA                0.6376989   0.6047193   0.6706785
0-6 months    ki1000108-IRC              INDIA        observed             NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        observed             NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH   observed             NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.3021108   0.2694011   0.3348205
6-24 months   ki1000108-IRC              INDIA        observed             NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        observed             NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH   observed             NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1148112-LCNI-5           MALAWI       observed             NA                0.6000000   0.5639396   0.6360604


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        observed             optimal           0.9549872   0.8106797   1.1249825
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        observed             optimal           0.9917316   0.8699957   1.1305016
0-24 months   ki1017093-NIH-Birth        BANGLADESH   observed             optimal           1.0270040   0.9023095   1.1689308
0-24 months   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.8869722   0.7623532   1.0319622
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           0.8171888   0.6980385   0.9566771
0-24 months   ki1148112-LCNI-5           MALAWI       observed             optimal           0.9993499   0.8728149   1.1442292
0-6 months    ki1000108-IRC              INDIA        observed             optimal           0.8677651   0.7060017   1.0665928
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        observed             optimal           1.0478724   0.6955132   1.5787428
0-6 months    ki1017093-NIH-Birth        BANGLADESH   observed             optimal           1.1738371   0.8755131   1.5738124
0-6 months    ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.0564153   0.7740668   1.4417530
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.0169412   0.8417722   1.2285620
6-24 months   ki1000108-IRC              INDIA        observed             optimal           1.4559166   0.9277994   2.2846458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        observed             optimal           1.1344119   0.8655666   1.4867607
6-24 months   ki1017093-NIH-Birth        BANGLADESH   observed             optimal           1.1238852   0.8893461   1.4202773
6-24 months   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.7766689   0.5783602   1.0429737
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           0.9321844   0.6643735   1.3079507
6-24 months   ki1148112-LCNI-5           MALAWI       observed             optimal           0.8460818   0.7577339   0.9447306


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        optimal              NA                -0.0302351   -0.1402525    0.0797824
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                -0.0069012   -0.1162051    0.1024026
0-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.0174736   -0.0661964    0.1011435
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0553415   -0.1291664    0.0184835
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.1068366   -0.1986366   -0.0150365
0-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                -0.0004148   -0.0868043    0.0859746
0-6 months    ki1000108-IRC              INDIA        optimal              NA                -0.0646709   -0.1655108    0.0361689
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.0177909   -0.1344493    0.1700311
0-6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.0517972   -0.0351816    0.1387760
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0127403   -0.0574733    0.0829540
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0050328   -0.0511255    0.0611912
6-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.1180937    0.0015780    0.2346095
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.0897178   -0.0901586    0.2695942
6-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.0632621   -0.0561423    0.1826665
6-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0862021   -0.2002559    0.0278517
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0191218   -0.1144812    0.0762376
6-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                -0.1091513   -0.1867784   -0.0315242


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        optimal              NA                -0.0471345   -0.2335327    0.1110973
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                -0.0083373   -0.1494309    0.1154369
0-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.0262940   -0.1082672    0.1445173
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.1274310   -0.3117279    0.0309723
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.2237075   -0.4325857   -0.0452848
0-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                -0.0006505   -0.1457183    0.1260492
0-6 months    ki1000108-IRC              INDIA        optimal              NA                -0.1523855   -0.4164271    0.0624350
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.0456853   -0.4377872    0.3665846
0-6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.1480930   -0.1421873    0.3646003
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0534025   -0.2918781    0.3063999
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0166590   -0.1879698    0.1860403
6-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.3131474   -0.0778192    0.5622954
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.1184860   -0.1553125    0.3273968
6-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.1102294   -0.1244216    0.2959121
6-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.2875500   -0.7290262    0.0412031
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0727491   -0.5051774    0.2354452
6-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                -0.1819189   -0.3197246   -0.0585028
