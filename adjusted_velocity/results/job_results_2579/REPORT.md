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
0-3 months     ki1000108-IRC              INDIA        3 or less        53   377
0-3 months     ki1000108-IRC              INDIA        4-5             146   377
0-3 months     ki1000108-IRC              INDIA        6-7              99   377
0-3 months     ki1000108-IRC              INDIA        8+               79   377
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
3-6 months     ki1000108-IRC              INDIA        3 or less        57   397
3-6 months     ki1000108-IRC              INDIA        4-5             154   397
3-6 months     ki1000108-IRC              INDIA        6-7             103   397
3-6 months     ki1000108-IRC              INDIA        8+               83   397
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
6-12 months    ki1000108-IRC              INDIA        3 or less        57   400
6-12 months    ki1000108-IRC              INDIA        4-5             154   400
6-12 months    ki1000108-IRC              INDIA        6-7             104   400
6-12 months    ki1000108-IRC              INDIA        8+               85   400
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        26   332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             146   332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             106   332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               54   332
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less       119   430
6-12 months    ki1148112-LCNI-5           MALAWI       4-5             183   430
6-12 months    ki1148112-LCNI-5           MALAWI       6-7              95   430
6-12 months    ki1148112-LCNI-5           MALAWI       8+               33   430
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
12-24 months   ki1000108-IRC              INDIA        3 or less        57   396
12-24 months   ki1000108-IRC              INDIA        4-5             151   396
12-24 months   ki1000108-IRC              INDIA        6-7             103   396
12-24 months   ki1000108-IRC              INDIA        8+               85   396
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
![](/tmp/912fc5ad-f745-4f1f-9ccd-ee6acf93b68d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/912fc5ad-f745-4f1f-9ccd-ee6acf93b68d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                3.3230651   3.0871416   3.5589887
0-3 months     ki1000108-IRC              INDIA        4-5                  NA                3.1950831   3.0276486   3.3625177
0-3 months     ki1000108-IRC              INDIA        6-7                  NA                3.3950310   3.1768886   3.6131734
0-3 months     ki1000108-IRC              INDIA        8+                   NA                3.0729847   2.8828506   3.2631188
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                3.1708492   3.1034993   3.2381992
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                3.2227240   3.1614410   3.2840071
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                3.2152640   3.1385557   3.2919723
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                3.2930327   3.2146679   3.3713974
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                3.5258881   3.4899615   3.5618147
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                3.4507188   3.4117423   3.4896953
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                3.2754011   3.2360346   3.3147675
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                3.0626826   3.0320357   3.0933295
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                3.4466732   3.4112718   3.4820746
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                3.3038080   3.2668616   3.3407544
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                3.3826693   3.3452491   3.4200894
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                3.6700670   3.6375441   3.7025899
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                1.8888847   1.7601043   2.0176651
3-6 months     ki1000108-IRC              INDIA        4-5                  NA                1.8376740   1.7499865   1.9253616
3-6 months     ki1000108-IRC              INDIA        6-7                  NA                1.8499137   1.7600523   1.9397750
3-6 months     ki1000108-IRC              INDIA        8+                   NA                1.9535430   1.8439649   2.0631212
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                1.8139869   1.7579872   1.8699865
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                1.7526382   1.6904745   1.8148018
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                1.9019064   1.8312788   1.9725340
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                1.8699714   1.8015413   1.9384016
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                2.0422501   2.0082281   2.0762722
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                1.9566722   1.9232510   1.9900935
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                2.1446131   2.1115165   2.1777098
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                1.8666169   1.8452226   1.8880112
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                2.0816333   2.0510111   2.1122556
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                2.0287805   1.9913589   2.0662021
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                2.1069549   2.0631571   2.1507526
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.9016561   1.8704401   1.9328722
6-12 months    ki1000108-IRC              INDIA        3 or less            NA                1.2262604   1.1783633   1.2741574
6-12 months    ki1000108-IRC              INDIA        4-5                  NA                1.2675260   1.2247445   1.3103074
6-12 months    ki1000108-IRC              INDIA        6-7                  NA                1.2421896   1.1972453   1.2871339
6-12 months    ki1000108-IRC              INDIA        8+                   NA                1.1797880   1.1394037   1.2201723
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                2.0933181   1.8658694   2.3207668
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                1.0038425   0.9214658   1.0862192
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                1.0341077   0.9400591   1.1281562
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                1.0796347   0.9486394   1.2106300
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                1.2298060   1.2019270   1.2576851
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                1.1476589   1.1195942   1.1757237
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                1.1921131   1.1633987   1.2208275
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                1.1601280   1.1221360   1.1981199
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                1.1082994   1.0906411   1.1259576
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                1.1618649   1.1433951   1.1803348
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                1.0117805   0.9936695   1.0298915
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.9748387   0.9608238   0.9888536
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                1.2776001   1.2630008   1.2921993
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                1.1958243   1.1775874   1.2140612
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                1.0931034   1.0715633   1.1146434
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.0153953   0.9979987   1.0327920
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                1.3177938   1.2858469   1.3497406
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                1.2806178   1.2490720   1.3121636
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                1.3012561   1.2680360   1.3344761
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   NA                1.2807155   1.2592768   1.3021541
12-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.8822866   0.8407492   0.9238239
12-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.8171739   0.7887809   0.8455668
12-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.8597995   0.8254670   0.8941319
12-24 months   ki1000108-IRC              INDIA        8+                   NA                0.8375588   0.8003108   0.8748069
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.8152974   0.7939358   0.8366590
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.7562356   0.7386010   0.7738701
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.7880201   0.7680523   0.8079879
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.8017888   0.7784707   0.8251069
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.8290450   0.8178410   0.8402490
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.8305572   0.8181104   0.8430039
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.7975645   0.7868843   0.8082446
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.6812877   0.6694160   0.6931594
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                1.0453299   1.0331261   1.0575338
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.9089282   0.8962663   0.9215902
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.8960594   0.8848281   0.9072907
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.0358941   1.0243897   1.0473985
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.8853327   0.8639467   0.9067186
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.8710811   0.8492350   0.8929272
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                1.0040264   0.9798145   1.0282384
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                1.0858381   1.0651328   1.1065434


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
0-3 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.1279820   -0.4171091    0.1611451
0-3 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0719659   -0.2485242    0.3924560
0-3 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.2500804   -0.5536776    0.0535168
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0518748   -0.0338894    0.1376390
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0444148   -0.0520468    0.1408763
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.1221834    0.0231054    0.2212614
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0751693   -0.1226565   -0.0276822
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.2504871   -0.2993104   -0.2016637
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.4632055   -0.5053929   -0.4210181
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1428652   -0.1897916   -0.0959388
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0640040   -0.1131535   -0.0148544
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.2233938    0.1765447    0.2702429
3-6 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0512107   -0.2046680    0.1022467
3-6 months     ki1000108-IRC              INDIA        6-7                  3 or less         -0.0389710   -0.1950127    0.1170706
3-6 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0646583   -0.1015116    0.2308283
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0613487   -0.1448112    0.0221138
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0879195   -0.0020777    0.1779167
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0559846   -0.0323065    0.1442756
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0855779   -0.1291706   -0.0419852
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.1023630    0.0581010    0.1466249
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1756333   -0.2118838   -0.1393827
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0528528   -0.1008230   -0.0048827
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0253215   -0.0276829    0.0783260
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1799772   -0.2231509   -0.1368035
6-12 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        4-5                  3 or less          0.0412656   -0.0219602    0.1044914
6-12 months    ki1000108-IRC              INDIA        6-7                  3 or less          0.0159292   -0.0489287    0.0807871
6-12 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.0464724   -0.1068863    0.0139415
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -1.0894756   -1.3274582   -0.8514929
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -1.0592104   -1.3010186   -0.8174022
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -1.0136834   -1.2728906   -0.7544762
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0821471   -0.1216087   -0.0426855
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0376929   -0.0777928    0.0024069
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0696781   -0.1169007   -0.0224554
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0535656    0.0281485    0.0789826
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0965188   -0.1222558   -0.0707818
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1334607   -0.1567529   -0.1101684
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0817758   -0.1049479   -0.0586036
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1844967   -0.2103657   -0.1586276
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.2622047   -0.2850384   -0.2393710
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0371759   -0.0776232    0.0032713
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0165377   -0.0592337    0.0261583
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0370783   -0.0726482   -0.0015083
12-24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0651127   -0.1152604   -0.0149651
12-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0224871   -0.0763425    0.0313683
12-24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0447278   -0.1006074    0.0111518
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0590618   -0.0860012   -0.0321225
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0272773   -0.0558980    0.0013434
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0135086   -0.0444908    0.0174737
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0015122   -0.0145159    0.0175403
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0314805   -0.0469672   -0.0159938
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1477572   -0.1641565   -0.1313580
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1364017   -0.1540677   -0.1187357
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1492705   -0.1662416   -0.1322995
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0094359   -0.0279174    0.0090457
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0142516   -0.0451679    0.0166647
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.1186937    0.0859781    0.1514094
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.2005054    0.1706767    0.2303342
