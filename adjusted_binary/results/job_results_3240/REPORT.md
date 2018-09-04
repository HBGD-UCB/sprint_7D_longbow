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
![](/tmp/e8963f95-3b31-4403-a691-6572530c0227/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8963f95-3b31-4403-a691-6572530c0227/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e8963f95-3b31-4403-a691-6572530c0227/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8963f95-3b31-4403-a691-6572530c0227/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6336635   0.5434087   0.7239184
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6599245   0.5959960   0.7238530
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3426027   0.3196598   0.3655456
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.4383235   0.3566564   0.5199905
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3158118   0.2444257   0.3871980
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.4026171   0.3652369   0.4399972
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6284855   0.5820056   0.6749653
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.4842083   0.4125244   0.5558923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5059322   0.4966269   0.5152375
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.3558088   0.3218826   0.3897351
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4931100   0.3994420   0.5867780
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.4273130   0.3611729   0.4934531
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1992420   0.1799123   0.2185716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1633823   0.0852845   0.2414801
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3380282   0.2547981   0.4212584
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.3401015   0.1713716   0.5088314
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4318977   0.4228954   0.4408999
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.3498709   0.3113425   0.3883993
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3142106   0.1929765   0.4354447
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4172313   0.3291040   0.5053586
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2140044   0.1896834   0.2383254
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2898530   0.1729839   0.4067222
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3154909   0.2446439   0.3863380
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.4025862   0.3654259   0.4397465
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5990447   0.5482263   0.6498631
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.5250529   0.4440530   0.6060529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1987097   0.1874443   0.2099751
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1067400   0.0785587   0.1349212


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
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0414430   0.8782809   1.2349164
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2793930   1.0506311   1.5579650
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2748639   1.0069217   1.6141058
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.7704368   0.6581837   0.9018346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.7032738   0.6391853   0.7737881
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.8665674   0.6807761   1.1030633
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8200194   0.5039181   1.3344070
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.0061334   0.5846061   1.7316010
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8100783   0.7250485   0.9050800
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.3278716   0.8559152   2.0600672
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.3544256   0.8916313   2.0574296
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2760627   1.0093070   1.6133208
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.8764838   0.7382693   1.0405740
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.5371654   0.4118713   0.7005747


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0055117   -0.0688291   0.0798526
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0000547   -0.0047495   0.0048588
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0542299    0.0249447   0.0835152
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0007322   -0.0162800   0.0148157
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0005980   -0.0007728   0.0019689
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0669931   -0.1442977   0.0103115
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0016895   -0.0055092   0.0021302
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0136959   -0.0196057   0.0469975
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0004456   -0.0018462   0.0009550
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0570469   -0.0484602   0.1625540
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0034628   -0.0022594   0.0091851
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0545508    0.0257005   0.0834011
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0066396   -0.0241845   0.0109053
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0027944    0.0006956   0.0048932


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0086232   -0.1147399   0.1183342
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0001595   -0.0139594   0.0140819
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1465509    0.0502399   0.2330954
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0011663   -0.0262467   0.0233011
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0011807   -0.0015278   0.0038818
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1572177   -0.3562681   0.0126194
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0085522   -0.0280685   0.0105936
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0389393   -0.0605120   0.1290645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0010328   -0.0042863   0.0022102
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1536586   -0.1812972   0.3936380
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0159235   -0.0107210   0.0418657
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1474180    0.0524837   0.2328405
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0112079   -0.0413210   0.0180345
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0138678    0.0034458   0.0241808
