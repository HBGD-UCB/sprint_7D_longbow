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

unadjusted

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     8410    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      974    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               0      365    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               1       23    9772
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     9976   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      896   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               0      320   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               1       42   11234
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4203    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1231    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               0      173    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               1       47    5654


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
![](/tmp/3920e277-6fbf-452a-b52f-ed1a8d8f7287/8873009d-77d5-4d9c-b49c-009e7b1f3be0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3920e277-6fbf-452a-b52f-ed1a8d8f7287/8873009d-77d5-4d9c-b49c-009e7b1f3be0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3920e277-6fbf-452a-b52f-ed1a8d8f7287/8873009d-77d5-4d9c-b49c-009e7b1f3be0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3920e277-6fbf-452a-b52f-ed1a8d8f7287/8873009d-77d5-4d9c-b49c-009e7b1f3be0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.3055556   0.1989367   0.4121744
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.2543353   0.1893091   0.3193614
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1037937   0.0971446   0.1104428
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0592784   0.0348562   0.0837005
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1250000   0.0557821   0.1942179
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1343284   0.0871043   0.1815524
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0395683   0.0293166   0.0498201
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0967742   0.0231569   0.1703915
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0824135   0.0765205   0.0883066
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1160221   0.0824126   0.1496316
24 months   ki1000108-IRC              INDIA                          1                    NA                0.1235955   0.0551008   0.1920902
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0845771   0.0460437   0.1231105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2265366   0.2139823   0.2390909
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2136364   0.1570746   0.2701981


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2693878   0.2137223   0.3250532
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1020262   0.0954832   0.1085692
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1314879   0.0924593   0.1705165
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0420110   0.0316887   0.0523333
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0834965   0.0777104   0.0892826
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0965517   0.0625006   0.1306028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2260347   0.2136666   0.2384027


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.8323699   0.5400707   1.2828686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.5711171   0.3783300   0.8621433
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0746269   0.5576962   2.0707026
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 2.4457478   1.0949710   5.4628681
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.4078039   1.0437991   1.8987483
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 0.6843057   0.3339476   1.4022388
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9430544   0.7214771   1.2326818


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0361678   -0.1243997    0.0520641
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0017675   -0.0027704   -0.0007646
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0064879   -0.0517922    0.0647680
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0024427   -0.0007864    0.0056718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0010830   -0.0000256    0.0021916
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0270438   -0.0815541    0.0274665
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0005020   -0.0027336    0.0017296


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.1342593   -0.5137184    0.1500770
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0173239   -0.0272312   -0.0075122
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0493421   -0.5150656    0.4034909
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0581436   -0.0206111    0.1308214
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0129705   -0.0004286    0.0261901
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2800963   -0.9798911    0.1723552
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0022207   -0.0121438    0.0076051