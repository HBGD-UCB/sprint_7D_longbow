---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

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

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               84     274
Birth       ki1000108-IRC              INDIA                          2+             190     274
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1      19
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            12104   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+             467   12571
6 months    ki1000108-IRC              INDIA                          1               89     288
6 months    ki1000108-IRC              INDIA                          2+             199     288
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               9     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               5     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              62    1453
6 months    ki1148112-LCNI-5           MALAWI                         1              390     453
6 months    ki1148112-LCNI-5           MALAWI                         2+              63     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10887   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             365   11252
24 months   ki1000108-IRC              INDIA                          1               89     290
24 months   ki1000108-IRC              INDIA                          2+             201     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               8     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               4     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       5
24 months   ki1148112-LCNI-5           MALAWI                         1              283     327
24 months   ki1148112-LCNI-5           MALAWI                         2+              44     327
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5454    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             219    5673


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
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3ab37c7d-0e04-45e2-a37c-856afc91138a/b94e4d44-de8f-449b-b3f3-29d85d9dc18f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1869719   -0.5986510    0.2247072
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5549095   -1.6334464   -1.4763726
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.3274418   -1.5424765   -1.1124070
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1001555   -1.3754966   -0.8248144
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9797707   -1.1720611   -0.7874804
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5420114   -0.8005817   -0.2834411
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7438722   -1.8615518   -1.6261926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1379163   -1.1792891   -1.0965435
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6277652   -1.8342976   -1.4212328
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4114553   -1.7457379   -1.0771727
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8237616   -1.9418391   -1.7056842
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7227919   -1.7913481   -1.6542356


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3088686   -0.4962872   -0.1214501
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.6491457   -1.6736931   -1.6245982
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2046701   -1.3666765   -1.0426638
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0590153   -1.1475823   -0.9704483
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1510254   -1.2352824   -1.0667684
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5175195   -0.5745106   -0.4605284
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6323620   -1.7237497   -1.5409743
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3246241   -1.3512538   -1.2979943
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.8129023   -1.9234787   -1.7023259
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5068677   -1.6032866   -1.4104489
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8484862   -1.9573785   -1.7395940
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.9717645   -2.0050051   -1.9385239


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1218967   -0.4496103    0.2058168
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0942362   -0.1726468   -0.0158255
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1227716   -0.0343250    0.2798682
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0411402   -0.2155841    0.2978644
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1712547   -0.3773594    0.0348501
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0244919   -0.2269494    0.2759331
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1115102    0.0360474    0.1869729
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1867078   -0.2243623   -0.1490532
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1851371   -0.3527902   -0.0174840
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0954125   -0.4359899    0.2451649
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0247246   -0.0652342    0.0157850
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2489726   -0.3132269   -0.1847184
