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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country      nhh          pers_wast   n_cell     n
------------  -------------------------  -----------  ----------  ----------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less            0       49   410
0-24 months   ki1000108-IRC              INDIA        3 or less            1        9   410
0-24 months   ki1000108-IRC              INDIA        4-5                  0      140   410
0-24 months   ki1000108-IRC              INDIA        4-5                  1       18   410
0-24 months   ki1000108-IRC              INDIA        6-7                  0       98   410
0-24 months   ki1000108-IRC              INDIA        6-7                  1        9   410
0-24 months   ki1000108-IRC              INDIA        8+                   0       75   410
0-24 months   ki1000108-IRC              INDIA        8+                   1       12   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            0       27   375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            1        4   375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  0      143   375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  1       23   375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  0       87   375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  1       27   375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   0       53   375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   1       11   375
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            0       84   534
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            1        9   534
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  0      207   534
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  1       22   534
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  0      117   534
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  1        8   534
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   0       79   534
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   1        8   534
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            0      117   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            1        3   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  0      293   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  1        6   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  0      132   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  1        4   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   0       83   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   1        2   640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            0      103   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            1        4   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  0      314   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  1       16   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  0      172   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  1        4   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   0      115   730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   1        2   730
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            0      191   715
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            1        3   715
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  0      297   715
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  1        2   715
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  0      161   715
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  1        0   715
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   0       60   715
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   1        1   715
0-6 months    ki1000108-IRC              INDIA        3 or less            0       44   402
0-6 months    ki1000108-IRC              INDIA        3 or less            1       12   402
0-6 months    ki1000108-IRC              INDIA        4-5                  0      130   402
0-6 months    ki1000108-IRC              INDIA        4-5                  1       26   402
0-6 months    ki1000108-IRC              INDIA        6-7                  0       90   402
0-6 months    ki1000108-IRC              INDIA        6-7                  1       13   402
0-6 months    ki1000108-IRC              INDIA        8+                   0       74   402
0-6 months    ki1000108-IRC              INDIA        8+                   1       13   402
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            0      117   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            1        3   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  0      293   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  1        5   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  0      132   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  1        3   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   0       81   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   1        3   637
6-24 months   ki1000108-IRC              INDIA        3 or less            0       49   410
6-24 months   ki1000108-IRC              INDIA        3 or less            1        9   410
6-24 months   ki1000108-IRC              INDIA        4-5                  0      140   410
6-24 months   ki1000108-IRC              INDIA        4-5                  1       18   410
6-24 months   ki1000108-IRC              INDIA        6-7                  0       97   410
6-24 months   ki1000108-IRC              INDIA        6-7                  1       10   410
6-24 months   ki1000108-IRC              INDIA        8+                   0       76   410
6-24 months   ki1000108-IRC              INDIA        8+                   1       11   410
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            0       24   348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            1        4   348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  0      129   348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  1       23   348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  0       85   348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  1       24   348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   0       51   348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   1        8   348
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            0       77   492
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            1       10   492
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  0      182   492
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  1       25   492
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  0      104   492
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  1       11   492
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   0       74   492
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   1        9   492
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            0      104   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            1        7   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  0      267   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  1       16   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  0      112   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  1       11   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   0       80   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   1        4   601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            0       93   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            1        5   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  0      293   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  1       27   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  0      160   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  1        5   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   0      109   697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   1        5   697
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            0      189   691
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            1        2   691
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  0      287   691
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  1        2   691
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  0      153   691
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  1        0   691
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   0       56   691
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   1        2   691


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/01eaea53-9e29-414e-9800-c059d94600e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01eaea53-9e29-414e-9800-c059d94600e3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/01eaea53-9e29-414e-9800-c059d94600e3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/01eaea53-9e29-414e-9800-c059d94600e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                0.1551724   0.0618780   0.2484668
0-24 months   ki1000108-IRC           INDIA        4-5                  NA                0.1139241   0.0643228   0.1635253
0-24 months   ki1000108-IRC           INDIA        6-7                  NA                0.0841121   0.0314575   0.1367668
0-24 months   ki1000108-IRC           INDIA        8+                   NA                0.1379310   0.0653838   0.2104782
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.0967742   0.0366303   0.1569181
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.0960699   0.0578668   0.1342730
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.0640000   0.0210535   0.1069465
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.0919540   0.0311777   0.1527304
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                0.2142857   0.1066828   0.3218886
0-6 months    ki1000108-IRC           INDIA        4-5                  NA                0.1666667   0.1081122   0.2252212
0-6 months    ki1000108-IRC           INDIA        6-7                  NA                0.1262136   0.0620001   0.1904270
0-6 months    ki1000108-IRC           INDIA        8+                   NA                0.1494253   0.0744190   0.2244316
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                0.1551724   0.0618780   0.2484668
6-24 months   ki1000108-IRC           INDIA        4-5                  NA                0.1139241   0.0643228   0.1635253
6-24 months   ki1000108-IRC           INDIA        6-7                  NA                0.0934579   0.0382389   0.1486770
6-24 months   ki1000108-IRC           INDIA        8+                   NA                0.1264368   0.0565166   0.1963570
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.1149425   0.0478527   0.1820323
6-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.1207729   0.0763364   0.1652095
6-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.0956522   0.0418430   0.1494613
6-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.1084337   0.0414746   0.1753929
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.0510204   0.0074244   0.0946165
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.0843750   0.0538995   0.1148505
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.0303030   0.0041285   0.0564776
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.0438596   0.0062412   0.0814781


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
0-6 months    ki1000108-IRC           INDIA        NA                   NA                0.1592040   0.1233945   0.1950135
6-24 months   ki1000108-IRC           INDIA        NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1117886   0.0839169   0.1396604
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0602582   0.0425793   0.0779372


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC           INDIA        4-5                  3 or less         0.7341772   0.3494737   1.542365
0-24 months   ki1000108-IRC           INDIA        6-7                  3 or less         0.5420561   0.2275581   1.291208
0-24 months   ki1000108-IRC           INDIA        8+                   3 or less         0.8888889   0.3998735   1.975934
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.9927220   0.4746749   2.076151
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.6613333   0.2649742   1.650583
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.9501916   0.3835307   2.354086
0-6 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC           INDIA        4-5                  3 or less         0.7777778   0.4214046   1.435528
0-6 months    ki1000108-IRC           INDIA        6-7                  3 or less         0.5889968   0.2881787   1.203827
0-6 months    ki1000108-IRC           INDIA        8+                   3 or less         0.6973180   0.3428275   1.418359
6-24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC           INDIA        4-5                  3 or less         0.7341772   0.3494737   1.542365
6-24 months   ki1000108-IRC           INDIA        6-7                  3 or less         0.6022846   0.2592452   1.399242
6-24 months   ki1000108-IRC           INDIA        8+                   3 or less         0.8148148   0.3599916   1.844274
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.0507246   0.5270339   2.094784
6-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.8321739   0.3699604   1.871859
6-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.9433735   0.4033294   2.206518
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         1.6537500   0.6540054   4.181753
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.5939394   0.1762280   2.001747
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.8596491   0.2561660   2.884835


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0380992   -0.1230236   0.0468252
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.0087592   -0.0629427   0.0454242
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.0550817   -0.1532392   0.0430757
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0380992   -0.1230236   0.0468252
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.0031539   -0.0638667   0.0575589
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0092378   -0.0317341   0.0502098


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.3254310   -1.2852889   0.2312712
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.0995196   -0.9238695   0.3716085
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.3459821   -1.1242090   0.1471329
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.3254310   -1.2852889   0.2312712
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.0282132   -0.7436680   0.3936791
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.1533042   -0.8871505   0.6201184
