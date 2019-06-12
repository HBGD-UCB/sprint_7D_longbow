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

agecat      studyid                    country                        nchldlt5    n_cell      n
----------  -------------------------  -----------------------------  ---------  -------  -----
Birth       ki1000108-IRC              INDIA                          1               72    245
Birth       ki1000108-IRC              INDIA                          2+             173    245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               15     16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1     16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             4596   4793
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+             197   4793
6 months    ki1000108-IRC              INDIA                          1               88    289
6 months    ki1000108-IRC              INDIA                          2+             201    289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426    435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               9    435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507    512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               5    512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390   1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              62   1452
6 months    ki1148112-LCNI-5           MALAWI                         1              390    453
6 months    ki1148112-LCNI-5           MALAWI                         2+              63    453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             5368   5552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             184   5552
24 months   ki1000108-IRC              INDIA                          1               89    290
24 months   ki1000108-IRC              INDIA                          2+             201    290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423    431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               8    431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357    361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               4    361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5      5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0      5
24 months   ki1148112-LCNI-5           MALAWI                         1              277    321
24 months   ki1148112-LCNI-5           MALAWI                         2+              44    321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             2698   2806
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             108   2806


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
![](/tmp/c310c177-6dc9-4b2a-9b39-4def2b9ee53c/c79dcf07-c282-45f4-a422-8cb7f7576554/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9560979   -1.2117836   -0.7004121
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7937341   -0.8788292   -0.7086389
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5916333   -0.8930261   -0.2902406
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1362572   -0.2362355   -0.0362789
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0649003   -0.0302683    0.1600689
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0784679   -0.2908866    0.1339508
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.6081242    0.4532443    0.7630041
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5376562   -0.5714649   -0.5038474
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7057713   -0.8782938   -0.5332489
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8633373   -0.9622422   -0.7644325
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0009462   -0.2088914    0.2107838
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4032055   -1.4565685   -1.3498426


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0094286   -1.2311616   -0.7876956
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7950762   -0.8280307   -0.7621216
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.6243253   -0.7833786   -0.4652719
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1469923   -0.2464550   -0.0475297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0572461   -0.0359459    0.1504381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0817637    0.0194495    0.1440778
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4996468    0.4052394    0.5940542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5644290   -0.5961753   -0.5326828
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7841264   -0.8946395   -0.6736134
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8670766   -0.9643669   -0.7697862
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0275234   -0.1369083    0.0818616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3005880   -1.3414585   -1.2597175


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0533307   -0.2059256    0.0992642
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0013421   -0.0883124    0.0856282
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0326919   -0.2801793    0.2147955
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0107351   -0.0307395    0.0092692
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0076542   -0.0166631    0.0013548
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1602315   -0.0410317    0.3614947
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1084774   -0.2323787    0.0154239
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0267728   -0.0364778   -0.0170679
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0783551   -0.2139524    0.0572422
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0037392   -0.0170745    0.0095961
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0284695   -0.2011130    0.1441740
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.1026175    0.0643706    0.1408644
