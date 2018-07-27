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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country      nhh          ever_stunted   n_cell     n
------------  -------------------------  -----------  ----------  -------------  -------  ----
0-6 months    ki1000108-IRC              INDIA        3 or less               0       54   410
0-6 months    ki1000108-IRC              INDIA        3 or less               1        4   410
0-6 months    ki1000108-IRC              INDIA        4-5                     0      135   410
0-6 months    ki1000108-IRC              INDIA        4-5                     1       23   410
0-6 months    ki1000108-IRC              INDIA        6-7                     0       92   410
0-6 months    ki1000108-IRC              INDIA        6-7                     1       15   410
0-6 months    ki1000108-IRC              INDIA        8+                      0       79   410
0-6 months    ki1000108-IRC              INDIA        8+                      1        8   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0       26   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       12   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0      110   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       72   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       79   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       47   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       42   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       28   416
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               0       98   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               1       19   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     0      221   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     1       43   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     0      122   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     1       20   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      0       89   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      1       17   629
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               0      131   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               1        9   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     0      286   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     1       36   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     0      137   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     1       14   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      0       80   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      1        7   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       95   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       19   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      297   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       45   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      153   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       25   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      0      108   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       16   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               0       48   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               1       22   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     0       66   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     1       45   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     0       43   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     1       24   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      0       17   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      1        4   269
6-24 months   ki1000108-IRC              INDIA        3 or less               0       42   339
6-24 months   ki1000108-IRC              INDIA        3 or less               1        8   339
6-24 months   ki1000108-IRC              INDIA        4-5                     0       96   339
6-24 months   ki1000108-IRC              INDIA        4-5                     1       37   339
6-24 months   ki1000108-IRC              INDIA        6-7                     0       70   339
6-24 months   ki1000108-IRC              INDIA        6-7                     1       16   339
6-24 months   ki1000108-IRC              INDIA        8+                      0       48   339
6-24 months   ki1000108-IRC              INDIA        8+                      1       22   339
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0       15   226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       10   226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       44   226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       54   226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       28   226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       41   226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       12   226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       22   226
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       43   420
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       32   420
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0       83   420
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1       82   420
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0       62   420
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1       48   420
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       43   420
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       27   420
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       70   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       19   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      178   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1       58   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0       78   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       29   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       52   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1       13   497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       77   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       15   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      224   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       53   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      123   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       29   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       79   620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       20   620
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0      110   579
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1       48   579
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      162   579
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1       76   579
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0       88   579
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1       44   579
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       39   579
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      1       12   579
0-24 months   ki1000108-IRC              INDIA        3 or less               0       34   410
0-24 months   ki1000108-IRC              INDIA        3 or less               1       24   410
0-24 months   ki1000108-IRC              INDIA        4-5                     0       81   410
0-24 months   ki1000108-IRC              INDIA        4-5                     1       77   410
0-24 months   ki1000108-IRC              INDIA        6-7                     0       57   410
0-24 months   ki1000108-IRC              INDIA        6-7                     1       50   410
0-24 months   ki1000108-IRC              INDIA        8+                      0       43   410
0-24 months   ki1000108-IRC              INDIA        8+                      1       44   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0       14   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       24   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       48   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1      135   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       28   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       99   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       16   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       54   418
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       59   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       58   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0      104   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1      160   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0       69   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1       73   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       54   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       52   629
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       93   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       47   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      197   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1      125   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0       91   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       60   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       56   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1       31   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       68   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       46   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      211   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1      131   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      109   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       69   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       76   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       48   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0      103   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1      122   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      141   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1      199   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0       73   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1      109   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       32   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      1       38   817


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

* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3a9a91a1-66c2-4bc1-a4e2-395830d0b5ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3a9a91a1-66c2-4bc1-a4e2-395830d0b5ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3a9a91a1-66c2-4bc1-a4e2-395830d0b5ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3a9a91a1-66c2-4bc1-a4e2-395830d0b5ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.4137931   0.2868873   0.5406989
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.4873418   0.4093084   0.5653752
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.4672897   0.3726387   0.5619407
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.5057471   0.4005606   0.6109336
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.6315789   0.4780245   0.7851334
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.7377049   0.6738963   0.8015135
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.7795276   0.7073405   0.8517146
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.7714286   0.6729418   0.8699154
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4957265   0.4050583   0.5863947
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6060606   0.5470725   0.6650487
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.5140845   0.4318135   0.5963556
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4905660   0.3953230   0.5858091
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.3357143   0.2574332   0.4139954
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3881988   0.3349312   0.4414663
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3973510   0.3192441   0.4754579
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.3563218   0.2556160   0.4570276
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.4035088   0.3133909   0.4936266
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.3830409   0.3314857   0.4345961
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.3876404   0.3160191   0.4592618
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.3870968   0.3013082   0.4728854
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.5422222   0.4770836   0.6073609
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.5852941   0.5328941   0.6376942
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.5989011   0.5276516   0.6701506
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.5428571   0.4260865   0.6596278
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3157895   0.1678198   0.4637591
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.3956044   0.3244788   0.4667300
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3730159   0.2884729   0.4575588
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4000000   0.2850981   0.5149019
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1623932   0.0955119   0.2292745
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1628788   0.1183010   0.2074565
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1408451   0.0835845   0.1981057
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1603774   0.0904650   0.2302898
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0642857   0.0236298   0.1049416
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1118012   0.0773576   0.1462449
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.0927152   0.0464220   0.1390085
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.0804598   0.0232627   0.1376568
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1666667   0.0982099   0.2351234
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1315789   0.0957297   0.1674282
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1404494   0.0893730   0.1915259
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1290323   0.0699885   0.1880760
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.1600000   0.0582336   0.2617664
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.2781955   0.2019264   0.3544646
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.1860465   0.1036800   0.2684131
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.3142857   0.2053740   0.4231974
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.4000000   0.2075373   0.5924627
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.5510204   0.4523254   0.6497154
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.5942029   0.4780825   0.7103233
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.6470588   0.4860704   0.8080472
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4266667   0.3145983   0.5387350
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.4969697   0.4205886   0.5733508
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.4363636   0.3435753   0.5291519
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3857143   0.2715488   0.4998798
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2134831   0.1282661   0.2987001
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2457627   0.1907781   0.3007474
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2710280   0.1867225   0.3553336
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2000000   0.1026606   0.2973394
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1630435   0.0874981   0.2385888
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1913357   0.1449760   0.2376955
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1907895   0.1282744   0.2533046
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2020202   0.1228659   0.2811745
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.3037975   0.2320255   0.3755694
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.3193277   0.2600458   0.3786097
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.3333333   0.2528455   0.4138212
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.2352941   0.1187766   0.3518116


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.7464115   0.7046540   0.7881689
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.5453100   0.5063654   0.5842547
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.5728274   0.5388870   0.6067678
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3822115   0.3354600   0.4289631
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.1573927   0.1289105   0.1858749
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1385224   0.1139141   0.1631308
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.2448378   0.1989973   0.2906782
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.5619469   0.4971181   0.6267757
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.4500000   0.4023647   0.4976353
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.3108808   0.2731472   0.3486144


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.1777426   0.8332908   1.664578
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.1292835   0.7819558   1.630886
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.2222222   0.8437581   1.770445
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1680328   0.9023663   1.511914
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2342520   0.9515135   1.601005
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.2214286   0.9281256   1.607420
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.2225705   0.9937904   1.504018
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.0370325   0.8132914   1.322326
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9895901   0.7579052   1.292099
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1563367   0.8822333   1.515602
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.1835987   0.8724780   1.605663
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.0613842   0.7357782   1.531081
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.9492754   0.7313861   1.232077
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9606742   0.7189417   1.283685
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9593268   0.7003624   1.314045
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0794359   0.9292430   1.253904
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.1045307   0.9327197   1.307990
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         1.0011710   0.7825429   1.280880
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.2527473   0.7584031   2.069316
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1812169   0.7019020   1.987847
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.2666667   0.7310865   2.194603
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.0029904   0.6117040   1.644570
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8673091   0.4862332   1.547046
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9875869   0.5421579   1.798974
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.7391304   0.8606327   3.514362
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.4422369   0.6443097   3.228335
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.2515964   0.4833293   3.241048
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.7894737   0.4822575   1.292398
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.8426966   0.4868760   1.458559
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.7741935   0.4186048   1.431841
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.7387218   0.8698282   3.475575
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.1627907   0.5357288   2.523818
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.9642857   0.9520022   4.052951
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3775510   0.8243944   2.301868
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.4855072   0.8837582   2.496986
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.6176471   0.9411019   2.780551
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1647727   0.8591632   1.579090
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.0227273   0.7294452   1.433927
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9040179   0.6085782   1.342881
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1512043   0.7284844   1.819217
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.2695524   0.7653696   2.105863
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9368421   0.4992262   1.758067
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1735259   0.6956841   1.979581
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1701754   0.6634223   2.064010
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.2390572   0.6754005   2.273115
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0511204   0.7783285   1.419522
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0972222   0.7826792   1.538174
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.7745098   0.4474491   1.340634


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0618166   -0.0560435   0.1796768
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1148325   -0.0302039   0.2598690
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0495835   -0.0321425   0.1313095
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0400000   -0.0304683   0.1104683
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0156460   -0.0986114   0.0673195
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0306052   -0.0246935   0.0859039
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0664221   -0.0752842   0.2081283
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0050005   -0.0651691   0.0551681
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0300000   -0.0082236   0.0682236
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0281442   -0.0904522   0.0341638
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0848378   -0.0121301   0.1818056
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1619469   -0.0198485   0.3437423
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0233333   -0.0783670   0.1250337
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0259535   -0.0519662   0.1038732
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0256662   -0.0447859   0.0961183
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0070834   -0.0542654   0.0684321


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1299735   -0.1570013   0.3457690
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1538462   -0.0655404   0.3280627
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0909272   -0.0722010   0.2292365
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1064639   -0.1022575   0.2756622
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0403389   -0.2778333   0.1530154
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0534283   -0.0482908   0.1452773
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1737835   -0.2941506   0.4725238
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0317707   -0.4944565   0.2876669
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.3181818   -0.2253708   0.6206242
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.2031746   -0.7473021   0.1715061
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.3465060   -0.1923464   0.6418370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2881890   -0.1235849   0.5490551
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0518519   -0.2034044   0.2529652
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1083939   -0.2840804   0.3809099
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1360089   -0.3303679   0.4388916
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0227848   -0.1958878   0.2014723
