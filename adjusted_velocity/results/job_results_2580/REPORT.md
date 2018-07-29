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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        nchldlt5    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              467     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2              158     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+               9     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              511     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2              203     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+               6     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            12472   20027
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2             7095   20027
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+             460   20027
0-3 months     ki1000108-IRC              INDIA                          1               82     377
0-3 months     ki1000108-IRC              INDIA                          2              109     377
0-3 months     ki1000108-IRC              INDIA                          3+             186     377
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              421     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2              145     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+               8     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              492     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2              198     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+               5     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             8102   12571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2             4211   12571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+             258   12571
3-6 months     ki1000108-IRC              INDIA                          1               87     397
3-6 months     ki1000108-IRC              INDIA                          2              114     397
3-6 months     ki1000108-IRC              INDIA                          3+             196     397
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1145    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              461    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              49    1655
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              399     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2              138     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+               8     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              474     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              198     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+               4     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             6298    9831
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2             3328    9831
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+             205    9831
6-12 months    ki1000108-IRC              INDIA                          1               88     400
6-12 months    ki1000108-IRC              INDIA                          2              116     400
6-12 months    ki1000108-IRC              INDIA                          3+             196     400
6-12 months    ki1148112-LCNI-5           MALAWI                         1              205     428
6-12 months    ki1148112-LCNI-5           MALAWI                         2              195     428
6-12 months    ki1148112-LCNI-5           MALAWI                         3+              28     428
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              769    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              279    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              29    1077
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              331     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2              121     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               6     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              341     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              151     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+               3     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             2907    4647
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             1627    4647
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+             113    4647
12-24 months   ki1000108-IRC              INDIA                          1               86     396
12-24 months   ki1000108-IRC              INDIA                          2              116     396
12-24 months   ki1000108-IRC              INDIA                          3+             194     396
12-24 months   ki1148112-LCNI-5           MALAWI                         1              152     306
12-24 months   ki1148112-LCNI-5           MALAWI                         2              135     306
12-24 months   ki1148112-LCNI-5           MALAWI                         3+              19     306
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1       2


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/516fe049-f9d5-45c9-bc4b-a22f46d3e78c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/516fe049-f9d5-45c9-bc4b-a22f46d3e78c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1239029   2.8875622   3.3602435
0-3 months     ki1000108-IRC              INDIA                          2                    NA                3.0618215   2.8936561   3.2299869
0-3 months     ki1000108-IRC              INDIA                          3+                   NA                3.2038981   3.0656334   3.3421629
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4981413   3.4555033   3.5407793
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.1963825   3.1536631   3.2391019
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.7161309   1.6873482   1.7449135
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3231910   3.2794165   3.3669656
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                3.2305376   3.1770920   3.2839832
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   NA                3.4443058   3.3764499   3.5121617
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.7378950   3.7251216   3.7506683
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.6624224   3.6393783   3.6854664
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                3.6297410   3.6031732   3.6563088
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.9250625   1.8159968   2.0341283
3-6 months     ki1000108-IRC              INDIA                          2                    NA                1.9453536   1.8516580   2.0390492
3-6 months     ki1000108-IRC              INDIA                          3+                   NA                1.8554652   1.7718234   1.9391070
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                2.0622633   2.0236383   2.1008883
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                2.3100409   2.2620137   2.3580681
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                3.1669253   3.1486004   3.1852502
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.0183083   1.9792502   2.0573663
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                1.8895190   1.8366948   1.9423432
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   NA                1.3446744   1.3062933   1.3830554
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7963956   1.7548132   1.8379780
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7754920   1.7316453   1.8193386
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                2.2934058   2.2246239   2.3621878
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9341125   1.9207846   1.9474405
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9064277   1.8818606   1.9309949
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.8124397   1.7843624   1.8405169
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2585267   1.1943034   1.3227500
6-12 months    ki1000108-IRC              INDIA                          2                    NA                1.2901506   1.2433984   1.3369027
6-12 months    ki1000108-IRC              INDIA                          3+                   NA                1.2344696   1.1992897   1.2696494
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1861657   1.1674212   1.2049103
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.0435618   1.0227176   1.0644061
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.0208976   1.0136599   1.0281353
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1780250   1.1547548   1.2012952
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.1751706   1.1487251   1.2016162
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3266239   0.2983168   0.3549311
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.2963882   1.2622587   1.3305177
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    NA                1.3041091   1.2694211   1.3387972
6-12 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                1.4304117   1.3819387   1.4788846
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1228037   1.1145452   1.1310623
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.0741530   1.0605592   1.0877468
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.0917296   1.0798102   1.1036490
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8826735   0.8379892   0.9273577
12-24 months   ki1000108-IRC              INDIA                          2                    NA                0.8439275   0.8160382   0.8718168
12-24 months   ki1000108-IRC              INDIA                          3+                   NA                0.8064859   0.7806653   0.8323066
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8585634   0.8459152   0.8712116
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.7102232   0.6945649   0.7258814
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.5247508   0.5163983   0.5331033
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8364357   0.8119534   0.8609181
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.8424221   0.8171444   0.8676999
12-24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.8592054   0.7974058   0.9210049
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8037776   0.7974758   0.8100793
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.7708213   0.7631870   0.7784555
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.6216055   0.6143790   0.6288320


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184715   3.7081256   3.7288173
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933678   1.7575489   1.8291867
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9202273   1.9097659   1.9306887
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1966694   1.1750524   1.2182863
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2808702   1.2546824   1.3070579
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069910   1.1002444   1.1137377
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8404906   0.8235383   0.8574429
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7967582   0.7914423   0.8020741


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0620814   -0.3515204    0.2273576
0-3 months     ki1000108-IRC              INDIA                          3+                   1                  0.0799952   -0.1926227    0.3526132
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.3017588   -0.3622739   -0.2412436
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -1.7820104   -1.8341048   -1.7299160
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0926534   -0.1614141   -0.0238928
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   1                  0.1211148    0.0405139    0.2017156
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0754726   -0.1009828   -0.0499624
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1081539   -0.1364971   -0.0798108
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0202911   -0.1222164    0.1627985
3-6 months     ki1000108-IRC              INDIA                          3+                   1                 -0.0695974   -0.2059254    0.0667307
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.2477776    0.1825132    0.3130419
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  1.1046620    1.0593989    1.1499251
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.1287893   -0.1914230   -0.0661556
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   1                 -0.6736339   -0.7267201   -0.6205477
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0209036   -0.0798532    0.0380460
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.4970102    0.4175859    0.5764346
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0276848   -0.0549512   -0.0004184
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1216728   -0.1536826   -0.0896631
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0316239   -0.0471886    0.1104364
6-12 months    ki1000108-IRC              INDIA                          3+                   1                 -0.0240571   -0.0961206    0.0480063
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.1426039   -0.1706642   -0.1145437
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.1652682   -0.1854545   -0.1450818
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0028544   -0.0367218    0.0310131
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.8514011   -0.8873472   -0.8154550
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.0077210   -0.0372247    0.0526666
6-12 months    ki1148112-LCNI-5           MALAWI                         3+                   1                  0.1340235    0.0771228    0.1909241
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0486507   -0.0637963   -0.0335051
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0310742   -0.0456338   -0.0165145
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                 -0.0387460   -0.0913653    0.0138733
12-24 months   ki1000108-IRC              INDIA                          3+                   1                 -0.0761875   -0.1278147   -0.0245603
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.1483402   -0.1691765   -0.1275040
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.3338126   -0.3496540   -0.3179711
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.0059864   -0.0292038    0.0411766
12-24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                  0.0227696   -0.0437027    0.0892420
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0329563   -0.0426475   -0.0232651
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1821720   -0.1918900   -0.1724541
