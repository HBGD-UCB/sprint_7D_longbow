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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        nchldlt5    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                 0       59     245
Birth       ki1000108-IRC              INDIA                          1                 1       13     245
Birth       ki1000108-IRC              INDIA                          2+                0      151     245
Birth       ki1000108-IRC              INDIA                          2+                1       22     245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       14      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        1      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0      16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    18434   19544
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      334   19544
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0      770   19544
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1        6   19544
6 months    ki1000108-IRC              INDIA                          1                 0       83     289
6 months    ki1000108-IRC              INDIA                          1                 1        5     289
6 months    ki1000108-IRC              INDIA                          2+                0      190     289
6 months    ki1000108-IRC              INDIA                          2+                1       11     289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      422     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0        8     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        0     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        5     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1382    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       61    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        1    1452
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      390     453
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                0       63     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                1        0     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    21419   22430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      288   22430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0      707   22430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1       16   22430
24 months   ki1000108-IRC              INDIA                          1                 0       86     290
24 months   ki1000108-IRC              INDIA                          1                 1        3     290
24 months   ki1000108-IRC              INDIA                          2+                0      200     290
24 months   ki1000108-IRC              INDIA                          2+                1        1     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      418     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0        8     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        0     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      353     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        4     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       5
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      276     321
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     321
24 months   ki1148112-LCNI-5           MALAWI                         2+                0       44     321
24 months   ki1148112-LCNI-5           MALAWI                         2+                1        0     321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10379   11282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      464   11282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0      421   11282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1       18   11282


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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/46e889a4-b26a-4aa8-948e-60fdb2f90c3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/46e889a4-b26a-4aa8-948e-60fdb2f90c3a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/46e889a4-b26a-4aa8-948e-60fdb2f90c3a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/46e889a4-b26a-4aa8-948e-60fdb2f90c3a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                0.1805556    0.0915258   0.2695853
Birth       ki1000108-IRC       INDIA        2+                   NA                0.1271676    0.0774206   0.1769146
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0177962    0.0147648   0.0208277
Birth       kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0077320   -0.0020978   0.0175618
6 months    ki1000108-IRC       INDIA        1                    NA                0.0568182    0.0083674   0.1052690
6 months    ki1000108-IRC       INDIA        2+                   NA                0.0547264    0.0232286   0.0862241
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0132676    0.0106610   0.0158743
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0221300    0.0043136   0.0399465
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0427926    0.0370058   0.0485793
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0410023    0.0127080   0.0692965


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        NA                   NA                0.1428571   0.0989504   0.1867638
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0173966   0.0144432   0.0203501
6 months    ki1000108-IRC       INDIA        NA                   NA                0.0553633   0.0289517   0.0817750
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0135533   0.0109751   0.0161315
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0427229   0.0370835   0.0483623


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC       INDIA        2+                   1                 0.7043130   0.3753297   1.321656
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 0.4344713   0.1214073   1.554810
6 months    ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC       INDIA        2+                   1                 0.9631841   0.3442791   2.694685
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 1.6679730   0.7259232   3.832545
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 0.9581631   0.4725444   1.942837


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.0376984   -0.1097774   0.0343805
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0003996   -0.0008055   0.0000063
6 months    ki1000108-IRC       INDIA        1                    NA                -0.0014549   -0.0416475   0.0387378
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0002857   -0.0002991   0.0008705
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0000697   -0.0011993   0.0010599


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.2638889   -0.8783689    0.1495733
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0229703   -0.0463990   -0.0000661
6 months    ki1000108-IRC       INDIA        1                    NA                -0.0262784   -1.0818073    0.4940707
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0210774   -0.0229609    0.0632198
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0016306   -0.0284166    0.0244577
