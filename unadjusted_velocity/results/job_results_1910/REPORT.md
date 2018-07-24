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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                    country                        nchldlt5    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              467     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2              158     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+               9     634
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              421     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2              145     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+               8     574
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              399     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2              138     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+               8     545
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              331     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2              121     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               6     458
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              511     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2              203     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+               6     720
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              492     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2              198     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+               5     695
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              474     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              198     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+               4     676
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              341     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              151     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+               3     495
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            12472   20027
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2             7095   20027
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+             460   20027
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             8102   12571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2             4211   12571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+             258   12571
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             6298    9831
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2             3328    9831
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+             205    9831
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             2907    4647
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             1627    4647
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+             113    4647
12-24 months   ki1000107-Serrinha-VitA    BRAZIL                         1                7      13
12-24 months   ki1000107-Serrinha-VitA    BRAZIL                         2                1      13
12-24 months   ki1000107-Serrinha-VitA    BRAZIL                         3+               5      13
3-6 months     ki1000108-IRC              INDIA                          1               87     397
3-6 months     ki1000108-IRC              INDIA                          2              114     397
3-6 months     ki1000108-IRC              INDIA                          3+             196     397
6-12 months    ki1000108-IRC              INDIA                          1               88     400
6-12 months    ki1000108-IRC              INDIA                          2              116     400
6-12 months    ki1000108-IRC              INDIA                          3+             196     400
12-24 months   ki1000108-IRC              INDIA                          1               86     396
12-24 months   ki1000108-IRC              INDIA                          2              116     396
12-24 months   ki1000108-IRC              INDIA                          3+             194     396
0-3 months     ki1000108-IRC              INDIA                          1               82     377
0-3 months     ki1000108-IRC              INDIA                          2              109     377
0-3 months     ki1000108-IRC              INDIA                          3+             186     377
6-12 months    ki1148112-LCNI-5           MALAWI                         1              205     428
6-12 months    ki1148112-LCNI-5           MALAWI                         2              195     428
6-12 months    ki1148112-LCNI-5           MALAWI                         3+              28     428
12-24 months   ki1148112-LCNI-5           MALAWI                         1              152     306
12-24 months   ki1148112-LCNI-5           MALAWI                         2              135     306
12-24 months   ki1148112-LCNI-5           MALAWI                         3+              19     306
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1              468    1013
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         2              463    1013
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         3+              82    1013
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1              221     480
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2              224     480
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         3+              35     480
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                2      14
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2                9      14
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         3+               3      14
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                2      16
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2               13      16
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         3+               1      16
3-6 months     ki1148112-iLiNS-DYAD-M     MALAWI                         2                1       2
3-6 months     ki1148112-iLiNS-DYAD-M     MALAWI                         3+               1       2
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1145    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              461    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              49    1655
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              769    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              279    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              29    1077
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1       2


The following strata were considered:

* diffcat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* diffcat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c74d2de5-66ef-4533-9e17-64ea7925fe8a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c74d2de5-66ef-4533-9e17-64ea7925fe8a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2641160   -0.3997300   -0.1285020
0-3 months     ki1000108-IRC              INDIA                          2                    NA                -0.2971800   -0.3955571   -0.1988028
0-3 months     ki1000108-IRC              INDIA                          3+                   NA                -0.2353764   -0.3124153   -0.1583375
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0354425   -0.0565857   -0.0142994
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0546259   -0.0908762   -0.0183756
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.1123006   -0.2613547    0.0367536
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1111297   -0.1331055   -0.0891540
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.1510585   -0.1836995   -0.1184175
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   NA                -0.0744920   -0.2086389    0.0596549
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0830089    0.0771722    0.0888457
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0508623    0.0432827    0.0584420
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                 0.0364016    0.0099359    0.0628673
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0477002   -0.1144155    0.0190151
3-6 months     ki1000108-IRC              INDIA                          2                    NA                -0.0351608   -0.0875119    0.0171902
3-6 months     ki1000108-IRC              INDIA                          3+                   NA                -0.0634836   -0.1071331   -0.0198341
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0141139   -0.0336013    0.0053735
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0655108   -0.0962880   -0.0347337
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0245420   -0.1407561    0.0916720
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0351356    0.0155221    0.0547491
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0096440   -0.0232636    0.0425517
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   NA                -0.1176585   -0.2120437   -0.0232734
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0849462   -0.1053945   -0.0644979
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0975053   -0.1270931   -0.0679175
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0115521   -0.0799479    0.1030521
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0069463    0.0010922    0.0128003
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0206328   -0.0284671   -0.0127985
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0483401   -0.0772300   -0.0194503
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0207662   -0.0532856    0.0117531
6-12 months    ki1000108-IRC              INDIA                          2                    NA                -0.0070400   -0.0304006    0.0163205
6-12 months    ki1000108-IRC              INDIA                          3+                   NA                -0.0396019   -0.0563469   -0.0228569
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0575360   -0.0657047   -0.0493674
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0775240   -0.0910851   -0.0639628
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0587582   -0.0810157   -0.0365007
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0634676   -0.0741955   -0.0527397
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0444780   -0.0632095   -0.0257466
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.1008507   -0.1568939   -0.0448075
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                -0.0254660   -0.0360463   -0.0148857
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         2                    NA                -0.0487261   -0.0587151   -0.0387372
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         3+                   NA                -0.0410082   -0.0636107   -0.0184056
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0062329   -0.0225532    0.0100874
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    NA                -0.0045622   -0.0208342    0.0117099
6-12 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                -0.0147704   -0.0468983    0.0173574
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0669255   -0.0703920   -0.0634591
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0884249   -0.0926389   -0.0842108
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0971355   -0.1139326   -0.0803384
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0175297   -0.0347781   -0.0002812
12-24 months   ki1000108-IRC              INDIA                          2                    NA                -0.0294925   -0.0398851   -0.0191000
12-24 months   ki1000108-IRC              INDIA                          3+                   NA                -0.0394418   -0.0498341   -0.0290495
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0059797   -0.0106091   -0.0013502
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0142175   -0.0211331   -0.0073018
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0071792   -0.0329060    0.0185477
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                -0.0308203   -0.0377888   -0.0238518
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2                    NA                -0.0310215   -0.0383679   -0.0236750
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         3+                   NA                -0.0187522   -0.0328014   -0.0047031
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0193914   -0.0277237   -0.0110591
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -0.0133266   -0.0221463   -0.0045069
12-24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                -0.0102846   -0.0303384    0.0097692
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0164757   -0.0189041   -0.0140472
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0223526   -0.0250558   -0.0196495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0261935   -0.0352375   -0.0171495


### Parameter: E(Y)


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705498    0.0655945    0.0755050
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855875   -0.1022050   -0.0689699
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034268   -0.0082920    0.0014385
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0595549   -0.0687696   -0.0503402
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                -0.0373553   -0.0443239   -0.0303868
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0060302   -0.0170093    0.0049488
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748335   -0.0776775   -0.0719894
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                -0.0300342   -0.0348485   -0.0252199
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0161503   -0.0219777   -0.0103229
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187696   -0.0206191   -0.0169201


### Parameter: ATE


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0330640   -0.2006027    0.1344747
0-3 months     ki1000108-IRC              INDIA                          3+                   1                  0.0287396   -0.1272288    0.1847080
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0191833   -0.0611490    0.0227823
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0768580   -0.2274043    0.0736882
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0399288   -0.0792781   -0.0005794
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   1                  0.0366377   -0.0992973    0.1725727
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0321466   -0.0410621   -0.0232311
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0466073   -0.0732033   -0.0200113
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0125394   -0.0722637    0.0973425
3-6 months     ki1000108-IRC              INDIA                          3+                   1                 -0.0157834   -0.0955092    0.0639425
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0513969   -0.0878248   -0.0149690
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0104281   -0.1282648    0.1074085
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0254916   -0.0638009    0.0128177
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   1                 -0.1527942   -0.2491956   -0.0563927
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0125591   -0.0485253    0.0234071
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0964983    0.0027412    0.1902554
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0275790   -0.0367871   -0.0183710
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0552864   -0.0851035   -0.0254693
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0137262   -0.0263141    0.0537665
6-12 months    ki1000108-IRC              INDIA                          3+                   1                 -0.0188357   -0.0554130    0.0177417
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0199879   -0.0358192   -0.0041566
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0012222   -0.0249313    0.0224870
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0189896   -0.0025964    0.0405756
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0373831   -0.0944439    0.0196777
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         2                    1                 -0.0232601   -0.0378108   -0.0087095
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         3+                   1                 -0.0155422   -0.0404985    0.0094142
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.0016708   -0.0213755    0.0247170
6-12 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 -0.0085375   -0.0445729    0.0274979
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0214993   -0.0265977   -0.0164010
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0302100   -0.0473692   -0.0130508
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                 -0.0119629   -0.0321003    0.0081746
12-24 months   ki1000108-IRC              INDIA                          3+                   1                 -0.0219121   -0.0420494   -0.0017749
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0082378   -0.0165599    0.0000843
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0011995   -0.0273395    0.0249405
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2                    1                 -0.0002012   -0.0103269    0.0099246
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         3+                   1                  0.0120681   -0.0036144    0.0277505
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.0060648   -0.0060684    0.0181980
12-24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                  0.0091068   -0.0126092    0.0308227
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0058770   -0.0094445   -0.0023094
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0097178   -0.0190919   -0.0003437
