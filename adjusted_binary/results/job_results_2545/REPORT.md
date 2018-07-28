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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
0-6 months    ki1000108-IRC              INDIA                          1                      0       76     410
0-6 months    ki1000108-IRC              INDIA                          1                      1       13     410
0-6 months    ki1000108-IRC              INDIA                          2                      0      104     410
0-6 months    ki1000108-IRC              INDIA                          2                      1       15     410
0-6 months    ki1000108-IRC              INDIA                          3+                     0      180     410
0-6 months    ki1000108-IRC              INDIA                          3+                     1       22     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      461     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                      0      161     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                      1       15     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                     0       12     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                     1        0     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      467     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       74     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                      0      180     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                      1       31     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+                     0        6     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+                     1        0     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1518    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      119    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      632    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       37    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                     0       75    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                     1        4    2385
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0       81     267
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1       41     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2                      0       78     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2                      1       44     267
0-6 months    ki1148112-LCNI-5           MALAWI                         3+                     0       13     267
0-6 months    ki1148112-LCNI-5           MALAWI                         3+                     1       10     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    11332   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     6031   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                      0     6601   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                      1     2540   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                     0      472   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                     1      167   27143
6-24 months   ki1000108-IRC              INDIA                          1                      0       61     339
6-24 months   ki1000108-IRC              INDIA                          1                      1       15     339
6-24 months   ki1000108-IRC              INDIA                          2                      0       74     339
6-24 months   ki1000108-IRC              INDIA                          2                      1       27     339
6-24 months   ki1000108-IRC              INDIA                          3+                     0      121     339
6-24 months   ki1000108-IRC              INDIA                          3+                     1       41     339
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      287     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       78     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                      0       83     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                      1       41     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                     0        8     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                     1        0     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      365     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       77     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                      0      135     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                      1       38     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+                     0        3     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+                     1        2     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1099    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      169    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      443    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       71    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                     0       51    1840
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                     1        7    1840
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      779    2637
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      119    2637
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                      0      908    2637
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                      1      156    2637
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                     0      548    2637
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                     1      127    2637
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      199     576
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1       87     576
6-24 months   ki1148112-LCNI-5           MALAWI                         2                      0      165     576
6-24 months   ki1148112-LCNI-5           MALAWI                         2                      1       80     576
6-24 months   ki1148112-LCNI-5           MALAWI                         3+                     0       34     576
6-24 months   ki1148112-LCNI-5           MALAWI                         3+                     1       11     576
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6998   13296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1586   13296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                      0     3455   13296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                      1      971   13296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                     0      224   13296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                     1       62   13296
0-24 months   ki1000108-IRC              INDIA                          1                      0       50     410
0-24 months   ki1000108-IRC              INDIA                          1                      1       39     410
0-24 months   ki1000108-IRC              INDIA                          2                      0       61     410
0-24 months   ki1000108-IRC              INDIA                          2                      1       58     410
0-24 months   ki1000108-IRC              INDIA                          3+                     0      104     410
0-24 months   ki1000108-IRC              INDIA                          3+                     1       98     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      327     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      185     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                      0      100     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                      1       76     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                     0       10     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                     1        2     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      342     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      199     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                      0      118     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                      1       93     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+                     0        4     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+                     1        2     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1266    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      371    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      519    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1      150    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                     0       61    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                     1       18    2385
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      744    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      329    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                      0      868    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                      1      404    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                     0      516    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                     1      327    3188
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      179     812
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1      212     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2                      0      140     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2                      1      218     812
0-24 months   ki1148112-LCNI-5           MALAWI                         3+                     0       29     812
0-24 months   ki1148112-LCNI-5           MALAWI                         3+                     1       34     812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     9418   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     7996   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                      0     5330   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                      1     3825   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                     0      385   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                     1      255   27209


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

* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ad4521f3-cc38-40bc-8042-1a7813281f93/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad4521f3-cc38-40bc-8042-1a7813281f93/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad4521f3-cc38-40bc-8042-1a7813281f93/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad4521f3-cc38-40bc-8042-1a7813281f93/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4228969   0.3319146   0.5138792
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.4579277   0.3767166   0.5391387
0-24 months   ki1000108-IRC              INDIA                          3+                   NA                0.4835556   0.4179064   0.5492047
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2307872   0.2109353   0.2506391
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2650142   0.2406981   0.2893302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1787664   0.1447736   0.2127592
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2832495   0.1775269   0.3889721
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3151514   0.2752478   0.3550549
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   NA                0.3791014   0.3427165   0.4154862
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5580859   0.5158888   0.6002830
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.5981511   0.5551712   0.6411310
0-24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.5523492   0.4847363   0.6199622
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4466064   0.4370436   0.4561693
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4376984   0.4213510   0.4540457
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3968277   0.3739685   0.4196869
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1509606   0.0862998   0.2156214
0-6 months    ki1000108-IRC              INDIA                          2                    NA                0.1213075   0.0694960   0.1731191
0-6 months    ki1000108-IRC              INDIA                          3+                   NA                0.1145379   0.0723627   0.1567130
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.4204474   0.3494961   0.4913986
0-6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.4282741   0.3567611   0.4997872
0-6 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                0.8854740   0.8059933   0.9649547
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3322992   0.3234029   0.3411954
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3152466   0.2988882   0.3316051
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2730287   0.2511140   0.2949435
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1763822   0.0977049   0.2550594
6-24 months   ki1000108-IRC              INDIA                          2                    NA                0.2539792   0.1749966   0.3329619
6-24 months   ki1000108-IRC              INDIA                          3+                   NA                0.2416164   0.1786604   0.3045725
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1346880   0.1167833   0.1525927
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1366684   0.1151823   0.1581544
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0382067   0.0195115   0.0569019
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1211336   0.0909487   0.1513186
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.1434812   0.1164155   0.1705469
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   NA                0.1804837   0.1400808   0.2208866
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.3498461   0.3009262   0.3987661
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3746792   0.3223189   0.4270396
6-24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.6108799   0.5329541   0.6888057
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1868301   0.1766405   0.1970198
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1959574   0.1810611   0.2108538
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1662219   0.1439503   0.1884935


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259958   0.2092071   0.2427845
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3324969   0.2814472   0.3835465
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5714286   0.5373697   0.6054874
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4438237   0.4363002   0.4513472
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1219512   0.0902381   0.1536643
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3219246   0.3151663   0.3286829
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2448378   0.1989973   0.2906782
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1342391   0.1186581   0.1498201
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1524460   0.1260328   0.1788591
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3090278   0.2712581   0.3467975
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1969765   0.1889146   0.2050384


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2                    1                 1.0828353   0.8197597   1.4303366
0-24 months   ki1000108-IRC              INDIA                          3+                   1                 1.1434361   0.8874063   1.4733344
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1483052   1.0137988   1.3006572
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.7745940   0.6292807   0.9534630
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.1126283   0.7699874   1.6077427
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   1                 1.3384009   0.9153422   1.9569915
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0717904   0.9724599   1.1812669
0-24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 0.9897208   0.8621673   1.1361452
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9800539   0.9404435   1.0213326
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8885400   0.8371085   0.9431314
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2                    1                 0.8035707   0.4391243   1.4704855
0-6 months    ki1000108-IRC              INDIA                          3+                   1                 0.7587267   0.4318681   1.3329679
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.0186154   0.8115006   1.2785909
0-6 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 2.1060282   1.7447977   2.5420452
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9486831   0.8965961   1.0037961
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8216353   0.7556795   0.8933478
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2                    1                 1.4399370   0.8367175   2.4780392
6-24 months   ki1000108-IRC              INDIA                          3+                   1                 1.3698460   0.8179776   2.2940459
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0147035   0.8274348   1.2443557
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.2836684   0.1709770   0.4706349
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.1844873   0.9084771   1.5443538
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   1                 1.4899556   1.1143949   1.9920835
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0709829   0.8852589   1.2956710
6-24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.7461388   1.4500579   2.1026752
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0488535   0.9617577   1.1438365
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8896955   0.7710224   1.0266342


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0527129   -0.0285093    0.1339351
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0047914   -0.0165107    0.0069279
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0492474   -0.0140059    0.1125006
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0133427   -0.0149012    0.0415866
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0027827   -0.0085184    0.0029529
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0290094   -0.0851361    0.0271173
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0646421   -0.1153900   -0.0138943
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0103746   -0.0157750   -0.0049741
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0684556   -0.0034468    0.1403579
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0004489   -0.0108942    0.0099965
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0313123    0.0083991    0.0542256
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0408184   -0.0744217   -0.0072150
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0101464    0.0032920    0.0170008


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1108322   -0.0767447    0.2657318
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0212013   -0.0745276    0.0294784
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1481138   -0.0861449    0.3318478
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0233497   -0.0272349    0.0714433
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0062699   -0.0192744    0.0065688
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2378771   -0.8007237    0.1490424
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1816784   -0.3413406   -0.0410211
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0322267   -0.0491126   -0.0156125
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.2795957   -0.0770543    0.5181465
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0033437   -0.0842934    0.0715625
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2053996    0.0459988    0.3381666
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1320864   -0.2486540   -0.0264009
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0515107    0.0161616    0.0855897
