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
![](/tmp/03e8cfc9-1e34-414a-bdb3-4eb2956b01fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/03e8cfc9-1e34-414a-bdb3-4eb2956b01fc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2641160   -0.3998034   -0.1284286
0-3 months     ki1000108-IRC              INDIA                          2+                   NA                -0.2353764   -0.3124570   -0.1582958
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0354425   -0.0565912   -0.0142939
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.1123006   -0.2613938    0.0367927
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1111297   -0.1331115   -0.0891480
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0744920   -0.2086755    0.0596915
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0830089    0.0773544    0.0886635
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                 0.0364016    0.0104565    0.0623467
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0477002   -0.1144495    0.0190490
3-6 months     ki1000108-IRC              INDIA                          2+                   NA                -0.0634836   -0.1071554   -0.0198119
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0141139   -0.0336071    0.0053792
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0245420   -0.1407904    0.0917063
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0351356    0.0155165    0.0547548
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.1176585   -0.2120708   -0.0232463
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0849462   -0.1053969   -0.0644955
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.0115521   -0.0799586    0.1030628
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0069463    0.0009582    0.0129343
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.0483401   -0.0770326   -0.0196477
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0207662   -0.0533022    0.0117698
6-12 months    ki1000108-IRC              INDIA                          2+                   NA                -0.0396019   -0.0563554   -0.0228483
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0575360   -0.0657072   -0.0493648
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0587582   -0.0810227   -0.0364937
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0634676   -0.0741973   -0.0527379
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.1008507   -0.1569030   -0.0447984
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0062329   -0.0225692    0.0101034
6-12 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.0147704   -0.0469298    0.0173889
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0669469   -0.0703926   -0.0635012
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.0971355   -0.1142162   -0.0800548
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0175297   -0.0347872   -0.0002721
12-24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.0394418   -0.0498395   -0.0290441
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0059797   -0.0106109   -0.0013484
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0071792   -0.0329161    0.0185578
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0193914   -0.0277345   -0.0110483
12-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.0102846   -0.0303644    0.0097952
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0165332   -0.0188603   -0.0142061
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.0261935   -0.0353720   -0.0170150


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
0-3 months     ki1000108-IRC              INDIA                          2+                   1                  0.0287396   -0.1273132    0.1847925
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0768580   -0.2274438    0.0737277
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0366377   -0.0993344    0.1726098
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0466073   -0.0727040   -0.0205106
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2+                   1                 -0.0157834   -0.0955498    0.0639830
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0104281   -0.1282995    0.1074433
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1527941   -0.2492233   -0.0563650
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0964983    0.0027303    0.1902663
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0552864   -0.0849574   -0.0256154
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0188357   -0.0554318    0.0177604
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0012222   -0.0249387    0.0224944
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0373831   -0.0944532    0.0196869
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0085375   -0.0446083    0.0275332
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0301886   -0.0474774   -0.0128998
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0219121   -0.0420600   -0.0017643
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0011995   -0.0273498    0.0249508
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                  0.0091068   -0.0126373    0.0308509
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0096603   -0.0191599   -0.0001608
