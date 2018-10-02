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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        nchldlt5    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                     0       39     295
0-24 months   ki1000108-IRC              INDIA                          1                     1       56     295
0-24 months   ki1000108-IRC              INDIA                          2+                    0       79     295
0-24 months   ki1000108-IRC              INDIA                          2+                    1      121     295
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       87     231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      137     231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        5     231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2     231
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       73     213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      137     213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        1     213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2     213
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      186     523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      315     523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0        8     523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       14     523
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241     486
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10     486
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      223     486
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       12     486
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       25      37
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6      37
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0        5      37
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        1      37
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     5476   10128
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4298   10128
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      230   10128
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      124   10128
0-6 months    ki1000108-IRC              INDIA                          1                     0       20     170
0-6 months    ki1000108-IRC              INDIA                          1                     1       37     170
0-6 months    ki1000108-IRC              INDIA                          2+                    0       40     170
0-6 months    ki1000108-IRC              INDIA                          2+                    1       73     170
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       25     144
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      115     144
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0        2     144
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2     144
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       14     141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      125     141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        0     141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2     141
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       66     251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      170     251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0        6     251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        9     251
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0        1       1
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        0       1
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0        0       1
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0       1
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1906    6422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4298    6422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0       94    6422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      124    6422
6-24 months   ki1000108-IRC              INDIA                          1                     0       19     125
6-24 months   ki1000108-IRC              INDIA                          1                     1       19     125
6-24 months   ki1000108-IRC              INDIA                          2+                    0       39     125
6-24 months   ki1000108-IRC              INDIA                          2+                    1       48     125
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       62      87
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       22      87
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        3      87
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        0      87
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       59      72
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       12      72
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        1      72
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        0      72
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      120     272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      145     272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0        2     272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        5     272
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241     486
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10     486
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      223     486
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       12     486
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       24      36
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6      36
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0        5      36
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        1      36
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     3570    3706
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0    3706
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      136    3706
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1        0    3706


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
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7ce9e293-67a1-4050-9714-82d46fc5267d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ce9e293-67a1-4050-9714-82d46fc5267d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7ce9e293-67a1-4050-9714-82d46fc5267d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7ce9e293-67a1-4050-9714-82d46fc5267d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5957382   0.5023640   0.6891123
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6157096   0.5431784   0.6882407
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6287425   0.5840238   0.6734612
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6363636   0.4056097   0.8671176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0398406   0.0151953   0.0644860
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0510638   0.0241622   0.0779655
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4373630   0.4236011   0.4511250
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0517183   0.0386912   0.0647454
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6314473   0.5120710   0.7508235
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.6432732   0.5538054   0.7327409
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7203390   0.6621405   0.7785374
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6000000   0.3454906   0.8545094
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6894505   0.6733720   0.7055290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0826896   0.0685108   0.0968683
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5896816   0.4506937   0.7286696
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.5794836   0.4722628   0.6867044
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0398406   0.0151953   0.0644860
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0510638   0.0241622   0.0779655


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6000000   0.5401100   0.6598900
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6290631   0.5851444   0.6729818
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0452675   0.0270667   0.0634683
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4366114   0.4229424   0.4502804
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6470588   0.5734270   0.7206907
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7131474   0.6562470   0.7700478
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6885705   0.6725523   0.7045888
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5360000   0.4424375   0.6295625
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0452675   0.0270667   0.0634683


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0335238   0.8494514   1.2574838
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0121212   0.6994313   1.4646033
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2817021   0.5687409   2.8884160
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.1182503   0.0917486   0.1524071
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0187282   0.8056671   1.2881338
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8329412   0.5408570   1.2827623
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.1199355   0.1008540   0.1426271
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9827059   0.7263235   1.3295878
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.2817021   0.5687409   2.8884160


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0042618   -0.0751673   0.0836909
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003206   -0.0095522   0.0101934
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0054269   -0.0122170   0.0230707
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0007516   -0.0032968   0.0017936
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0156115   -0.0827188   0.1139419
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0071916   -0.0232105   0.0088274
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0008800   -0.0039565   0.0021966
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0536816   -0.1737046   0.0663413
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0054269   -0.0122170   0.0230707


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0071031   -0.1344115   0.1309641
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0005096   -0.0153076   0.0160805
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1198841   -0.3710072   0.4350110
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0017215   -0.0075712   0.0040943
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0241269   -0.1401521   0.1647357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0100843   -0.0328613   0.0121904
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0012779   -0.0057584   0.0031825
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1001523   -0.3529653   0.1054205
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1198841   -0.3710072   0.4350110
