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
![](/tmp/5ae55ee1-6f34-451d-831c-9fd9c889f123/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ae55ee1-6f34-451d-831c-9fd9c889f123/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ae55ee1-6f34-451d-831c-9fd9c889f123/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ae55ee1-6f34-451d-831c-9fd9c889f123/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.4383069    0.3295592   0.5470545
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.5025987    0.4291578   0.5760396
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.4726981    0.3866547   0.5587416
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.5273132    0.4389892   0.6156372
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.7044837    0.6234331   0.7855343
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.7547428    0.7005781   0.8089075
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.7946338    0.7372143   0.8520532
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.7974132    0.7323682   0.8624583
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5737003    0.5272466   0.6201540
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6243292    0.5788700   0.6697884
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.5653496    0.5190466   0.6116527
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.5637017    0.5079079   0.6194956
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.3082477    0.2734893   0.3430061
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3885732    0.3509132   0.4262333
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.4698371    0.4319968   0.5076774
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.5406048    0.5119216   0.5692881
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1365258    0.1044793   0.1685723
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.3093223    0.2718621   0.3467825
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2784314    0.2373147   0.3195481
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1899027    0.1583127   0.2214928
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.5200588    0.4760109   0.5641066
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.5671779    0.5256821   0.6086737
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.5792623    0.5341533   0.6243713
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.4069057    0.3643657   0.4494458
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3908421    0.3162570   0.4654272
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4179536    0.3554626   0.4804446
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4072555    0.3386667   0.4758443
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4535069    0.3741499   0.5328640
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.0912742    0.0552992   0.1272492
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1346662    0.0994064   0.1699260
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.0861733    0.0513759   0.1209707
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1058614    0.0624500   0.1492727
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0281429    0.0083690   0.0479167
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.0925212    0.0677018   0.1173406
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.0475714    0.0251030   0.0700397
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.0122511   -0.0003864   0.0248887
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0801698    0.0590823   0.1012572
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1018110    0.0769833   0.1266387
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1128088    0.0833155   0.1423021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0529978    0.0326267   0.0733689
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.1880178    0.0973650   0.2786706
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.2987906    0.2261149   0.3714664
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.1904335    0.1157210   0.2651460
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.3501123    0.2573198   0.4429048
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.4647037    0.3697188   0.5596886
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.5759431    0.4959900   0.6558962
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.6194771    0.5332484   0.7057057
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.7180343    0.6307646   0.8053039
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2424287    0.1764249   0.3084326
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.4471003    0.3848280   0.5093726
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3398611    0.2755483   0.4041740
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2597587    0.1870576   0.3324599
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0820800    0.0510789   0.1130810
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2137273    0.1760716   0.2513830
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2594589    0.2216217   0.2972962
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.0471597    0.0234457   0.0708737
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0375014    0.0158089   0.0591938
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1555992    0.1241847   0.1870138
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1633350    0.1292236   0.1974464
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1653266    0.1392963   0.1913570
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.2594429    0.2104215   0.3084643
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.3028936    0.2552517   0.3505354
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.3006766    0.2479159   0.3534372
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1110863    0.0662612   0.1559113


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


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.1466823   0.8608046   1.5275015
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.0784639   0.7938947   1.4650362
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.2030686   0.8947691   1.6175949
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0713418   0.9394889   1.2216995
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1279661   0.9877957   1.2880271
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.1319115   0.9874479   1.2975102
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.0882497   0.9806487   1.2076571
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9854442   0.8842730   1.0981906
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9825717   0.8695841   1.1102402
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.2605878   1.0958313   1.4501151
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.5242196   1.3374985   1.7370078
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.7538003   1.5586784   1.9733483
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         2.2656682   1.7463694   2.9393852
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         2.0394043   1.5506513   2.6822085
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.3909654   1.0396899   1.8609248
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0906035   0.9821280   1.2110600
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.1138401   0.9992022   1.2416304
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.7824226   0.6885717   0.8890652
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0693669   0.8416667   1.3586680
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.0419950   0.8094423   1.3413599
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.1603329   0.8980532   1.4992122
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.4754028   0.9211674   2.3631030
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9441145   0.5382459   1.6560317
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.1598168   0.6578811   2.0447083
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         3.2875546   1.5513398   6.9668913
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.6903531   0.7258252   3.9366138
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.4353199   0.1244276   1.5230011
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2699427   0.8921911   1.8076334
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.4071240   0.9763052   2.0280522
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.6610693   0.4153107   1.0522546
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.5891617   0.9265619   2.7255976
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.0128484   0.5444873   1.8840880
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.8621234   1.0763659   3.2214915
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.2393771   0.9798845   1.5675884
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.3330582   1.0505467   1.6915421
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.5451443   1.2283647   1.9436172
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.8442545   1.3640809   2.4934552
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.4019013   1.0097309   1.9463871
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0714850   0.7282168   1.5765636
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         2.6038915   1.7365792   3.9043718
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         3.1610509   2.1315209   4.6878465
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.5745577   0.3064154   1.0773498
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         4.1491634   2.2655405   7.5988741
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         4.3554424   2.3761721   7.9833775
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         4.4085507   2.4305866   7.9961436
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.1674768   0.9205670   1.4806116
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.1589315   0.9019521   1.4891281
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.4281723   0.2759141   0.6644513


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0373029   -0.0636290   0.1382348
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0419278   -0.0333094   0.1171649
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0283903   -0.0711662   0.0143856
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0674666    0.0324445   0.1024888
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.2513369    0.2141436   0.2885303
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0527687    0.0165552   0.0889821
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0086306   -0.0835344   0.0662732
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0661185    0.0312714   0.1009656
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0661429    0.0426450   0.0896408
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0583527    0.0338032   0.0829021
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0568200   -0.0303642   0.1440042
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0972432    0.0067834   0.1877030
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.2075713    0.1452802   0.2698624
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1573567    0.1200941   0.1946193
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1512083    0.1206435   0.1817731
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0514379    0.0092028   0.0936730


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0784317   -0.1596717   0.2676478
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0561725   -0.0497944   0.1514430
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0520627   -0.1350159   0.0248278
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1795690    0.0893898   0.2608176
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.6480048    0.5627064   0.7166649
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0921196    0.0276473   0.1523171
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0225806   -0.2396821   0.1565006
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.4200861    0.1728908   0.5934030
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.7015152    0.4247990   0.8451095
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.4212506    0.2599463   0.5473965
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.2320720   -0.2123148   0.5135641
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1730470    0.0008499   0.3155670
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.4612695    0.3115094   0.5784539
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.6571954    0.5172203   0.7565868
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.8012749    0.6586906   0.8842936
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1654586    0.0221854   0.2877389
