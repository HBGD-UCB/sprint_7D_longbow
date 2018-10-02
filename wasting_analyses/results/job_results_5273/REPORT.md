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
![](/tmp/9c3ab46a-ecb2-47c0-9ea5-784ba6a83e9e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9c3ab46a-ecb2-47c0-9ea5-784ba6a83e9e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9c3ab46a-ecb2-47c0-9ea5-784ba6a83e9e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9c3ab46a-ecb2-47c0-9ea5-784ba6a83e9e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7244045   0.6382143   0.8105948
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6598197   0.5954617   0.7241776
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3613281   0.3196779   0.4029784
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.5000000   0.2168332   0.7831668
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2412876   0.2205547   0.2620205
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2279966   0.1355115   0.3204816
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2075356   0.1696549   0.2454163
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2404654   0.2029721   0.2779587
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0639386   0.0396629   0.0882144
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0793651   0.0125438   0.1461864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2593237   0.2518110   0.2668364
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2431393   0.2155630   0.2707155
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.5932763   0.5015709   0.6849816
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.5272317   0.4596045   0.5948590
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1404711   0.1236372   0.1573049
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1869979   0.1026978   0.2712980
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1804162   0.1737713   0.1870611
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2134458   0.1885664   0.2383251
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3710050   0.2813558   0.4606543
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.3301423   0.2669017   0.3933828
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1655821   0.1459852   0.1851789
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0937500   0.0223139   0.1651861
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2073835   0.1697209   0.2450460
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2399636   0.2029099   0.2770174
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0625000   0.0382621   0.0867379
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0806452   0.0127919   0.1484984
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1587253   0.1514460   0.1660045
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1670893   0.1432268   0.1909518


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
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9108442   0.7809349   1.062364
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3837838   0.7763718   2.466418
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9449163   0.6241941   1.430431
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1586708   0.9057969   1.482140
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2412698   0.4928942   3.125926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9375898   0.8355053   1.052147
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.8886782   0.7269897   1.086328
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.3312199   0.8351962   2.121832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1830743   1.0507405   1.332075
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8898592   0.6556863   1.207665
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.5661845   0.2618570   1.224198
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1571011   0.9068513   1.476409
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2903226   0.5109108   3.258753
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0526949   0.9053477   1.224023


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0474286   -0.1213895   0.0265323
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0031757   -0.0036156   0.0099670
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006116   -0.0049769   0.0037537
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0319010    0.0066726   0.0571295
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0021407   -0.0077370   0.0120184
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0013362    0.0000478   0.0026247
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0468845   -0.1244201   0.0306510
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0023028   -0.0017610   0.0063666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001542   -0.0009364   0.0012448
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0239260   -0.0979984   0.0501464
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0031771   -0.0065407   0.0001865
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0320532    0.0069450   0.0571613
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0025224   -0.0075108   0.0125556
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0016174    0.0002195   0.0030153


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0700595   -0.1859646   0.0345182
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0087124   -0.0100992   0.0271736
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025412   -0.0208433   0.0154327
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1332337    0.0203382   0.2331192
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0323956   -0.1288281   0.1705926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0051263    0.0001813   0.0100468
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0858076   -0.2387442   0.0482474
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0161291   -0.0127090   0.0441461
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0008540   -0.0052023   0.0068738
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0689353   -0.3062241   0.1252475
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0195628   -0.0404074   0.0008642
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1338691    0.0216515   0.2332152
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0387931   -0.1279697   0.1809011
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0100871    0.0013468   0.0187508
