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
![](/tmp/953b3a24-948d-493b-9538-344ee795ef13/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/953b3a24-948d-493b-9538-344ee795ef13/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2797297   -0.3976036   -0.1618557
0-3 months     ki1000108-IRC              INDIA                          2+                   NA                -0.2291567   -0.3019849   -0.1563285
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0354425   -0.0565912   -0.0142939
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.1123006   -0.2613938    0.0367927
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1111297   -0.1331115   -0.0891480
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0744920   -0.2086755    0.0596915
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0826111    0.0769935    0.0882287
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.0163277   -0.0295451   -0.0031103
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0500169   -0.1024750    0.0024412
3-6 months     ki1000108-IRC              INDIA                          2+                   NA                -0.0676003   -0.1094426   -0.0257579
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0141139   -0.0336071    0.0053792
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0245420   -0.1407904    0.0917063
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0351356    0.0155165    0.0547548
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.1176585   -0.2120708   -0.0232463
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0851252   -0.1054563   -0.0647941
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.0316436   -0.0021121    0.0653993
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0071414    0.0012029    0.0130799
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.0566370   -0.0698877   -0.0433864
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0252479   -0.0544549    0.0039591
6-12 months    ki1000108-IRC              INDIA                          2+                   NA                -0.0390297   -0.0555260   -0.0225335
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0575360   -0.0657072   -0.0493648
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0587582   -0.0810227   -0.0364937
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0633691   -0.0740703   -0.0526678
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.1006254   -0.1478495   -0.0534013
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0062296   -0.0225341    0.0100749
6-12 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.0130468   -0.0437349    0.0176413
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0665991   -0.0700173   -0.0631810
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.0573134   -0.0617343   -0.0528925
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0159737   -0.0319643    0.0000169
12-24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.0387693   -0.0488054   -0.0287332
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0059797   -0.0106109   -0.0013484
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0071792   -0.0329161    0.0185578
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0194209   -0.0277618   -0.0110800
12-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.0100139   -0.0295286    0.0095008
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0166332   -0.0189083   -0.0143582
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.1047939   -0.1067868   -0.1028011


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2441698   -0.3119044   -0.1764352
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0368957   -0.0578563   -0.0159352
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1107045   -0.1324895   -0.0889195
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0813511    0.0757338    0.0869684
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0586315   -0.0951914   -0.0220716
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0143084   -0.0335609    0.0049441
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0335984    0.0141072    0.0530897
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0809860   -0.1009833   -0.0609888
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0052401   -0.0005781    0.0110582
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0337655   -0.0491393   -0.0183916
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0575601   -0.0655826   -0.0495375
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0648261   -0.0753758   -0.0542765
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0072589   -0.0221468    0.0076290
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0678995   -0.0712994   -0.0644997
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0327117   -0.0417340   -0.0236893
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0060010   -0.0105729   -0.0014292
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0183795   -0.0261359   -0.0106231
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0168950   -0.0191616   -0.0146285


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2+                   1                  0.0505729   -0.0868560    0.1880018
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0768580   -0.2274438    0.0737277
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0366377   -0.0993344    0.1726098
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0989388   -0.1133333   -0.0845443
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2+                   1                 -0.0175834   -0.0837871    0.0486203
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0104281   -0.1282995    0.1074433
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1527941   -0.2492233   -0.0563650
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.1167688    0.0780125    0.1555251
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0637785   -0.0788043   -0.0487526
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0137819   -0.0472796    0.0197159
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0012222   -0.0249387    0.0224944
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0372564   -0.0854546    0.0109418
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0068172   -0.0417596    0.0281252
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0092858    0.0036912    0.0148803
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0227957   -0.0416582   -0.0039331
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0011995   -0.0273498    0.0249508
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                  0.0094070   -0.0117718    0.0305858
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0881607   -0.0912523   -0.0850690
