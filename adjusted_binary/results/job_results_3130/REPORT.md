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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    15730   25142
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     8478   25142
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0      690   25142
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1      244   25142
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    16158   22466
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     5579   22466
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0      543   22466
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1      186   22466
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5771   11320
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     5112   11320
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0      195   11320
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1      242   11320


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
![](/tmp/33dd87fa-3198-4a4b-bf7e-08f9cc46b56e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/33dd87fa-3198-4a4b-bf7e-08f9cc46b56e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/33dd87fa-3198-4a4b-bf7e-08f9cc46b56e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/33dd87fa-3198-4a4b-bf7e-08f9cc46b56e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1181276   0.0541522   0.1821031
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.1027331   0.0588525   0.1466136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3476913   0.3380481   0.3573345
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2230009   0.1940754   0.2519263
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2476772   0.1656190   0.3297353
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2502770   0.1907822   0.3097718
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0891445   0.0741647   0.1041243
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1129032   0.0341006   0.1917058
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3212877   0.2756243   0.3669511
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.2264309   0.1483155   0.3045463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2553999   0.2455663   0.2652335
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2000082   0.1701675   0.2298489
24 months   ki1000108-IRC              INDIA                          1                    NA                0.3211324   0.2325751   0.4096896
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4568449   0.3891842   0.5245056
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4237125   0.3675723   0.4798526
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.4049792   0.3147773   0.4951811
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4681089   0.4520521   0.4841656
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.6107859   0.5801943   0.6413775


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1131387   0.0755636   0.1507138
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3469096   0.3373971   0.3564220
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2465278   0.1966653   0.2963902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0901583   0.0754267   0.1048899
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3377483   0.2941483   0.3813484
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2566100   0.2468432   0.2663768
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4275862   0.3705480   0.4846244
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4373089   0.3834610   0.4911567
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4729682   0.4569445   0.4889919


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.8696786   0.4367706   1.7316662
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.6413760   0.5622898   0.7315856
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0104968   0.6720312   1.5194293
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2665193   0.6177715   2.5965442
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 0.7047607   0.4871096   1.0196631
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.7831178   0.6732084   0.9109711
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 1.4226063   1.0416893   1.9428140
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.9557878   0.7481853   1.2209948
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.3047945   1.2311602   1.3828329


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0049889   -0.0562928   0.0463150
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0007817   -0.0023596   0.0007961
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0011494   -0.0697713   0.0674725
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0010138   -0.0024179   0.0044454
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0164607   -0.0014041   0.0343254
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0012101   -0.0003052   0.0027254
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1064538    0.0305780   0.1823297
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0135964   -0.0049002   0.0320930
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0048593    0.0021028   0.0076158


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0440958   -0.6120537   0.3237595
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0022535   -0.0068124   0.0022849
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0046623   -0.3254847   0.2385078
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0112446   -0.0275229   0.0485494
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0487365   -0.0054744   0.1000246
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0047158   -0.0012034   0.0106000
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.2489646    0.0505414   0.4059202
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0310911   -0.0121425   0.0724780
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0102741    0.0044442   0.0160698
