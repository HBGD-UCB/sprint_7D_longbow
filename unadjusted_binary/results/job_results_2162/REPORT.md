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
      W: []
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

unadjusted

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
![](/tmp/e50f1824-ed93-4e50-8652-aa1fdf85f06b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e50f1824-ed93-4e50-8652-aa1fdf85f06b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e50f1824-ed93-4e50-8652-aa1fdf85f06b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e50f1824-ed93-4e50-8652-aa1fdf85f06b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4382022   0.3349949   0.5414096
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.4873950   0.3974790   0.5773109
0-24 months   ki1000108-IRC              INDIA                          3+                   NA                0.4851485   0.4161434   0.5541536
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2266341   0.2063493   0.2469189
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2242152   0.1926049   0.2558256
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2278481   0.1353358   0.3203604
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3066170   0.1809873   0.4322466
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3176101   0.2726858   0.3625343
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   NA                0.3879004   0.3466521   0.4291487
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5421995   0.4927861   0.5916129
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.6089385   0.5583580   0.6595191
0-24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.5396825   0.4165300   0.6628351
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4591708   0.4500647   0.4682768
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4178045   0.4066484   0.4289606
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3984375   0.3610625   0.4358125
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1460674   0.0726039   0.2195310
0-6 months    ki1000108-IRC              INDIA                          2                    NA                0.1260504   0.0663441   0.1857567
0-6 months    ki1000108-IRC              INDIA                          3+                   NA                0.1089109   0.0658980   0.1519238
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3360656   0.2520891   0.4200420
0-6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3606557   0.2752874   0.4460241
0-6 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                0.4347826   0.2318075   0.6377577
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3473478   0.3389751   0.3557205
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2778689   0.2682671   0.2874708
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2613459   0.2260520   0.2966397
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1973684   0.1077536   0.2869832
6-24 months   ki1000108-IRC              INDIA                          2                    NA                0.2673267   0.1808886   0.3537648
6-24 months   ki1000108-IRC              INDIA                          3+                   NA                0.2530864   0.1860360   0.3201369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1332808   0.1145684   0.1519932
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1381323   0.1082955   0.1679691
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1206897   0.0368290   0.2045503
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1325167   0.0987802   0.1662532
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.1466165   0.1165306   0.1767025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   NA                0.1881481   0.1421128   0.2341835
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.3041958   0.2508301   0.3575615
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3265306   0.2677596   0.3853016
6-24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.2444444   0.1187713   0.3701176
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1847623   0.1755855   0.1939392
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2193854   0.2057185   0.2330524
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2167832   0.1686127   0.2649537


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
0-24 months   ki1000108-IRC              INDIA                          2                    1                 1.1122603   0.8246628   1.5001562
0-24 months   ki1000108-IRC              INDIA                          3+                   1                 1.1071338   0.8408294   1.4577811
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9893271   0.8371732   1.1691346
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0053567   0.6633635   1.5236625
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.0358529   0.6899387   1.5551978
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   1                 1.2650975   0.8360457   1.9143351
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.1230895   0.9928002   1.2704771
0-24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 0.9953579   0.7785105   1.2726063
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9099109   0.8824776   0.9381969
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8677327   0.7900078   0.9531045
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2                    1                 0.8629606   0.4324598   1.7220119
0-6 months    ki1000108-IRC              INDIA                          3+                   1                 0.7456207   0.3933672   1.4133112
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.0731707   0.7606548   1.5140842
0-6 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 1.2937434   0.7618756   2.1969097
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7999732   0.7693037   0.8318655
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7524039   0.6567838   0.8619452
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2                    1                 1.3544554   0.7756806   2.3650837
6-24 months   ki1000108-IRC              INDIA                          3+                   1                 1.2823045   0.7580321   2.1691759
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0364009   0.8010221   1.3409453
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9055295   0.4456938   1.8397917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.1064005   0.8337556   1.4682024
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   1                 1.4198070   1.0456949   1.9277630
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0734225   0.8348633   1.3801491
6-24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 0.8035760   0.4667748   1.3833958
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1873926   1.1014889   1.2799958
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1733084   0.9361025   1.4706217


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0374075   -0.0540793    0.1288943
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006383   -0.0119734    0.0106969
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0258799   -0.0577785    0.1095383
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0292291   -0.0061293    0.0645875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0153470   -0.0199647   -0.0107294
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0241162   -0.0878310    0.0395986
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0197397   -0.0428511    0.0823304
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0254232   -0.0295935   -0.0212529
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0474693   -0.0333473    0.1282860
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0009584   -0.0095449    0.0114616
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0199293   -0.0045030    0.0443615
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0048320   -0.0331986    0.0428626
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0122142    0.0068203    0.0176081


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0786517   -0.1353962    0.2523467
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0028243   -0.0542560    0.0460983
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0778350   -0.2230249    0.3046844
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0511509   -0.0129111    0.1111612
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0345791   -0.0450100   -0.0242524
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1977528   -0.8500931    0.2245732
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0554789   -0.1378937    0.2159899
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0789725   -0.0919024   -0.0661957
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1938808   -0.2125962    0.4641018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0071393   -0.0742659    0.0823759
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1307300   -0.0438836    0.2761354
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0156360   -0.1154509    0.1313177
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0620083    0.0343975    0.0888297
