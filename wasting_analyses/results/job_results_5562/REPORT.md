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

unadjusted

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
![](/tmp/fe13a807-b06a-4084-8e2b-69b956764e66/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fe13a807-b06a-4084-8e2b-69b956764e66/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fe13a807-b06a-4084-8e2b-69b956764e66/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe13a807-b06a-4084-8e2b-69b956764e66/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                0.1123596   0.0466355   0.1780836
0-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1287129   0.0824522   0.1749735
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1127273   0.0697918   0.1556627
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.1238095   0.0687895   0.1788296
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0592622   0.0538411   0.0646833
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.0636364   0.0367796   0.0904931
0-6 months    ki1000108-IRC          INDIA          1                    NA                0.1882353   0.1049880   0.2714826
0-6 months    ki1000108-IRC          INDIA          2+                   NA                0.1407035   0.0923073   0.1890997
6-24 months   ki1000108-IRC          INDIA          1                    NA                0.1123596   0.0466355   0.1780836
6-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1188119   0.0741143   0.1635095
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1127273   0.0697918   0.1556627
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.1238095   0.0687895   0.1788296


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


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC          INDIA          2+                   1                 1.1455446   0.5765704   2.275997
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.0983103   0.6404059   1.883626
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 1.0738102   0.6964291   1.655687
0-6 months    ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC          INDIA          2+                   1                 0.7474874   0.4268596   1.308949
6-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC          INDIA          2+                   1                 1.0574257   0.5274821   2.119786
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.0983103   0.6404059   1.883626


### Parameter: PAR


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0113518   -0.0444460   0.0671496
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0047985   -0.0228375   0.0324345
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0001390   -0.0007336   0.0010116
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.0333057   -0.1008262   0.0342147
6-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0044789   -0.0506958   0.0596537
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0047985   -0.0228375   0.0324345


### Parameter: PAF


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0917603   -0.4912812   0.4468519
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0408293   -0.2239747   0.2483436
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0023395   -0.0124714   0.0169337
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.2149733   -0.7360775   0.1497154
6-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0383344   -0.5712094   0.4114084
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0408293   -0.2239747   0.2483436
