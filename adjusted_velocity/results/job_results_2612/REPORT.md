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
![](/tmp/0e42ddcd-cb19-4f4c-ab07-f125d80620a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0e42ddcd-cb19-4f4c-ab07-f125d80620a0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                -0.2083745   -0.3190550   -0.0976941
0-3 months     ki1000108-IRC              INDIA        4-5                  NA                -0.2463654   -0.3271874   -0.1655434
0-3 months     ki1000108-IRC              INDIA        6-7                  NA                -0.1594416   -0.2636193   -0.0552639
0-3 months     ki1000108-IRC              INDIA        8+                   NA                -0.2895780   -0.3787819   -0.2003741
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.2007952   -0.2340492   -0.1675411
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.1548499   -0.1846749   -0.1250249
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.1644352   -0.1996935   -0.1291769
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.1110619   -0.1497893   -0.0723345
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0669086   -0.0846298   -0.0491875
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0682859   -0.0879520   -0.0486199
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.1962219   -0.2158411   -0.1766027
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.3588786   -0.3774321   -0.3403251
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0518260   -0.0674540   -0.0361980
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.1142617   -0.1314444   -0.0970791
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.1071272   -0.1248470   -0.0894074
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0167753    0.0013363    0.0322143
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                -0.0598112   -0.1224003    0.0027780
3-6 months     ki1000108-IRC              INDIA        4-5                  NA                -0.0686072   -0.1111203   -0.0260941
3-6 months     ki1000108-IRC              INDIA        6-7                  NA                -0.0682720   -0.1110085   -0.0255355
3-6 months     ki1000108-IRC              INDIA        8+                   NA                -0.0165544   -0.0701642    0.0370555
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0752245   -0.0975387   -0.0529103
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0829969   -0.1087894   -0.0572043
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0376085   -0.0656967   -0.0095203
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0434889   -0.0703920   -0.0165857
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0350542   -0.0531365   -0.0169718
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0396726   -0.0559784   -0.0233668
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                 0.0342502    0.0177890    0.0507113
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.1320245   -0.1436741   -0.1203750
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1569858    0.1429979    0.1709737
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                 0.0528947    0.0363421    0.0694473
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                 0.0938549    0.0751350    0.1125747
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0446461    0.0320597    0.0572326
6-12 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0398197   -0.0632239   -0.0164156
6-12 months    ki1000108-IRC              INDIA        4-5                  NA                -0.0180544   -0.0380581    0.0019494
6-12 months    ki1000108-IRC              INDIA        6-7                  NA                -0.0302135   -0.0515673   -0.0088596
6-12 months    ki1000108-IRC              INDIA        8+                   NA                -0.0606487   -0.0816623   -0.0396350
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.4864068    0.3762122    0.5966015
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -0.1046045   -0.1408254   -0.0683836
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -0.0918808   -0.1318529   -0.0519086
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -0.0388175   -0.1000221    0.0223872
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0252153   -0.0371128   -0.0133179
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0542430   -0.0656306   -0.0428554
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0440359   -0.0551020   -0.0329699
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0501315   -0.0656078   -0.0346552
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0726218   -0.0794395   -0.0658040
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0628799   -0.0700942   -0.0556656
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.1198296   -0.1272684   -0.1123908
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.1264397   -0.1318353   -0.1210441
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0055633   -0.0111928    0.0000661
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0421423   -0.0491757   -0.0351088
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0753729   -0.0836217   -0.0671242
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.1063872   -0.1126334   -0.1001410
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0151714    0.0017178    0.0286251
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0033953   -0.0165544    0.0097639
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.0081416   -0.0052385    0.0215218
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   NA                 0.0040400   -0.0049563    0.0130362
12-24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0197208   -0.0335941   -0.0058475
12-24 months   ki1000108-IRC              INDIA        4-5                  NA                -0.0347117   -0.0447323   -0.0246911
12-24 months   ki1000108-IRC              INDIA        6-7                  NA                -0.0246287   -0.0357990   -0.0134585
12-24 months   ki1000108-IRC              INDIA        8+                   NA                -0.0326889   -0.0447648   -0.0206130
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0265085   -0.0336914   -0.0193255
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.0353564   -0.0413294   -0.0293834
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.0331476   -0.0392429   -0.0270522
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.0330728   -0.0405167   -0.0256289
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0076493   -0.0107563   -0.0045423
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.0129459   -0.0168526   -0.0090392
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.0136558   -0.0168071   -0.0105044
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.0417288   -0.0446072   -0.0388504
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0185211    0.0152565    0.0217857
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0002653   -0.0044603    0.0039296
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0063794   -0.0103315   -0.0024274
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0266984    0.0233639    0.0300329
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0054524   -0.0013205    0.0122254
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0006218   -0.0073887    0.0061452
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.0500319    0.0425299    0.0575340
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                 0.0827560    0.0756419    0.0898702


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
0-3 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0379909   -0.1744419    0.0984602
0-3 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0489329   -0.1021403    0.2000062
0-3 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.0812035   -0.2229690    0.0605621
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0459452    0.0042528    0.0876377
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0363600   -0.0091240    0.0818439
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0897333    0.0404088    0.1390577
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0013773   -0.0277955    0.0250409
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.1293133   -0.1560661   -0.1025605
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2919699   -0.3184476   -0.2654923
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0624357   -0.0838629   -0.0410085
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0553012   -0.0776142   -0.0329881
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0686013    0.0475768    0.0896258
3-6 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0087960   -0.0834561    0.0658641
3-6 months     ki1000108-IRC              INDIA        6-7                  3 or less         -0.0084608   -0.0836744    0.0667527
3-6 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0432568   -0.0380146    0.1245282
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0077724   -0.0394672    0.0239224
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0376160    0.0040763    0.0711557
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0317356   -0.0012426    0.0647139
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0046184   -0.0288627    0.0196259
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0693043    0.0448990    0.0937097
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0969704   -0.1184188   -0.0755219
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1040911   -0.1235937   -0.0845885
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0631309   -0.0845193   -0.0417425
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1123397   -0.1300337   -0.0946456
6-12 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        4-5                  3 or less          0.0217653   -0.0090589    0.0525896
6-12 months    ki1000108-IRC              INDIA        6-7                  3 or less          0.0096062   -0.0220826    0.0412951
6-12 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.0208289   -0.0522293    0.0105714
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.5910113   -0.7068624   -0.4751602
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5782876   -0.6957042   -0.4608710
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.5252243   -0.6516489   -0.3987997
6-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0290277   -0.0454108   -0.0126446
6-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0188206   -0.0350686   -0.0025726
6-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0249162   -0.0444568   -0.0053756
6-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0097419   -0.0001610    0.0196447
6-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0472078   -0.0573874   -0.0370282
6-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0538179   -0.0626309   -0.0450050
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0365789   -0.0446531   -0.0285048
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0698096   -0.0790861   -0.0605332
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1008239   -0.1085997   -0.0930480
6-12 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0185667   -0.0354213   -0.0017120
6-12 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0070298   -0.0244580    0.0103985
6-12 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0111315   -0.0258816    0.0036186
12-24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0149909   -0.0318579    0.0018760
12-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0049080   -0.0226159    0.0127999
12-24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0129681   -0.0311255    0.0051892
12-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0088479   -0.0182063    0.0005105
12-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0066391   -0.0160693    0.0027911
12-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0065644   -0.0168944    0.0037656
12-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0052966   -0.0096738   -0.0009193
12-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0060064   -0.0098814   -0.0021315
12-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0340795   -0.0377044   -0.0304546
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0187865   -0.0240610   -0.0135119
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0249005   -0.0299821   -0.0198190
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0081773    0.0033291    0.0130254
12-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0060742   -0.0158641    0.0037158
12-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0445795    0.0341760    0.0549830
12-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0773036    0.0674807    0.0871265
