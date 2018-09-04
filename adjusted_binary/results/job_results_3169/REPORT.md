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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        nchldlt5    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                  0       79     274
Birth       ki1000108-IRC              INDIA                          1                  1        5     274
Birth       ki1000108-IRC              INDIA                          2+                 0      185     274
Birth       ki1000108-IRC              INDIA                          2+                 1        5     274
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       17      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                 0        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                 1        0      19
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    21292   25142
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     2916   25142
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                 0      850   25142
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                 1       84   25142
6 months    ki1000108-IRC              INDIA                          1                  0       78     288
6 months    ki1000108-IRC              INDIA                          1                  1       11     288
6 months    ki1000108-IRC              INDIA                          2+                 0      188     288
6 months    ki1000108-IRC              INDIA                          2+                 1       11     288
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      416     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       10     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                 0        9     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                 1        0     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      492     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       15     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                 0        5     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                 1        0     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1384    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        7    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0       61    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1        1    1453
6 months    ki1148112-LCNI-5           MALAWI                         1                  0      362     453
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       28     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                 0       58     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                 1        5     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20320   22466
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1417   22466
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                 0      685   22466
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                 1       44   22466
24 months   ki1000108-IRC              INDIA                          1                  0       82     290
24 months   ki1000108-IRC              INDIA                          1                  1        7     290
24 months   ki1000108-IRC              INDIA                          2+                 0      176     290
24 months   ki1000108-IRC              INDIA                          2+                 1       25     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      390     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       33     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                 0        8     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                 1        0     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      336     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       21     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                 0        4     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                 1        0     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        4       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        1       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 0        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                 1        0       5
24 months   ki1148112-LCNI-5           MALAWI                         1                  0      257     327
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       26     327
24 months   ki1148112-LCNI-5           MALAWI                         2+                 0       38     327
24 months   ki1148112-LCNI-5           MALAWI                         2+                 1        6     327
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     9324   11320
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1559   11320
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                 0      341   11320
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                 1       96   11320


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8d09d40f-5855-4f34-93b3-33c6336ed337/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d09d40f-5855-4f34-93b3-33c6336ed337/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d09d40f-5855-4f34-93b3-33c6336ed337/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d09d40f-5855-4f34-93b3-33c6336ed337/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                0.0595238   0.0088339   0.1102137
Birth       ki1000108-IRC       INDIA        2+                   NA                0.0263158   0.0035133   0.0491183
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.1192473   0.1129873   0.1255073
Birth       kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0650161   0.0506221   0.0794101
6 months    ki1000108-IRC       INDIA        1                    NA                0.1015334   0.0437825   0.1592843
6 months    ki1000108-IRC       INDIA        2+                   NA                0.0559656   0.0236949   0.0882362
6 months    ki1148112-LCNI-5    MALAWI       1                    NA                0.0717949   0.0461462   0.0974435
6 months    ki1148112-LCNI-5    MALAWI       2+                   NA                0.0793651   0.0125436   0.1461866
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0644430   0.0594176   0.0694685
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0160241   0.0094113   0.0226368
24 months   ki1000108-IRC       INDIA        1                    NA                0.0786517   0.0226283   0.1346750
24 months   ki1000108-IRC       INDIA        2+                   NA                0.1243781   0.0786766   0.1700796
24 months   ki1148112-LCNI-5    MALAWI       1                    NA                0.0918728   0.0581684   0.1255772
24 months   ki1148112-LCNI-5    MALAWI       2+                   NA                0.1363636   0.0348086   0.2379187
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.1428349   0.1320646   0.1536053
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.1069484   0.0896060   0.1242909


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        NA                   NA                0.0364964   0.0142521   0.0587406
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.1193223   0.1131771   0.1254674
6 months    ki1000108-IRC       INDIA        NA                   NA                0.0763889   0.0456586   0.1071192
6 months    ki1148112-LCNI-5    MALAWI       NA                   NA                0.0728477   0.0488890   0.0968063
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0650316   0.0600684   0.0699948
24 months   ki1000108-IRC       INDIA        NA                   NA                0.1103448   0.0742216   0.1464680
24 months   ki1148112-LCNI-5    MALAWI       NA                   NA                0.0978593   0.0656058   0.1301129
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.1462014   0.1355059   0.1568969


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC       INDIA        2+                   1                 0.4421053   0.1311881   1.4898994
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 0.5452208   0.4333660   0.6859459
6 months    ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC       INDIA        2+                   1                 0.5512035   0.2456142   1.2370021
6 months    ki1148112-LCNI-5    MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5    MALAWI       2+                   1                 1.1054422   0.4429215   2.7589591
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 0.2486552   0.1634106   0.3783684
24 months   ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC       INDIA        2+                   1                 1.5813788   0.7095045   3.5246555
24 months   ki1148112-LCNI-5    MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5    MALAWI       2+                   1                 1.4842657   0.6470885   3.4045492
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 0.7487555   0.6270587   0.8940706


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.0230275   -0.0616129   0.0155580
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0000750   -0.0009318   0.0010817
6 months    ki1000108-IRC       INDIA        1                    NA                -0.0251445   -0.0682902   0.0180011
6 months    ki1148112-LCNI-5    MALAWI       1                    NA                 0.0010528   -0.0089042   0.0110099
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0005886   -0.0002571   0.0014343
24 months   ki1000108-IRC       INDIA        1                    NA                 0.0316931   -0.0184770   0.0818632
24 months   ki1148112-LCNI-5    MALAWI       1                    NA                 0.0059865   -0.0085053   0.0204784
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0033665    0.0009848   0.0057482


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.6309524   -2.0001346   0.1133712
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0006283   -0.0078456   0.0090308
6 months    ki1000108-IRC       INDIA        1                    NA                -0.3291649   -1.0161795   0.1237490
6 months    ki1148112-LCNI-5    MALAWI       1                    NA                 0.0144522   -0.1320826   0.1420198
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0090506   -0.0040503   0.0219805
24 months   ki1000108-IRC       INDIA        1                    NA                 0.2872191   -0.3337133   0.6190661
24 months   ki1148112-LCNI-5    MALAWI       1                    NA                 0.0611749   -0.0979484   0.1972369
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0230264    0.0066474   0.0391354
