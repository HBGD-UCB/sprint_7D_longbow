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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        nchldlt5    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                   0       79     291
0-24 months   ki1000108-IRC              INDIA                          1                   1       10     291
0-24 months   ki1000108-IRC              INDIA                          2+                  0      176     291
0-24 months   ki1000108-IRC              INDIA                          2+                  1       26     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      459     479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10     479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0        9     479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        1     479
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      504     525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       16     525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0        5     525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        0     525
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440    1546
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38    1546
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0       64    1546
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1        4    1546
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      488     970
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       62     970
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  0      368     970
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  1       52     970
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      337     399
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     399
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0       58     399
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        0     399
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    18922   20774
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1192   20774
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0      618   20774
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1       42   20774
0-6 months    ki1000108-IRC              INDIA                          1                   0       69     284
0-6 months    ki1000108-IRC              INDIA                          1                   1       16     284
0-6 months    ki1000108-IRC              INDIA                          2+                  0      171     284
0-6 months    ki1000108-IRC              INDIA                          2+                  1       28     284
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      458     477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        9     477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  0        9     477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  1        1     477
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1372    1472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36    1472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0       61    1472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1        3    1472
6-24 months   ki1000108-IRC              INDIA                          1                   0       79     291
6-24 months   ki1000108-IRC              INDIA                          1                   1       10     291
6-24 months   ki1000108-IRC              INDIA                          2+                  0      178     291
6-24 months   ki1000108-IRC              INDIA                          2+                  1       24     291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      409     446
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       28     446
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0        9     446
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        0     446
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      469     501
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       27     501
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0        5     501
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        0     501
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1126    1237
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       58    1237
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0       50    1237
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1        3    1237
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      488     970
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       62     970
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  0      368     970
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  1       52     970
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      329     388
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     388
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0       54     388
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        1     388


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
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1c0776ad-10a3-46e6-bca6-2bda096b75bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1c0776ad-10a3-46e6-bca6-2bda096b75bf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1c0776ad-10a3-46e6-bca6-2bda096b75bf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1c0776ad-10a3-46e6-bca6-2bda096b75bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                0.0834554   0.0301260   0.1367848
0-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1237873   0.0782867   0.1692878
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.0925978   0.0549483   0.1302473
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.0951385   0.0519008   0.1383763
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0590413   0.0536637   0.0644189
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.0280159   0.0190526   0.0369792
0-6 months    ki1000108-IRC          INDIA          1                    NA                0.2281923   0.1441148   0.3122699
0-6 months    ki1000108-IRC          INDIA          2+                   NA                0.1449629   0.0960572   0.1938685
6-24 months   ki1000108-IRC          INDIA          1                    NA                0.0854839   0.0313647   0.1396032
6-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1145888   0.0705464   0.1586312
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.0930069   0.0553394   0.1306744
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.0956111   0.0523054   0.1389169


### Parameter: E(Y)


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          NA                   NA                0.1237113   0.0858167   0.1616060
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1175258   0.0808822   0.1541694
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0594012   0.0540955   0.0647069
0-6 months    ki1000108-IRC          INDIA          NA                   NA                0.1549296   0.1127727   0.1970865
6-24 months   ki1000108-IRC          INDIA          NA                   NA                0.1168385   0.0798674   0.1538096
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1175258   0.0808822   0.1541694


### Parameter: RR


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC          INDIA          2+                   1                 1.4832742   0.7083862   3.1057951
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.0274387   0.6064964   1.7405386
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 0.4745133   0.3406617   0.6609574
0-6 months    ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC          INDIA          2+                   1                 0.6352663   0.3852223   1.0476113
6-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC          INDIA          2+                   1                 1.3404717   0.6381977   2.8155294
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.0280006   0.6095835   1.7336186


### Parameter: PAR


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0402559   -0.0063923    0.0869041
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0249280    0.0002698    0.0495862
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0003599   -0.0005578    0.0012776
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.0732627   -0.1429818   -0.0035437
6-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0313545   -0.0150861    0.0777952
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0245189    0.0000254    0.0490124


### Parameter: PAF


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                 0.3254020   -0.1648673    0.6093268
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.2121066   -0.0162284    0.3891373
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0060587   -0.0095171    0.0213942
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.4728777   -1.0112762   -0.0786031
6-24 months   ki1000108-IRC          INDIA          1                    NA                 0.2683580   -0.2498775    0.5717180
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.2086256   -0.0181231    0.3848746
