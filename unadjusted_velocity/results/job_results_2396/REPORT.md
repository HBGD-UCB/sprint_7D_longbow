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

**Outcome Variable:** y_rate_haz

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
![](/tmp/97f81998-6738-4cec-b201-14a3ab4970d1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/97f81998-6738-4cec-b201-14a3ab4970d1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                -0.2546692   -0.4020239   -0.1073144
0-3 months     ki1000108-IRC              INDIA        4-5                  NA                -0.2594418   -0.3455000   -0.1733835
0-3 months     ki1000108-IRC              INDIA        6-7                  NA                -0.1872275   -0.3092502   -0.0652048
0-3 months     ki1000108-IRC              INDIA        8+                   NA                -0.3534005   -0.4634050   -0.2433960
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1182345   -0.1833800   -0.0530891
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.1343925   -0.1736014   -0.0951836
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.1276316   -0.1865972   -0.0686661
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0692667   -0.1364275   -0.0021060
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0245411   -0.0660283    0.0169461
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0393529   -0.0661390   -0.0125668
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0546672   -0.0941664   -0.0151680
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0510935   -0.0995256   -0.0026615
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1171054   -0.1712058   -0.0630051
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.1207461   -0.1462781   -0.0952141
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.1355042   -0.1730816   -0.0979269
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.1112240   -0.1562130   -0.0662350
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                -0.0675296   -0.1496225    0.0145633
3-6 months     ki1000108-IRC              INDIA        4-5                  NA                -0.0567931   -0.1046158   -0.0089703
3-6 months     ki1000108-IRC              INDIA        6-7                  NA                -0.0727749   -0.1250467   -0.0205031
3-6 months     ki1000108-IRC              INDIA        8+                   NA                -0.0061435   -0.0791299    0.0668429
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0451535   -0.0901732   -0.0001338
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0750228   -0.1099796   -0.0400660
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0191869   -0.0678666    0.0294929
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0406444   -0.0908712    0.0095824
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0241209   -0.0657276    0.0174859
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0349136   -0.0578027   -0.0120244
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0039961   -0.0415279    0.0335357
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0417289   -0.0841267    0.0006688
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0314652   -0.0065418    0.0694722
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                 0.0235468   -0.0003394    0.0474329
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                 0.0465722    0.0063682    0.0867762
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0034601   -0.0367595    0.0436798
6-12 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0258994   -0.0560316    0.0042327
6-12 months    ki1000108-IRC              INDIA        4-5                  NA                -0.0162847   -0.0373870    0.0048175
6-12 months    ki1000108-IRC              INDIA        6-7                  NA                -0.0245324   -0.0494405    0.0003758
6-12 months    ki1000108-IRC              INDIA        8+                   NA                -0.0455360   -0.0748551   -0.0162169
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0398181   -0.1450804    0.2247165
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -0.1243685   -0.1642881   -0.0844489
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -0.1314211   -0.1755986   -0.0872436
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -0.0890105   -0.1804176    0.0023965
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0453335   -0.0660294   -0.0246377
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0551169   -0.0696603   -0.0405735
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0524693   -0.0703590   -0.0345795
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0572697   -0.0825715   -0.0319680
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0578762   -0.0742296   -0.0415227
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0596235   -0.0695566   -0.0496903
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0740626   -0.0899685   -0.0581566
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0616484   -0.0796319   -0.0436648
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0086875   -0.0288864    0.0115115
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0302026   -0.0408920   -0.0195132
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0458978   -0.0610658   -0.0307297
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.0337613   -0.0503884   -0.0171342
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0041425   -0.0251160    0.0168310
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0070317   -0.0244777    0.0104142
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0072473   -0.0308494    0.0163549
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0137292   -0.0413779    0.0139194
12-24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0252096   -0.0427700   -0.0076491
12-24 months   ki1000108-IRC              INDIA        4-5                  NA                -0.0374590   -0.0484565   -0.0264615
12-24 months   ki1000108-IRC              INDIA        6-7                  NA                -0.0243372   -0.0374225   -0.0112519
12-24 months   ki1000108-IRC              INDIA        8+                   NA                -0.0350636   -0.0525214   -0.0176058
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0407408   -0.0534699   -0.0280116
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0391987   -0.0463151   -0.0320822
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0414198   -0.0501069   -0.0327327
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0419221   -0.0530925   -0.0307517
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0030412   -0.0115121    0.0054297
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0112664   -0.0169828   -0.0055499
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0058231   -0.0135207    0.0018745
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0082914   -0.0197086    0.0031257
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0073331   -0.0185279    0.0038618
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0054193   -0.0114415    0.0006029
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0090179   -0.0165877   -0.0014480
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0000279   -0.0098789    0.0099346
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0236605   -0.0341427   -0.0131783
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0175457   -0.0262358   -0.0088555
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0032746   -0.0162484    0.0096991
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0139286   -0.0361693    0.0083122


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
0-3 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0047726   -0.1754169    0.1658716
0-3 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0674416   -0.1238774    0.2587607
0-3 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.0987313   -0.2826183    0.0851557
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0161580   -0.0921927    0.0598767
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0093971   -0.0972656    0.0784713
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0489678   -0.0445977    0.1425333
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0148118   -0.0641948    0.0345712
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0301261   -0.0874094    0.0271572
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0265525   -0.0903243    0.0372194
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0036407   -0.0634632    0.0561818
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0183988   -0.0842692    0.0474716
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0058814   -0.0644809    0.0762438
3-6 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        4-5                  3 or less          0.0107365   -0.0842701    0.1057431
3-6 months     ki1000108-IRC              INDIA        6-7                  3 or less         -0.0052453   -0.1025674    0.0920767
3-6 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0613861   -0.0484604    0.1712326
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0298693   -0.0868671    0.0271285
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0259667   -0.0403393    0.0922727
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0045091   -0.0629409    0.0719591
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0107927   -0.0582799    0.0366945
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0201248   -0.0359088    0.0761583
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0176081   -0.0770109    0.0417947
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0079184   -0.0528080    0.0369712
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0151070   -0.0402183    0.0704324
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0280050   -0.0833418    0.0273317
6-12 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        4-5                  3 or less          0.0096147   -0.0271719    0.0464013
6-12 months    ki1000108-IRC              INDIA        6-7                  3 or less          0.0013671   -0.0377272    0.0404614
6-12 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.0196365   -0.0616789    0.0224058
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.1641866   -0.3533453    0.0249721
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.1712392   -0.3613420    0.0188637
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.1288286   -0.3350874    0.0774302
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0097834   -0.0350782    0.0155115
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0071358   -0.0344919    0.0202204
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0119362   -0.0446240    0.0207517
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0017473   -0.0208811    0.0173865
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0161864   -0.0389995    0.0066267
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0037722   -0.0280794    0.0205350
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0215151   -0.0443681    0.0013380
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0372103   -0.0624703   -0.0119503
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0250738   -0.0512360    0.0010883
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0028892   -0.0301702    0.0243917
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0031048   -0.0346793    0.0284697
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0095868   -0.0442903    0.0251168
12-24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0122495   -0.0329694    0.0084704
12-24 months   ki1000108-IRC              INDIA        6-7                  3 or less          0.0008724   -0.0210273    0.0227720
12-24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0098541   -0.0346158    0.0149077
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0015421   -0.0130413    0.0161255
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0006790   -0.0160900    0.0147319
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0011814   -0.0181168    0.0157541
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0082252   -0.0184444    0.0019941
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0027819   -0.0142278    0.0086640
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0052502   -0.0194667    0.0089662
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0019138   -0.0107981    0.0146257
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0016848   -0.0151988    0.0118292
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0073609   -0.0075879    0.0223098
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0061148   -0.0075012    0.0197308
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0203859    0.0037067    0.0370650
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0097319   -0.0148553    0.0343191
