---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
![](/tmp/1daab6a3-6cef-4fdf-8971-18889873c3c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1daab6a3-6cef-4fdf-8971-18889873c3c1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6114252   0.5177710   0.7050795
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3421377   0.3191824   0.3650930
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3244823   0.2535510   0.3954136
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5942399   0.5203310   0.6681489
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3903340   0.3798995   0.4007686
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.4154604   0.3485237   0.4823971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0883084   0.0460082   0.1306085
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.3402887   0.2567003   0.4238771
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3087112   0.2734820   0.3439404
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.2840403   0.1613043   0.4067764
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2136389   0.1893102   0.2379676
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3262389   0.2553385   0.3971392
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5585927   0.4779984   0.6391870
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1583899   0.1481590   0.1686207


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6399400   0.5846678   0.6952123
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3424240   0.3199623   0.3648857
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3716796   0.3196561   0.4237031
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6279104   0.5833951   0.6724256
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.5072187   0.4979096   0.5165277
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4236442   0.3667295   0.4805590
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1976753   0.1788317   0.2165190
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3519413   0.2739497   0.4299329
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4315682   0.4225472   0.4405892
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3723292   0.2988325   0.4458259
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2170616   0.1931569   0.2409663
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3723585   0.3203350   0.4243819
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5923488   0.5438285   0.6408692
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2022545   0.1909755   0.2135335


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          optimal              observed          0.9554415   0.8426731   1.0833008
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9991640   0.9850607   1.0134692
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8730162   0.7897271   0.9650895
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.9463770   0.8424677   1.0631023
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7695577   0.7554932   0.7838841
0-6 months    ki1000108-IRC              INDIA                          optimal              observed          0.9806823   0.8966739   1.0725613
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.4467343   0.2796769   0.7135790
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          0.9668904   0.8749300   1.0685163
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7153242   0.6389271   0.8008562
6-24 months   ki1000108-IRC              INDIA                          optimal              observed          0.7628742   0.5250394   1.1084444
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9842318   0.9582526   1.0109152
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8761419   0.7933350   0.9675921
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.9430130   0.8234031   1.0799979
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7831215   0.7582316   0.8088285
