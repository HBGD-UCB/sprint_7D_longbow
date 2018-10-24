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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        nchldlt5    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                     0       25     291
0-24 months   ki1000108-IRC              INDIA                          1                     1       64     291
0-24 months   ki1000108-IRC              INDIA                          2+                    0       69     291
0-24 months   ki1000108-IRC              INDIA                          2+                    1      133     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      327     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      185     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        6     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        6     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      368     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      173     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1242    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      395    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       61    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       18    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      838    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      235    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      620    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1      224    1917
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      366     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       25     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       58     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        5     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    25440   35671
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     8968   35671
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      933   35671
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      330   35671
0-6 months    ki1000108-IRC              INDIA                          1                     0       37     291
0-6 months    ki1000108-IRC              INDIA                          1                     1       52     291
0-6 months    ki1000108-IRC              INDIA                          2+                    0       95     291
0-6 months    ki1000108-IRC              INDIA                          2+                    1      107     291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      375     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      137     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0        8     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1        4     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      404     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      137     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1407    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      230    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       64    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       15    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0      121     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        1     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0       23     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    28092   35554
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     6202   35554
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     1042   35554
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      218   35554
6-24 months   ki1000108-IRC              INDIA                          1                     0       56     291
6-24 months   ki1000108-IRC              INDIA                          1                     1       33     291
6-24 months   ki1000108-IRC              INDIA                          2+                    0      134     291
6-24 months   ki1000108-IRC              INDIA                          2+                    1       68     291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      380     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       68     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        8     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2     458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      460     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       60     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        1     525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1154    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      229    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       58    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        6    1447
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      838    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      235    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      620    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1      224    1917
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      360     446
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       24     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       57     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        5     446
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    18794   23113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     3570   23113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      613   23113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      136   23113


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/26d2b51b-c3ad-4440-a02f-f93dfade1b3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/26d2b51b-c3ad-4440-a02f-f93dfade1b3c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/26d2b51b-c3ad-4440-a02f-f93dfade1b3c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/26d2b51b-c3ad-4440-a02f-f93dfade1b3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7191011   0.6255669   0.8126354
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6584158   0.5929041   0.7239275
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3613281   0.3196779   0.4029784
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.5000000   0.2168332   0.7831668
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2412951   0.2205621   0.2620280
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2278481   0.1353282   0.3203680
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2190121   0.1758901   0.2621341
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2654028   0.2201565   0.3106492
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0639386   0.0396629   0.0882144
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0793651   0.0125438   0.1461864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2606371   0.2530771   0.2681970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2612827   0.2267751   0.2957902
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.5842697   0.4817014   0.6868380
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.5297030   0.4607549   0.5986511
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1405009   0.1236621   0.1573398
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1898734   0.1033628   0.2763841
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1808480   0.1741723   0.1875236
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1730159   0.1441097   0.2019221
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3707865   0.2702644   0.4713086
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.3366337   0.2713544   0.4019129
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1655821   0.1459852   0.1851789
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0937500   0.0223139   0.1651861
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2190121   0.1758901   0.2621341
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2654028   0.2201565   0.3106492
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0625000   0.0382621   0.0867379
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0806452   0.0127919   0.1484984
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1596316   0.1522869   0.1669762
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1815755   0.1412083   0.2219426


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6769759   0.6231548   0.7307971
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3645038   0.3232556   0.4057520
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2406760   0.2204437   0.2609083
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2394366   0.2104280   0.2684452
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0660793   0.0432029   0.0889556
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2606599   0.2531488   0.2681711
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5463918   0.4890935   0.6036900
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1427739   0.1262166   0.1593311
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1805704   0.1739574   0.1871834
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3470790   0.2922900   0.4018681
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1624050   0.1433950   0.1814149
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2394366   0.2104280   0.2684452
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0650224   0.0421137   0.0879311
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1603427   0.1531124   0.1675729


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9156095   0.7773000   1.078529
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3837838   0.7763718   2.466418
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9442718   0.6235089   1.430050
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2118181   0.9144625   1.605865
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2412698   0.4928942   3.125926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0024770   0.8781520   1.144403
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9066070   0.7286314   1.128055
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.3514034   0.8436831   2.164665
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9566924   0.8089301   1.131446
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9078908   0.6505410   1.267046
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.5661845   0.2618570   1.224198
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2118181   0.9144625   1.605865
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2903226   0.5109108   3.258753
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1374659   0.9064975   1.427283


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0421252   -0.1214597   0.0372093
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0031757   -0.0036156   0.0099670
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006191   -0.0049861   0.0037480
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0204245   -0.0087821   0.0496311
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0021407   -0.0077370   0.0120184
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0000229   -0.0012020   0.0012478
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0378779   -0.1237166   0.0479608
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0022730   -0.0018139   0.0063599
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0002776   -0.0013083   0.0007531
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0237075   -0.1069280   0.0595130
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0031771   -0.0065407   0.0001865
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0204245   -0.0087821   0.0496311
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0025224   -0.0075108   0.0125556
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0007111   -0.0006194   0.0020416


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0622255   -0.1865259   0.0490532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0087124   -0.0100992   0.0271736
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025722   -0.0208818   0.0154090
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0853023   -0.0468272   0.2007546
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0323956   -0.1288281   0.1705926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0000877   -0.0046225   0.0047758
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0693237   -0.2388584   0.0770106
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0159201   -0.0130841   0.0440939
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0015371   -0.0072627   0.0041559
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0683057   -0.3371600   0.1464917
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0195628   -0.0404074   0.0008642
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0853023   -0.0468272   0.2007546
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0387931   -0.1279697   0.1809011
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0044350   -0.0038989   0.0126997
