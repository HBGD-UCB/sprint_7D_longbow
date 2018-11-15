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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        nchldlt5    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                 0       72     274
Birth       ki1000108-IRC              INDIA                          1                 1       12     274
Birth       ki1000108-IRC              INDIA                          2+                0      171     274
Birth       ki1000108-IRC              INDIA                          2+                1       19     274
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       14      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0      19
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7865   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4239   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0      345   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1      122   12571
6 months    ki1000108-IRC              INDIA                          1                 0       67     288
6 months    ki1000108-IRC              INDIA                          1                 1       22     288
6 months    ki1000108-IRC              INDIA                          2+                0      150     288
6 months    ki1000108-IRC              INDIA                          2+                1       49     288
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      357     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       69     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0        8     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      400     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      107     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        5     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1267    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      124    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       55    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        7    1453
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      263     453
6 months    ki1148112-LCNI-5           MALAWI                         1                 1      127     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                0       37     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                1       26     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8093   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2794   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0      272   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1       93   11252
24 months   ki1000108-IRC              INDIA                          1                 0       58     290
24 months   ki1000108-IRC              INDIA                          1                 1       31     290
24 months   ki1000108-IRC              INDIA                          2+                0      108     290
24 months   ki1000108-IRC              INDIA                          2+                1       93     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      298     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      125     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0        6     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        2     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      276     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       81     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        3     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        1     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        4       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       5
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      163     327
24 months   ki1148112-LCNI-5           MALAWI                         1                 1      120     327
24 months   ki1148112-LCNI-5           MALAWI                         2+                0       21     327
24 months   ki1148112-LCNI-5           MALAWI                         2+                1       23     327
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2892    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2562    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0       98    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1      121    5673


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a04f8072-b46e-4a65-acc5-d13f10b2e066/da99b670-f132-4eaf-8996-5710ce93492c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a04f8072-b46e-4a65-acc5-d13f10b2e066/da99b670-f132-4eaf-8996-5710ce93492c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a04f8072-b46e-4a65-acc5-d13f10b2e066/da99b670-f132-4eaf-8996-5710ce93492c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a04f8072-b46e-4a65-acc5-d13f10b2e066/da99b670-f132-4eaf-8996-5710ce93492c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1428571   0.0678884   0.2178258
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.1000000   0.0572647   0.1427353
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3502148   0.3405022   0.3599274
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2612420   0.2199040   0.3025799
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2471910   0.1574136   0.3369684
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2462312   0.1862704   0.3061920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0891445   0.0741647   0.1041243
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1129032   0.0341006   0.1917058
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3256410   0.2790813   0.3722008
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.4126984   0.2909945   0.5344024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2566364   0.2467287   0.2665440
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2547945   0.2098997   0.2996893
24 months   ki1000108-IRC              INDIA                          1                    NA                0.3483146   0.2491611   0.4474681
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4626866   0.3936376   0.5317356
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4240283   0.3663625   0.4816940
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.5227273   0.3749159   0.6705386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4697470   0.4535615   0.4859324
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.5525114   0.4827301   0.6222927


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1131387   0.0755636   0.1507138
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3469096   0.3373971   0.3564220
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2465278   0.1966653   0.2963902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0901583   0.0754267   0.1048899
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3377483   0.2941483   0.3813484
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2565766   0.2468050   0.2663482
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4275862   0.3705480   0.4846244
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4373089   0.3834610   0.4911567
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4729420   0.4569089   0.4889751


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.7000000   0.3557772   1.3772666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.7459478   0.6355475   0.8755256
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9961169   0.6432883   1.5424639
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2665193   0.6177715   2.5965442
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2673416   0.9131914   1.7588369
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9928232   0.8306181   1.1867040
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 1.3283582   0.9632244   1.8319049
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2327652   0.9007632   1.6871359
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1761894   1.0344421   1.3373600


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0297185   -0.0896031    0.0301662
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0033053   -0.0048977   -0.0017128
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0006632   -0.0752604    0.0739339
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0010138   -0.0024179    0.0044454
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0121073   -0.0062263    0.0304409
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0000597   -0.0015349    0.0014155
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0792716   -0.0046946    0.1632378
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0132806   -0.0083792    0.0349404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0031950    0.0004443    0.0059458


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2626728   -0.9127574    0.1664690
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0095277   -0.0141247   -0.0049516
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0026903   -0.3559005    0.2585091
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0112446   -0.0275229    0.0485494
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0358472   -0.0199883    0.0886261
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0002329   -0.0059988    0.0055000
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1853933   -0.0371005    0.3601545
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0303689   -0.0205229    0.0787229
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0067557    0.0009248    0.0125525
