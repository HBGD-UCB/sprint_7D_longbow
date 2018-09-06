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

**Outcome Variable:** y_rate_haz

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
![](/tmp/5d59bb87-7d69-4492-929c-8b6e1928d0b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5d59bb87-7d69-4492-929c-8b6e1928d0b5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                -0.1962914   -0.3113576   -0.0812252
0-3 months     ki1000108-IRC              INDIA        4-5                  NA                -0.2398969   -0.3221276   -0.1576661
0-3 months     ki1000108-IRC              INDIA        6-7                  NA                -0.1505699   -0.2585751   -0.0425646
0-3 months     ki1000108-IRC              INDIA        8+                   NA                -0.2956969   -0.3894685   -0.2019253
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.2032207   -0.2358242   -0.1706173
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.1555032   -0.1850836   -0.1259229
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.1660302   -0.2008523   -0.1312081
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.1111851   -0.1493719   -0.0729984
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0252022   -0.0417861   -0.0086183
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0495198   -0.0681562   -0.0308835
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.1248957   -0.1422744   -0.1075169
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.2109998   -0.2249725   -0.1970271
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0551294   -0.0711765   -0.0390824
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.1145833   -0.1319792   -0.0971873
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.1063908   -0.1244317   -0.0883499
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0085076   -0.0071245    0.0241396
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                -0.0628905   -0.1302294    0.0044483
3-6 months     ki1000108-IRC              INDIA        4-5                  NA                -0.0630112   -0.1078555   -0.0181668
3-6 months     ki1000108-IRC              INDIA        6-7                  NA                -0.0737441   -0.1183768   -0.0291115
3-6 months     ki1000108-IRC              INDIA        8+                   NA                -0.0139754   -0.0718158    0.0438651
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0752922   -0.1010783   -0.0495061
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0859654   -0.1144698   -0.0574611
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0312707   -0.0645816    0.0020403
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0447227   -0.0763226   -0.0131228
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0351517   -0.0513572   -0.0189462
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0408596   -0.0561261   -0.0255932
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                 0.0272374    0.0126006    0.0418742
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.1161295   -0.1263973   -0.1058618
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1580292    0.1440346    0.1720239
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                 0.0530567    0.0365151    0.0695984
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                 0.0942986    0.0756019    0.1129952
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0454034    0.0328337    0.0579732
6-12 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0399097   -0.0610500   -0.0187695
6-12 months    ki1000108-IRC              INDIA        4-5                  NA                -0.0182794   -0.0366747    0.0001160
6-12 months    ki1000108-IRC              INDIA        6-7                  NA                -0.0280333   -0.0475939   -0.0084728
6-12 months    ki1000108-IRC              INDIA        8+                   NA                -0.0550378   -0.0738275   -0.0362481
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1892224    0.0991418    0.2793029
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -0.1084946   -0.1412332   -0.0757561
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -0.0967379   -0.1329703   -0.0605055
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -0.0660919   -0.1310136   -0.0011703
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0214768   -0.0337424   -0.0092112
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0543340   -0.0660341   -0.0426340
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0424823   -0.0540395   -0.0309250
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0499758   -0.0660880   -0.0338637
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0725566   -0.0795561   -0.0655572
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0629757   -0.0702813   -0.0556701
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.1171914   -0.1247487   -0.1096341
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.1223973   -0.1278472   -0.1169475
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0075839   -0.0133500   -0.0018177
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0414505   -0.0485471   -0.0343539
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0734198   -0.0817177   -0.0651218
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.1001916   -0.1063192   -0.0940641
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0039147   -0.0250060    0.0171765
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0072170   -0.0245447    0.0101108
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0031501   -0.0262190    0.0199187
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0114847   -0.0382453    0.0152759
12-24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0191871   -0.0327892   -0.0055850
12-24 months   ki1000108-IRC              INDIA        4-5                  NA                -0.0344919   -0.0445072   -0.0244765
12-24 months   ki1000108-IRC              INDIA        6-7                  NA                -0.0251620   -0.0362255   -0.0140986
12-24 months   ki1000108-IRC              INDIA        8+                   NA                -0.0332046   -0.0448763   -0.0215329
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0263360   -0.0327506   -0.0199214
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0355545   -0.0411448   -0.0299642
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0328813   -0.0384652   -0.0272974
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0324759   -0.0392383   -0.0257135
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0153701   -0.0186901   -0.0120500
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0168048   -0.0209436   -0.0126661
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0211107   -0.0244299   -0.0177915
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0561911   -0.0595172   -0.0528651
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0356245    0.0319925    0.0392566
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                 0.0039953   -0.0002354    0.0082259
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                 0.0023424   -0.0016254    0.0063101
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0523398    0.0483500    0.0563297
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0236626   -0.0341445   -0.0131807
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0175459   -0.0262359   -0.0088558
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0032726   -0.0162459    0.0097008
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0139250   -0.0361657    0.0083158


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.1220821   -0.1402761   -0.1038881
3-6 months     ki1000108-IRC              INDIA        NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0267740    0.0099602    0.0435879
6-12 months    ki1000108-IRC              INDIA        NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1148112-LCNI-5           MALAWI       NA                   NA                -0.0067938   -0.0177737    0.0041862
12-24 months   ki1000108-IRC              INDIA        NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -0.0160605   -0.0218715   -0.0102495


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0436054   -0.1849581    0.0977473
0-3 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0457215   -0.1115713    0.2030144
0-3 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.0994055   -0.2482071    0.0493962
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0477175    0.0066747    0.0887603
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0371905   -0.0075334    0.0819144
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0920356    0.0435443    0.1405268
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0243177   -0.0468099   -0.0018254
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0996935   -0.1215556   -0.0778314
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1857976   -0.2052499   -0.1663453
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0594538   -0.0813161   -0.0375915
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0512613   -0.0740677   -0.0284550
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0636370    0.0423167    0.0849573
3-6 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0001206   -0.0807897    0.0805485
3-6 months     ki1000108-IRC              INDIA        6-7                  3 or less         -0.0108536   -0.0915949    0.0698877
3-6 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0489152   -0.0397501    0.1375805
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0106732   -0.0490155    0.0276690
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0440215    0.0019497    0.0860933
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0305695   -0.0101743    0.0713132
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0057079   -0.0258360    0.0144202
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0623891    0.0424246    0.0823536
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0809778   -0.0983891   -0.0635665
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1049725   -0.1244649   -0.0854801
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0637307   -0.0851089   -0.0423524
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1126258   -0.1303304   -0.0949211
6-12 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        4-5                  3 or less          0.0216304   -0.0058985    0.0491592
6-12 months    ki1000108-IRC              INDIA        6-7                  3 or less          0.0118764   -0.0165789    0.0403317
6-12 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.0151281   -0.0429086    0.0126524
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.2977170   -0.3910328   -0.2044013
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.2859603   -0.3800007   -0.1919198
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.2553143   -0.3646194   -0.1460092
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0328572   -0.0497595   -0.0159549
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0210054   -0.0379102   -0.0041007
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0284990   -0.0488060   -0.0081921
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0095809   -0.0005145    0.0196764
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0446348   -0.0550147   -0.0342549
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0498407   -0.0588153   -0.0408661
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0338666   -0.0420735   -0.0256597
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0658359   -0.0752306   -0.0564412
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0926078   -0.1003912   -0.0848244
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0033022   -0.0305496    0.0239452
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0007646   -0.0304552    0.0319845
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0075700   -0.0416606    0.0265207
12-24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0153048   -0.0319324    0.0013229
12-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0059750   -0.0234516    0.0115016
12-24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0140175   -0.0317721    0.0037370
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0092186   -0.0173944   -0.0010427
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0065453   -0.0148069    0.0017162
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0061400   -0.0151676    0.0028877
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0014348   -0.0065277    0.0036582
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0057406   -0.0103607   -0.0011206
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0408211   -0.0454496   -0.0361925
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0316293   -0.0372336   -0.0260249
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0332822   -0.0387852   -0.0277792
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0167153    0.0108563    0.0225743
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0061167   -0.0074988    0.0197323
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0203901    0.0037115    0.0370686
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0097376   -0.0148493    0.0343246
