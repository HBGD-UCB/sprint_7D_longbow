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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        nchldlt5    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                0       50     245
Birth       ki1000108-IRC              INDIA                          1                1       22     245
Birth       ki1000108-IRC              INDIA                          2+               0      129     245
Birth       ki1000108-IRC              INDIA                          2+               1       44     245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       12      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        3      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               0        1      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1        0      16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    16820   19544
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     1948   19544
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               0      730   19544
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               1       46   19544
6 months    ki1000108-IRC              INDIA                          1                0       77     289
6 months    ki1000108-IRC              INDIA                          1                1       11     289
6 months    ki1000108-IRC              INDIA                          2+               0      174     289
6 months    ki1000108-IRC              INDIA                          2+               1       27     289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      409     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       17     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               0        8     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               1        1     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      494     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       13     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               0        5     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               1        0     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1335    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       55    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       56    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1        6    1452
6 months    ki1148112-LCNI-5           MALAWI                         1                0      384     453
6 months    ki1148112-LCNI-5           MALAWI                         1                1        6     453
6 months    ki1148112-LCNI-5           MALAWI                         2+               0       63     453
6 months    ki1148112-LCNI-5           MALAWI                         2+               1        0     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    19916   22430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     1791   22430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               0      639   22430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               1       84   22430
24 months   ki1000108-IRC              INDIA                          1                0       78     290
24 months   ki1000108-IRC              INDIA                          1                1       11     290
24 months   ki1000108-IRC              INDIA                          2+               0      184     290
24 months   ki1000108-IRC              INDIA                          2+               1       17     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      375     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       48     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               0        6     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               1        2     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      328     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       29     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               0        4     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               1        0     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1        0       5
24 months   ki1148112-LCNI-5           MALAWI                         1                0      271     321
24 months   ki1148112-LCNI-5           MALAWI                         1                1        6     321
24 months   ki1148112-LCNI-5           MALAWI                         2+               0       42     321
24 months   ki1148112-LCNI-5           MALAWI                         2+               1        2     321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     8383   11282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     2460   11282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               0      345   11282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               1       94   11282


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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/02dde019-7577-4e45-aef6-7fbc71e41009/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/02dde019-7577-4e45-aef6-7fbc71e41009/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/02dde019-7577-4e45-aef6-7fbc71e41009/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/02dde019-7577-4e45-aef6-7fbc71e41009/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.3091845   0.2072458   0.4111232
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.2539055   0.1895094   0.3183016
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1029424   0.0963854   0.1094994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0094772   0.0028285   0.0161260
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1253633   0.0562804   0.1944463
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1341623   0.0870036   0.1813209
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0395683   0.0293166   0.0498201
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0967742   0.0231569   0.1703915
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0819173   0.0760754   0.0877592
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0973198   0.0810769   0.1135627
24 months   ki1000108-IRC              INDIA                          1                    NA                0.0954661   0.0390923   0.1518400
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0773059   0.0409848   0.1136271
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2259764   0.2135119   0.2384408
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0881600   0.0659374   0.1103826


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2693878   0.2137223   0.3250532
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1020262   0.0954832   0.1085692
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1314879   0.0924593   0.1705165
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0420110   0.0316887   0.0523333
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0835934   0.0778034   0.0893834
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0965517   0.0625006   0.1306028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2263783   0.2139633   0.2387933


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.8212102   0.5421301   1.2439563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.0920636   0.0455211   0.1861930
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0701875   0.5572222   2.0553760
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 2.4457478   1.0949710   5.4628681
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1880251   0.9899082   1.4257924
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8097735   0.3792134   1.7291930
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.3901292   0.3006549   0.5062308


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0397967   -0.1240083   0.0444148
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0009162   -0.0019738   0.0001415
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0061246   -0.0519634   0.0642126
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0024427   -0.0007864   0.0056718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0016761    0.0005461   0.0028061
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0010856   -0.0440130   0.0461842
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0004019   -0.0019592   0.0027630


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.1477304   -0.5081441   0.1265523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0089799   -0.0194549   0.0013876
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0465789   -0.5151066   0.4000345
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0581436   -0.0206111   0.1308214
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0200507    0.0064395   0.0334754
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0112439   -0.5858074   0.3835073
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0017754   -0.0087024   0.0121443
