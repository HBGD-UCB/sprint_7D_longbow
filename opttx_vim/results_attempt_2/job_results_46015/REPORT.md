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
![](/tmp/a92ae44b-813b-4f39-b8ea-a56787a90cca/de40b00f-65c4-44f2-8a23-59ce9f95e74a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a92ae44b-813b-4f39-b8ea-a56787a90cca/de40b00f-65c4-44f2-8a23-59ce9f95e74a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        optimal              NA                0.7206535   0.6069220   0.8343849
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                0.8178597   0.6902974   0.9454220
0-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                0.6060155   0.5093560   0.7026750
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.5211255   0.4427131   0.5995378
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.4733082   0.3809261   0.5656904
0-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                0.6941641   0.6057663   0.7825619
0-6 months    ki1000108-IRC              INDIA        optimal              NA                0.4687401   0.3588415   0.5786387
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                0.3603374   0.2030072   0.5176675
0-6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              NA                0.2822031   0.1877056   0.3767006
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.2396389   0.1574724   0.3218053
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.3202663   0.2565077   0.3840250
6-24 months   ki1000108-IRC              INDIA        optimal              NA                0.3177861   0.1819633   0.4536090
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                0.6608344   0.4682487   0.8534201
6-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                0.5228034   0.3792205   0.6663863
6-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.4922685   0.3922528   0.5922841
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.1895934   0.1002263   0.2789605
6-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                0.5894095   0.5003239   0.6784952


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
0-24 months   ki1000108-IRC              INDIA        observed             optimal           0.8901136   0.7673694   1.0324912
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        observed             optimal           1.0120943   0.8728671   1.1735291
0-24 months   ki1017093-NIH-Birth        BANGLADESH   observed             optimal           1.0965840   0.9519567   1.2631839
0-24 months   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.8333612   0.7255098   0.9572452
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.0090096   0.8439818   1.2063061
0-24 months   ki1148112-LCNI-5           MALAWI       observed             optimal           0.9186573   0.8151192   1.0353470
0-6 months    ki1000108-IRC              INDIA        observed             optimal           0.9053850   0.7343328   1.1162814
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        observed             optimal           1.0807180   0.7159540   1.6313218
0-6 months    ki1017093-NIH-Birth        BANGLADESH   observed             optimal           1.2393964   0.9150241   1.6787572
0-6 months    ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.9955456   0.7314148   1.3550604
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           0.9433111   0.7952737   1.1189052
6-24 months   ki1000108-IRC              INDIA        observed             optimal           1.1867058   0.8046069   1.7502593
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        observed             optimal           1.1458266   0.8712611   1.5069175
6-24 months   ki1017093-NIH-Birth        BANGLADESH   observed             optimal           1.0977607   0.8545725   1.4101537
6-24 months   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.6089791   0.5002766   0.7413010
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.3863659   0.8866967   2.1676076
6-24 months   ki1148112-LCNI-5           MALAWI       observed             optimal           1.0179679   0.8863252   1.1691630


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        optimal              NA                -0.0791900   -0.1856442    0.0272641
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.0098915   -0.1111305    0.1309134
0-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.0585314   -0.0267555    0.1438183
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0868397   -0.1582657   -0.0154138
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0042643   -0.0802584    0.0887870
0-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                -0.0564652   -0.1393450    0.0264146
0-6 months    ki1000108-IRC              INDIA        optimal              NA                -0.0443498   -0.1424594    0.0537597
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.0290857   -0.1190977    0.1772691
0-6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.0675584   -0.0174037    0.1525205
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0010674   -0.0749593    0.0728244
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0181555   -0.0727980    0.0364869
6-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.0593325   -0.0641814    0.1828464
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.0963672   -0.0839470    0.2766815
6-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.0511096   -0.0794449    0.1816642
6-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.1924873   -0.2845809   -0.1003937
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0732524   -0.0120678    0.1585727
6-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                 0.0105905   -0.0710311    0.0922121


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        optimal              NA                -0.1234522   -0.3031533    0.0314687
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.0119498   -0.1456498    0.1478694
0-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.0880771   -0.0504680    0.2083497
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.1999599   -0.3783411   -0.0446644
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0089291   -0.1848597    0.1710230
0-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                -0.0885452   -0.2268145    0.0341402
0-6 months    ki1000108-IRC              INDIA        optimal              NA                -0.1045025   -0.3617804    0.1041685
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.0746892   -0.3967377    0.3870002
0-6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.1931556   -0.0928674    0.4043213
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0044743   -0.3672133    0.2620255
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0600956   -0.2574287    0.1062692
6-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.1573312   -0.2428429    0.4286561
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        optimal              NA                 0.1272676   -0.1477616    0.3363937
6-24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              NA                 0.0890547   -0.1701757    0.2908575
6-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.6420926   -0.9988944   -0.3489798
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.2786897   -0.1277814    0.5386619
6-24 months   ki1148112-LCNI-5           MALAWI       optimal              NA                 0.0176508   -0.1282540    0.1446873
