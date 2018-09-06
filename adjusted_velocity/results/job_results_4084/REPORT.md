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

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* trth2o
* cleanck
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
* delta_trth2o
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
![](/tmp/d43f4e92-b6d5-4d34-8626-f7bd0924e97f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d43f4e92-b6d5-4d34-8626-f7bd0924e97f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                3.3082425   3.0895090   3.5269761
0-3 months     ki1000108-IRC              INDIA        4-5                  NA                3.1895161   3.0253807   3.3536514
0-3 months     ki1000108-IRC              INDIA        6-7                  NA                3.3832572   3.1751821   3.5913323
0-3 months     ki1000108-IRC              INDIA        8+                   NA                3.0896488   2.9082409   3.2710566
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                3.1060826   3.0350405   3.1771247
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                3.2011969   3.1368161   3.2655777
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                3.1646527   3.0802939   3.2490115
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                3.2825239   3.1962741   3.3687736
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                3.4433190   3.4036782   3.4829597
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                3.3949252   3.3532197   3.4366306
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                3.1375484   3.0924990   3.1825978
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                2.7760828   2.7363670   2.8157985
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                3.4425957   3.4066654   3.4785260
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                3.3039961   3.2667913   3.3412009
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                3.3825798   3.3448492   3.4203105
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                3.6570944   3.6245460   3.6896428
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                1.8862021   1.7531226   2.0192815
3-6 months     ki1000108-IRC              INDIA        4-5                  NA                1.8432707   1.7536355   1.9329059
3-6 months     ki1000108-IRC              INDIA        6-7                  NA                1.8531278   1.7612761   1.9449795
3-6 months     ki1000108-IRC              INDIA        8+                   NA                1.9661670   1.8554219   2.0769122
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                1.7929081   1.7454713   1.8403450
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                1.7507204   1.6947341   1.8067067
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                1.8728809   1.8135921   1.9321696
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                1.8649824   1.8077435   1.9222213
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                2.0770301   2.0413939   2.1126663
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                1.9588083   1.9242916   1.9933250
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                2.1931880   2.1575993   2.2287768
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                1.8476688   1.8252807   1.8700569
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                2.1392974   2.1105211   2.1680737
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                2.0373901   2.0019122   2.0728680
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                2.0904193   2.0512342   2.1296044
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.9023651   1.8748129   1.9299172
6-12 months    ki1000108-IRC              INDIA        3 or less            NA                1.2225843   1.1766311   1.2685375
6-12 months    ki1000108-IRC              INDIA        4-5                  NA                1.2667640   1.2243044   1.3092235
6-12 months    ki1000108-IRC              INDIA        6-7                  NA                1.2427258   1.1988332   1.2866183
6-12 months    ki1000108-IRC              INDIA        8+                   NA                1.1775916   1.1376779   1.2175052
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                1.9008566   1.6754951   2.1262180
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.9990311   0.9172800   1.0807823
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                1.0340856   0.9392420   1.1289292
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                1.1128938   0.9571920   1.2685957
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                1.2285549   1.2003551   1.2567547
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                1.1479381   1.1197120   1.1761643
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                1.1916537   1.1626635   1.2206438
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                1.1602857   1.1219074   1.1986639
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                1.1070770   1.0895393   1.1246148
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                1.1616828   1.1432807   1.1800850
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                1.0088504   0.9907969   1.0269039
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.9703670   0.9563159   0.9844182
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                1.2701299   1.2551698   1.2850900
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                1.1981941   1.1798179   1.2165702
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                1.1009523   1.0793286   1.1225760
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.0313609   1.0143159   1.0484058
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                1.2904674   1.2473146   1.3336202
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                1.2758623   1.2386377   1.3130868
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                1.2787118   1.2291886   1.3282349
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   NA                1.2682778   1.2129048   1.3236508
12-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.8741692   0.8358601   0.9124783
12-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.8168675   0.7898554   0.8438797
12-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.8524541   0.8216620   0.8832462
12-24 months   ki1000108-IRC              INDIA        8+                   NA                0.8270281   0.7944034   0.8596527
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.8080042   0.7895580   0.8264504
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.7532201   0.7370963   0.7693439
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.7827206   0.7653153   0.8001259
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.7955247   0.7751319   0.8159176
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.8087164   0.7966955   0.8207373
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.8174370   0.8043446   0.8305294
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.7736852   0.7621145   0.7852559
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.6466617   0.6335711   0.6597522
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.9861433   0.9753531   0.9969334
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.8963369   0.8838801   0.9087937
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.8678290   0.8570624   0.8785955
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.9861435   0.9759399   0.9963472
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.8173164   0.7923813   0.8422516
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.8343974   0.8102795   0.8585152
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.8945131   0.8634117   0.9256146
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.8272345   0.7902048   0.8642642


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
0-3 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.1187265   -0.3911626    0.1537096
0-3 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0750147   -0.2252908    0.3753201
0-3 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.2185938   -0.5026803    0.0654927
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0951143   -0.0003979    0.1906264
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0585701   -0.0516248    0.1687650
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.1764412    0.0650478    0.2878347
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0483938   -0.1056758    0.0088882
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.3057706   -0.3665841   -0.2449571
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.6672362   -0.7249390   -0.6095334
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1385996   -0.1860796   -0.0911196
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0600159   -0.1097187   -0.0103131
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.2144987    0.1674362    0.2615612
3-6 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0429314   -0.2019672    0.1161045
3-6 months     ki1000108-IRC              INDIA        6-7                  3 or less         -0.0330743   -0.1934219    0.1272733
3-6 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0799650   -0.0905876    0.2505176
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0421877   -0.1101526    0.0257772
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0799727    0.0094756    0.1504699
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0720743    0.0024674    0.1416811
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.1182218   -0.1675607   -0.0688829
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.1161579    0.0653802    0.1669357
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2293613   -0.2708589   -0.1878637
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1019073   -0.1430175   -0.0607971
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0488781   -0.0927982   -0.0049580
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.2369323   -0.2729495   -0.2009152
6-12 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        4-5                  3 or less          0.0441797   -0.0172299    0.1055892
6-12 months    ki1000108-IRC              INDIA        6-7                  3 or less          0.0201414   -0.0424839    0.0827668
6-12 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.0449927   -0.1039357    0.0139502
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.9018254   -1.1377004   -0.6659505
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.8667710   -1.1064020   -0.6271400
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.7879628   -1.0605700   -0.5153555
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0806168   -0.1204259   -0.0408076
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0369012   -0.0774195    0.0036171
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0682692   -0.1159898   -0.0205486
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0546058    0.0293254    0.0798862
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0982266   -0.1238609   -0.0725924
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1367100   -0.1599772   -0.1134428
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0719358   -0.0954405   -0.0484311
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1691776   -0.1953473   -0.1430079
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.2387690   -0.2616333   -0.2159047
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0146052   -0.0677925    0.0385822
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0117557   -0.0747609    0.0512496
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0221896   -0.0902890    0.0459098
12-24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0573017   -0.1036469   -0.0109565
12-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0217151   -0.0705702    0.0271401
12-24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0471411   -0.0969153    0.0026330
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0547841   -0.0769767   -0.0325915
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0252836   -0.0484580   -0.0021092
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0124795   -0.0379624    0.0130034
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0087206   -0.0087620    0.0262032
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0350312   -0.0523520   -0.0177103
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1620547   -0.1808277   -0.1432818
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0898064   -0.1063207   -0.0732921
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1183143   -0.1335323   -0.1030964
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0000003   -0.0157351    0.0157357
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0170809   -0.0175946    0.0517564
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0771967    0.0373607    0.1170327
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0099180   -0.0347414    0.0545774
