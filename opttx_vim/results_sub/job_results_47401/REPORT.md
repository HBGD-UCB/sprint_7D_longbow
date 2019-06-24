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
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
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
![](/tmp/d0c57b73-4ad5-4cf3-a42b-b490fcce974f/48e502b2-2f74-4b78-9a51-3500de2a5b17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.8458901   -1.2004705   -0.4913098
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.9859582   -1.2671743   -0.7047422
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -0.5485091   -0.9038958   -0.1931224
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.6374782   -0.8685603   -0.4063961
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1376693   -0.3909455    0.1156068
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.2216762    0.0211513    0.4222011
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed           0.5090225    0.3543059    0.6637390
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.7191128   -0.9944269   -0.4437987
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.9428765   -1.1300912   -0.7556617
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.7479603   -0.9960199   -0.4999006
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.5114052   -0.7603072   -0.2625032
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed          -0.2127210   -0.3948406   -0.0306015


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        observed             observed          -1.0105831   -1.1973019   -0.8238643
6 months    ki1000108-IRC              INDIA        observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-FoodSuppl   INDIA        observed             observed          -1.0121579   -1.1280429   -0.8962729
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


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.1646929   -0.4829290    0.1535432
6 months    ki1000108-IRC              INDIA        optimal              observed           0.3870285    0.1345663    0.6394907
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -0.4636488   -0.8114136   -0.1158840
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.1985681   -0.0041437    0.4012798
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0707012   -0.3093722    0.1679697
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.1919140   -0.3868741    0.0030462
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed          -0.0672087   -0.2014826    0.0670651
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.0267022   -0.2830586    0.2296543
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.0312974   -0.1323316    0.1949264
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1399809   -0.3662986    0.0863367
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0989450   -0.3242292    0.1263393
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed           0.1648536    0.0121505    0.3175568
