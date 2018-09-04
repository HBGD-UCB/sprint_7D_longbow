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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        nchldlt5    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                      0       35     291
0-24 months   ki1000108-IRC              INDIA                          1                      1       54     291
0-24 months   ki1000108-IRC              INDIA                          2+                     0       70     291
0-24 months   ki1000108-IRC              INDIA                          2+                     1      132     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      295     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      217     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0        9     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        3     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      298     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      243     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        4     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        2     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1077    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      560    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       51    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       28    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      711    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      362    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      496    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      347    1916
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      145     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1      246     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       24     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1       39     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    17101   36063
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1    17683   36063
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      695   36063
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      584   36063
0-6 months    ki1000108-IRC              INDIA                          1                      0       49     291
0-6 months    ki1000108-IRC              INDIA                          1                      1       40     291
0-6 months    ki1000108-IRC              INDIA                          2+                     0      118     291
0-6 months    ki1000108-IRC              INDIA                          2+                     1       84     291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      384     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      128     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     0       10     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     1        2     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      386     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      155     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        6     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        0     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1311    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      326    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       66    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       13    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0       81     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1       41     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     0       13     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     1       10     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    19644   36004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1    15082   36004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      826   36004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      452   36004
6-24 months   ki1000108-IRC              INDIA                          1                      0       35     167
6-24 months   ki1000108-IRC              INDIA                          1                      1       14     167
6-24 months   ki1000108-IRC              INDIA                          2+                     0       70     167
6-24 months   ki1000108-IRC              INDIA                          2+                     1       48     167
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      238     335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       89     335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0        7     335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        1     335
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      280     373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       88     373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        3     373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        2     373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      858    1145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      234    1145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       38    1145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       15    1145
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      711    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      362    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      496    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      347    1916
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      138     395
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1      205     395
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       23     395
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1       29     395
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10465   13563
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2601   13563
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      365   13563
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      132   13563


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

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/34c9e1b7-85b3-42af-8d33-4ed7ae56ebe5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34c9e1b7-85b3-42af-8d33-4ed7ae56ebe5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34c9e1b7-85b3-42af-8d33-4ed7ae56ebe5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34c9e1b7-85b3-42af-8d33-4ed7ae56ebe5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6067416   0.5050836   0.7083996
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6534653   0.5877292   0.7192015
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3420892   0.3191011   0.3650773
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.3544304   0.2489193   0.4599415
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3373719   0.2536891   0.4210547
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.4116251   0.3686793   0.4545710
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6291560   0.5812254   0.6770867
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.6190476   0.4989999   0.7390954
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5083659   0.4990217   0.5177102
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4566067   0.4173235   0.4958899
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4494382   0.3459148   0.5529616
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.4158416   0.3477569   0.4839262
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1991448   0.1797934   0.2184962
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1645570   0.0827712   0.2463427
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3360656   0.2519560   0.4201752
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.4347826   0.2314857   0.6380795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4343143   0.4252471   0.4433816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.3536776   0.3130491   0.3943061
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2857143   0.1588451   0.4125835
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4067797   0.3178802   0.4956791
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2142857   0.1899382   0.2386333
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2830189   0.1616908   0.4043470
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3373719   0.2536891   0.4210547
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.4116251   0.3686793   0.4545710
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5976676   0.5457071   0.6496282
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.5576923   0.4225297   0.6928549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1990663   0.1876806   0.2104519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2655936   0.2070556   0.3241315


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6391753   0.5839030   0.6944475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3426573   0.3201957   0.3651190
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3700418   0.3180183   0.4220652
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6277533   0.5832380   0.6722686
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5065302   0.4972212   0.5158393
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4261168   0.3692020   0.4830316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1975524   0.1787088   0.2163961
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3517241   0.2737325   0.4297157
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4314521   0.4224311   0.4404731
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3712575   0.2977607   0.4447542
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2174672   0.1935626   0.2413719
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3700418   0.3180183   0.4220652
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5924051   0.5438847   0.6409254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2015041   0.1902251   0.2127831


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0770077   0.8858209   1.3094584
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0360759   0.7635765   1.4058229
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2200933   0.9477079   1.5707664
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.9839334   0.7988774   1.2118567
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8981852   0.8246516   0.9782757
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9252475   0.6974710   1.2274102
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8263182   0.4979820   1.3711376
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2937434   0.7612363   2.1987547
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8143356   0.7262042   0.9131625
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.4237288   0.8679425   2.3354126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.3207547   0.8476469   2.0579242
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2200933   0.9477079   1.5707664
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.9331144   0.7212933   1.2071408
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.3341966   1.0646073   1.6720538


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0324337   -0.0516378    0.1165052
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0005682   -0.0044047    0.0055411
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0326699   -0.0073786    0.0727184
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0014027   -0.0193429    0.0165375
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0018357   -0.0032385   -0.0004328
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0233214   -0.1093499    0.0627072
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0015923   -0.0054767    0.0022920
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0156586   -0.0197331    0.0510502
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0028623   -0.0043444   -0.0013801
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0855432   -0.0242390    0.1953254
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0031815   -0.0026073    0.0089704
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0326699   -0.0073786    0.0727184
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0052626   -0.0243723    0.0138472
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0024378    0.0002197    0.0046559


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0507430   -0.0905353    0.1737188
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0016581   -0.0129607    0.0160659
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0882871   -0.0361341    0.1977675
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0022345   -0.0312253    0.0259413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0036240   -0.0064015   -0.0008542
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0547300   -0.2773268    0.1290754
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0080603   -0.0279079    0.0114041
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0445194   -0.0616130    0.1400415
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0066341   -0.0100851   -0.0031949
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.2304147   -0.1296605    0.4757173
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0146299   -0.0123296    0.0408715
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0882871   -0.0361341    0.1977675
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0088834   -0.0416789    0.0228796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0120981    0.0010420    0.0230318
