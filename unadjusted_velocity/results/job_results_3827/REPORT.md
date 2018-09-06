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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        nchldlt5    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki1000108-IRC              INDIA                          1               82     268
0-3 months     ki1000108-IRC              INDIA                          2+             186     268
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              467     476
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+               9     476
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              511     517
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+               6     517
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            24944   25864
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+             920   25864
3-6 months     ki1000108-IRC              INDIA                          1               87     283
3-6 months     ki1000108-IRC              INDIA                          2+             196     283
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              421     429
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+               8     429
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              492     497
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+               5     497
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1145    1194
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              49    1194
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            16204   16720
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+             516   16720
6-12 months    ki1000108-IRC              INDIA                          1               88     284
6-12 months    ki1000108-IRC              INDIA                          2+             196     284
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              399     407
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+               8     407
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              474     478
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               4     478
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              769     798
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              29     798
6-12 months    ki1148112-LCNI-5           MALAWI                         1              205     233
6-12 months    ki1148112-LCNI-5           MALAWI                         2+              28     233
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            12583   12993
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             410   12993
12-24 months   ki1000108-IRC              INDIA                          1               86     280
12-24 months   ki1000108-IRC              INDIA                          2+             194     280
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              331     337
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               6     337
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              341     344
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               3     344
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       1
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       1
12-24 months   ki1148112-LCNI-5           MALAWI                         1              152     171
12-24 months   ki1148112-LCNI-5           MALAWI                         2+              19     171
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5807    6033
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             226    6033


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
![](/tmp/fbc67d94-703c-4392-946b-2e0b5247a651/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fbc67d94-703c-4392-946b-2e0b5247a651/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1624604   2.8914755   3.4334454
0-3 months     ki1000108-IRC              INDIA                          2+                   NA                3.2193974   3.0652721   3.3735226
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4953761   3.4488272   3.5419250
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                3.4381842   3.0982465   3.7781219
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3215718   3.2751419   3.3680018
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                3.4254477   3.0745761   3.7763192
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.7370734   3.7252814   3.7488653
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                3.6686748   3.6174760   3.7198737
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8874100   1.7468533   2.0279668
3-6 months     ki1000108-IRC              INDIA                          2+                   NA                1.8583128   1.7659771   1.9506485
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9955268   1.9544631   2.0365904
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                1.9979433   1.7299829   2.2659038
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.0255186   1.9832512   2.0677860
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                1.6790308   1.4291004   1.9289613
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7948652   1.7508345   1.8388959
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                2.0236165   1.8240914   2.2231417
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9410703   1.9281993   1.9539414
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                1.8252080   1.7644369   1.8859791
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2585574   1.1852888   1.3318260
6-12 months    ki1000108-IRC              INDIA                          2+                   NA                1.2190063   1.1807699   1.2572427
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1864243   1.1661662   1.2066824
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                1.1886993   1.1209123   1.2564863
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1889549   1.1637357   1.2141741
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.0969297   0.9689663   1.2248931
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.2836292   1.2447493   1.3225090
6-12 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                1.2620090   1.1871897   1.3368283
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1261308   1.1180490   1.1342126
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                1.0514887   1.0111926   1.0917847
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8751557   0.8283904   0.9219209
12-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.8035085   0.7756760   0.8313409
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8657367   0.8512370   0.8802363
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.8672424   0.8084294   0.9260554
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8364357   0.8119217   0.8609498
12-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.8592054   0.7973257   0.9210851
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8052862   0.7986196   0.8119527
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.7652827   0.7333079   0.7972575


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.2019764   3.0666007   3.3373520
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4942947   3.4481705   3.5404189
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3227773   3.2766959   3.3688588
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7346404   3.7229050   3.7463757
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8672579   1.7900624   1.9444533
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9955718   1.9549653   2.0361784
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0220328   1.9800048   2.0640608
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8042528   1.7611654   1.8473402
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9374947   1.9250089   1.9499805
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2312615   1.1963858   1.2661373
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1864690   1.1665645   1.2063735
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1856107   1.1608382   1.2103832
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2810310   1.2456500   1.3164121
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1237755   1.1157915   1.1317595
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8255144   0.8011582   0.8498706
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8657635   0.8514835   0.8800435
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8389657   0.8160911   0.8618403
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8037876   0.7972112   0.8103640


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2+                   1                  0.0569369   -0.2548120    0.3686859
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0571919   -0.4003019    0.2859180
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.1038758   -0.2500543    0.4578060
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0683985   -0.1196281   -0.0171690
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2+                   1                 -0.0290972   -0.1972700    0.1390755
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0024166   -0.2686720    0.2735052
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.3464878   -0.5999671   -0.0930085
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.2287513    0.0244256    0.4330770
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.1158623   -0.1788728   -0.0528519
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0395512   -0.1221968    0.0430945
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0022750   -0.0684743    0.0730243
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0920252   -0.2224501    0.0383996
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0216201   -0.1059384    0.0626981
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0746422   -0.1154037   -0.0338807
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0716472   -0.1260681   -0.0172263
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0015057   -0.0590682    0.0620797
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                  0.0227696   -0.0437889    0.0893282
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0400035   -0.0725845   -0.0074224
