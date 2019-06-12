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
Birth       ki1000108-IRC              INDIA        3 or less        54   388
Birth       ki1000108-IRC              INDIA        4-5             150   388
Birth       ki1000108-IRC              INDIA        6-7             103   388
Birth       ki1000108-IRC              INDIA        8+               81   388
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5              11    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                3    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         8    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               9    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               7    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                3    27
6 months    ki1000108-IRC              INDIA        3 or less        58   407
6 months    ki1000108-IRC              INDIA        4-5             158   407
6 months    ki1000108-IRC              INDIA        6-7             106   407
6 months    ki1000108-IRC              INDIA        8+               85   407
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             128   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       102   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             277   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             126   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               78   583
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
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        75   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   429
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       105   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               82   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less       159   574
24 months   ki1148112-LCNI-5           MALAWI       4-5             237   574
24 months   ki1148112-LCNI-5           MALAWI       6-7             129   574
24 months   ki1148112-LCNI-5           MALAWI       8+               49   574


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
![](/tmp/9b7d5c33-d6ca-4711-b803-0be984bed542/2e6fc1ea-a742-4e15-bdab-a2698fbe9dd1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.0148198   -0.4175435    0.3879039
6 months    ki1000108-IRC              INDIA        optimal              observed          -1.3975943   -1.7250732   -1.0701154
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -1.5744055   -1.9289437   -1.2198674
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -1.4010141   -1.6179926   -1.1840356
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.0191554   -1.2145717   -0.8237392
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.1028572   -1.2965445   -0.9091699
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed          -1.7302044   -1.9889572   -1.4714515
24 months   ki1000108-IRC              INDIA        optimal              observed          -1.5302800   -1.7971743   -1.2633858
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -2.2626710   -2.5061288   -2.0192131
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.6035709   -1.8628847   -1.3442572
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.4075462   -1.6162613   -1.1988310
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed          -2.0592826   -2.2664403   -1.8521248


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        observed             observed          -0.3080412   -0.4687931   -0.1472894
6 months    ki1000108-IRC              INDIA        observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-FoodSuppl   INDIA        observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH   observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1148112-LCNI-5           MALAWI       observed             observed          -1.6426961   -1.7120603   -1.5733318
24 months   ki1000108-IRC              INDIA        observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH   observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1148112-LCNI-5           MALAWI       observed             observed          -1.8714634   -1.9528558   -1.7900711


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.2932214   -0.6583080    0.0718651
6 months    ki1000108-IRC              INDIA        optimal              observed           0.1631881   -0.1337877    0.4601638
6 months    ki1000304b-SAS-FoodSuppl   INDIA        optimal              observed          -0.3242787   -0.6676841    0.0191267
6 months    ki1017093-NIH-Birth        BANGLADESH   optimal              observed          -0.0063680   -0.2036315    0.1908955
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0679486   -0.2497485    0.1138513
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0958211   -0.2685368    0.0768946
6 months    ki1148112-LCNI-5           MALAWI       optimal              observed           0.0875083   -0.1549861    0.3300027
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.2521975   -0.4988852   -0.0055099
24 months   ki1017093-NIH-Birth        BANGLADESH   optimal              observed           0.0818765   -0.1368440    0.3005970
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed           0.0174531   -0.2210525    0.2559587
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0219869   -0.2066126    0.1626388
24 months   ki1148112-LCNI-5           MALAWI       optimal              observed           0.1878191   -0.0053779    0.3810162
