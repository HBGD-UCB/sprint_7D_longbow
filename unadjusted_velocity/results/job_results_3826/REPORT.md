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

**Outcome Variable:** y_rate_len

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

agecat         studyid                    country      nhh          n_cell     n
-------------  -------------------------  -----------  ----------  -------  ----
0-3 months     ki1000108-IRC              INDIA        3 or less        53   377
0-3 months     ki1000108-IRC              INDIA        4-5             146   377
0-3 months     ki1000108-IRC              INDIA        6-7              99   377
0-3 months     ki1000108-IRC              INDIA        8+               79   377
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less       101   566
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5             239   566
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7             132   566
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+               94   566
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       123   634
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5             291   634
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7             135   634
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+               85   634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less       107   720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             324   720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             169   720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              120   720
3-6 months     ki1000108-IRC              INDIA        3 or less        57   397
3-6 months     ki1000108-IRC              INDIA        4-5             154   397
3-6 months     ki1000108-IRC              INDIA        6-7             103   397
3-6 months     ki1000108-IRC              INDIA        8+               83   397
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less        89   523
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5             223   523
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7             126   523
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+               85   523
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       102   574
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5             270   574
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7             124   574
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+               78   574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less       101   695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             316   695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             163   695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              115   695
6-12 months    ki1000108-IRC              INDIA        3 or less        57   400
6-12 months    ki1000108-IRC              INDIA        4-5             154   400
6-12 months    ki1000108-IRC              INDIA        6-7             104   400
6-12 months    ki1000108-IRC              INDIA        8+               85   400
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        26   332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             146   332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             106   332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               54   332
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        87   482
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5             202   482
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7             112   482
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+               81   482
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less        97   545
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5             258   545
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7             114   545
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+               76   545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less        95   676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             307   676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             164   676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              110   676
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less       119   430
6-12 months    ki1148112-LCNI-5           MALAWI       4-5             183   430
6-12 months    ki1148112-LCNI-5           MALAWI       6-7              95   430
6-12 months    ki1148112-LCNI-5           MALAWI       8+               33   430
12-24 months   ki1000108-IRC              INDIA        3 or less        57   396
12-24 months   ki1000108-IRC              INDIA        4-5             151   396
12-24 months   ki1000108-IRC              INDIA        6-7             103   396
12-24 months   ki1000108-IRC              INDIA        8+               85   396
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        74   421
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             181   421
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7              97   421
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+               69   421
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        86   458
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             213   458
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7              96   458
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+               63   458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        68   495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             224   495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             125   495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               78   495
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less        89   307
12-24 months   ki1148112-LCNI-5           MALAWI       4-5             130   307
12-24 months   ki1148112-LCNI-5           MALAWI       6-7              64   307
12-24 months   ki1148112-LCNI-5           MALAWI       8+               24   307


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7691817c-f97d-4779-9934-714e9cfeef57/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7691817c-f97d-4779-9934-714e9cfeef57/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                3.2102578   2.9204285   3.5000872
0-3 months     ki1000108-IRC              INDIA        4-5                  NA                3.1617845   2.9879202   3.3356487
0-3 months     ki1000108-IRC              INDIA        6-7                  NA                3.3280043   3.0853992   3.5706094
0-3 months     ki1000108-IRC              INDIA        8+                   NA                2.9741059   2.7537214   3.1944903
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                3.3286040   3.2030448   3.4541633
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                3.2663625   3.1864322   3.3462928
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                3.3168469   3.1946488   3.4390450
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                3.4089613   3.2700546   3.5478681
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                3.5351810   3.4449892   3.6253727
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                3.4759663   3.4188332   3.5330993
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                3.4601248   3.3738610   3.5463887
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                3.4654455   3.3600111   3.5708798
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                3.2957774   3.1781573   3.4133976
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                3.2947828   3.2401833   3.3493823
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                3.2896118   3.2131459   3.3660778
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                3.3496751   3.2596599   3.4396904
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                1.8557049   1.6789502   2.0324597
3-6 months     ki1000108-IRC              INDIA        4-5                  NA                1.8635369   1.7631241   1.9639496
3-6 months     ki1000108-IRC              INDIA        6-7                  NA                1.8428990   1.7307262   1.9550718
3-6 months     ki1000108-IRC              INDIA        8+                   NA                1.9764948   1.8224050   2.1305845
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                1.8554196   1.7566027   1.9542365
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                1.7716974   1.6957499   1.8476449
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                1.9068145   1.8026687   2.0109602
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                1.8590372   1.7486418   1.9694326
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                1.9798651   1.8923861   2.0673442
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                1.9451542   1.8961634   1.9941450
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                2.0149879   1.9333410   2.0966349
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                1.9380676   1.8509907   2.0251445
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                2.0117773   1.9289417   2.0946129
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                1.9957662   1.9441400   2.0473923
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                2.0531598   1.9670619   2.1392576
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.9609778   1.8718051   2.0501504
6-12 months    ki1000108-IRC              INDIA        3 or less            NA                1.2564116   1.1898738   1.3229493
6-12 months    ki1000108-IRC              INDIA        4-5                  NA                1.2685930   1.2203570   1.3168289
6-12 months    ki1000108-IRC              INDIA        6-7                  NA                1.2504614   1.1937002   1.3072227
6-12 months    ki1000108-IRC              INDIA        8+                   NA                1.2047053   1.1387129   1.2706976
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                1.3927692   0.9370461   1.8484923
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.9727768   0.8747968   1.0707568
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.9561816   0.8453884   1.0669748
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                1.0510829   0.8337520   1.2684138
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                1.1923886   1.1439554   1.2408219
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                1.1550180   1.1199219   1.1901140
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                1.1759304   1.1319088   1.2199520
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                1.1628239   1.1019552   1.2236926
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                1.1854128   1.1442106   1.2266150
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                1.1790976   1.1539215   1.2042738
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                1.1462848   1.1077285   1.1848410
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                1.1777939   1.1339714   1.2216164
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                1.2789425   1.2315946   1.3262903
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                1.2313223   1.2054763   1.2571683
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                1.1959919   1.1597098   1.2322740
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.2232599   1.1837619   1.2627578
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                1.2873616   1.2381839   1.3365392
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                1.2769208   1.2349917   1.3188499
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                1.2790361   1.2226374   1.3354349
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   NA                1.2613296   1.1942040   1.3284551
12-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.8581047   0.8078120   0.9083974
12-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.8113270   0.7813139   0.8413401
12-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.8492886   0.8121194   0.8864578
12-24 months   ki1000108-IRC              INDIA        8+                   NA                0.8185569   0.7719785   0.8651353
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.7570888   0.7189076   0.7952699
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.7449236   0.7232856   0.7665616
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.7516710   0.7220430   0.7812990
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.7613044   0.7253815   0.7972273
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.8748756   0.8463082   0.9034431
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.8503435   0.8327075   0.8679795
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.8591735   0.8363051   0.8820419
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.8558038   0.8200913   0.8915164
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.8793822   0.8458535   0.9129109
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.8780869   0.8601269   0.8960468
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.8623226   0.8405728   0.8840723
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.8862671   0.8572033   0.9153308
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.8212940   0.7917012   0.8508867
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.8335145   0.8069236   0.8601055
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.8826921   0.8451155   0.9202687
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.8406417   0.7866410   0.8946424


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA        NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                3.3028656   3.2646714   3.3410598
3-6 months     ki1000108-IRC              INDIA        NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                2.0057973   1.9693775   2.0422170
6-12 months    ki1000108-IRC              INDIA        NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1148112-LCNI-5           MALAWI       NA                   NA                1.2790810   1.2528925   1.3052695
12-24 months   ki1000108-IRC              INDIA        NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.8407809   0.8238743   0.8576875


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0484734   -0.3864524    0.2895056
0-3 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.1177464   -0.2602196    0.4957124
0-3 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.2361520   -0.6002541    0.1279501
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0622415   -0.2110837    0.0866006
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0117571   -0.1869641    0.1634499
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0803573   -0.1068864    0.2676011
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0592147   -0.1659796    0.0475502
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0750561   -0.1998600    0.0497478
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0697355   -0.2084833    0.0690123
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0009946   -0.1306696    0.1286804
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0061656   -0.1464565    0.1341253
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0538977   -0.0942146    0.2020100
3-6 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        4-5                  3 or less          0.0078319   -0.1954535    0.2111174
3-6 months     ki1000108-IRC              INDIA        6-7                  3 or less         -0.0128059   -0.2221501    0.1965382
3-6 months     ki1000108-IRC              INDIA        8+                   3 or less          0.1207898   -0.1137008    0.3552805
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0837222   -0.2083529    0.0409084
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0513949   -0.0921709    0.1949606
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0036176   -0.1445442    0.1517794
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0347109   -0.1349740    0.0655521
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0351228   -0.0845384    0.1547840
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0417975   -0.1652275    0.0816325
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0160111   -0.1136174    0.0815952
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0413825   -0.0780938    0.1608588
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0507995   -0.1725103    0.0709112
6-12 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        4-5                  3 or less          0.0121814   -0.0700012    0.0943640
6-12 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0059502   -0.0934093    0.0815090
6-12 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.0517063   -0.1454200    0.0420074
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4199924   -0.8861293    0.0461445
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.4365876   -0.9055852    0.0324099
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.3416863   -0.8465787    0.1632060
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0373707   -0.0971830    0.0224417
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0164583   -0.0819081    0.0489916
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0295647   -0.1073515    0.0482221
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0063152   -0.0546003    0.0419700
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0391280   -0.0955568    0.0173007
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0076189   -0.0677689    0.0525312
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0476202   -0.1015631    0.0063227
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0829506   -0.1426013   -0.0232999
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0556826   -0.1173423    0.0059770
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0104408   -0.0750666    0.0541850
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0083254   -0.0831536    0.0665028
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0260320   -0.1092443    0.0571802
12-24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0467777   -0.1053451    0.0117897
12-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0088161   -0.0713533    0.0537211
12-24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0395477   -0.1080963    0.0290008
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0121652   -0.0560514    0.0317211
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0054178   -0.0537460    0.0429105
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0042156   -0.0482082    0.0566394
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0245321   -0.0581048    0.0090406
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0157022   -0.0522954    0.0208910
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0190718   -0.0648046    0.0266610
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0012953   -0.0393313    0.0367406
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0170597   -0.0570250    0.0229057
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0068849   -0.0374872    0.0512569
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0122205   -0.0275640    0.0520051
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0613981    0.0135679    0.1092283
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0193477   -0.0422300    0.0809254
