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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
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

agecat      studyid                    country      nhh          n_cell     n
----------  -------------------------  -----------  ----------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less        52   343
Birth       ki1000108-IRC              INDIA        4-5             131   343
Birth       ki1000108-IRC              INDIA        6-7              84   343
Birth       ki1000108-IRC              INDIA        8+               76   343
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5              11    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                3    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         8    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               7    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               5    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                3    23
6 months    ki1000108-IRC              INDIA        3 or less        57   408
6 months    ki1000108-IRC              INDIA        4-5             157   408
6 months    ki1000108-IRC              INDIA        6-7             107   408
6 months    ki1000108-IRC              INDIA        8+               87   408
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less         8    97
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5              37    97
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7              34    97
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               18    97
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   536
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   536
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             127   536
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   536
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       102   582
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             277   582
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             126   582
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               77   582
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less       104   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             326   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             170   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              115   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less       224   816
6 months    ki1148112-LCNI-5           MALAWI       4-5             340   816
6 months    ki1148112-LCNI-5           MALAWI       6-7             182   816
6 months    ki1148112-LCNI-5           MALAWI       8+               70   816
24 months   ki1000108-IRC              INDIA        3 or less        58   409
24 months   ki1000108-IRC              INDIA        4-5             158   409
24 months   ki1000108-IRC              INDIA        6-7             107   409
24 months   ki1000108-IRC              INDIA        8+               86   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        74   428
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   428
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   428
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   428
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       105   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               83   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less       157   558
24 months   ki1148112-LCNI-5           MALAWI       4-5             230   558
24 months   ki1148112-LCNI-5           MALAWI       6-7             123   558
24 months   ki1148112-LCNI-5           MALAWI       8+               48   558


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4faddcca-b67c-4e99-8442-ee1e98d039c9/ac06fb62-dcc9-4392-96b7-8f35bf85a4d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.8579841   -1.2140529   -0.5019154
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.8610876   -1.1796650   -0.5425101
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -0.7678081   -1.4373439   -0.0982722
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.5167048   -0.7398097   -0.2935998
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1314317   -0.4067301    0.1438667
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.1553418   -0.0512613    0.3619449
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed           0.5404579    0.3862687    0.6946471
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.7715174   -1.0294140   -0.5136208
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -1.1366585   -1.3154596   -0.9578574
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.7629283   -1.0122140   -0.5136427
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.5127671   -0.7563607   -0.2691735
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed          -0.1524253   -0.2943881   -0.0104626


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        observed             observed          -1.0105831   -1.1973019   -0.8238643
6 months    ki1000108-IRC              INDIA        observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-FoodSuppl   INDIA        observed             observed          -1.1301031   -1.3613760   -0.8988302
6 months    ki1017093-NIH-Birth        BANGLADESH   observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1148112-LCNI-5           MALAWI       observed             observed           0.4418137    0.3703100    0.5133174
24 months   ki1000108-IRC              INDIA        observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH   observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI       observed             observed          -0.0478674   -0.1301904    0.0344557


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.1525990   -0.4699478   0.1647499
6 months    ki1000108-IRC              INDIA        optimal              observed           0.2621578   -0.0268291   0.5511448
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -0.3622950   -1.0259156   0.3013255
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.0777946   -0.1232889   0.2788781
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0769389   -0.3330209   0.1791431
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.1255795   -0.3269702   0.0758111
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed          -0.0986442   -0.2320098   0.0347215
24 months   ki1000108-IRC              INDIA        optimal              observed           0.0257024   -0.2110864   0.2624911
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.2250794    0.0626785   0.3874803
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1250128   -0.3560347   0.1060090
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0975831   -0.3141817   0.1190156
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed           0.1045579   -0.0177315   0.2268474
