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

**Outcome Variable:** whz

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
Birth       ki1000108-IRC              INDIA                          1               72     245
Birth       ki1000108-IRC              INDIA                          2+             173     245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               15      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1      16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             9384    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+             388    9772
6 months    ki1000108-IRC              INDIA                          1               88     289
6 months    ki1000108-IRC              INDIA                          2+             201     289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               9     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               5     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              62    1452
6 months    ki1148112-LCNI-5           MALAWI                         1              390     453
6 months    ki1148112-LCNI-5           MALAWI                         2+              63     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             362   11234
24 months   ki1000108-IRC              INDIA                          1               89     290
24 months   ki1000108-IRC              INDIA                          2+             201     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               8     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               4     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       5
24 months   ki1148112-LCNI-5           MALAWI                         1              277     321
24 months   ki1148112-LCNI-5           MALAWI                         2+              44     321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             220    5654


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
![](/tmp/36161c64-8504-4103-a2e4-9db7afbfadf6/638eca15-aeed-4e4c-a17c-a51da6b4ad43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9670078   -1.2215103   -0.7125054
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6548962   -0.7161245   -0.5936680
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7281425   -0.9976840   -0.4586010
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1362412   -0.2362217   -0.0362607
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0649592   -0.0302135    0.1601318
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0038340   -0.1862574    0.1939253
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.6296834    0.4642007    0.7951660
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5432670   -0.5726889   -0.5138451
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8268528   -1.0173844   -0.6363211
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0471406   -1.1559981   -0.9382832
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0774948   -0.0823277    0.2373173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4362264   -1.4965530   -1.3758998


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0094286   -1.2311616   -0.7876956
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7487659   -0.7726563   -0.7248754
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.6243253   -0.7833786   -0.4652719
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1469923   -0.2464550   -0.0475297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0572461   -0.0359459    0.1504381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0817637    0.0194495    0.1440778
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4996468    0.4052394    0.5940542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5754055   -0.5983356   -0.5524753
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7841264   -0.8946395   -0.6736134
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8670766   -0.9643669   -0.7697862
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0275234   -0.1369083    0.0818616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3091670   -1.3388782   -1.2794557


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0424207   -0.1939052    0.1090638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0938696   -0.1564034   -0.0313358
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1038172   -0.1129017    0.3205362
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0107512   -0.0307384    0.0092360
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0077131   -0.0168035    0.0013773
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0779297   -0.0982438    0.2541033
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1300366   -0.2667494    0.0066762
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0321385   -0.0507015   -0.0135755
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0427263   -0.1048755    0.1903282
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1800641    0.1209235    0.2392046
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1050181   -0.2295497    0.0195134
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.1270594    0.0691101    0.1850087
