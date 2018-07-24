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

**Outcome Variable:** y_rate_lencm

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
![](/tmp/ced2bf8e-9886-46cb-a219-8dad5ae082c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ced2bf8e-9886-46cb-a219-8dad5ae082c1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1624604   2.8916221   3.4332988
0-3 months     ki1000108-IRC              INDIA                          2                    NA                3.1014800   2.9038654   3.2990946
0-3 months     ki1000108-IRC              INDIA                          3+                   NA                3.2193974   3.0653555   3.3734392
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4953761   3.4488394   3.5419128
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.4476510   3.3742857   3.5210164
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                3.4381842   3.0983356   3.7780327
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3215718   3.2751546   3.3679891
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                3.2521544   3.1849412   3.3193676
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   NA                3.4254477   3.0746720   3.7762234
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.7370734   3.7248869   3.7492598
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.6890005   3.6733405   3.7046605
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                3.6686748   3.6165559   3.7207937
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8874100   1.7469248   2.0278952
3-6 months     ki1000108-IRC              INDIA                          2                    NA                1.9139784   1.8016289   2.0263278
3-6 months     ki1000108-IRC              INDIA                          3+                   NA                1.8583128   1.7660241   1.9506015
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9955268   1.9544752   2.0365783
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.8763128   1.8087740   1.9438515
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.9979433   1.7300619   2.2658248
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.0255186   1.9832633   2.0677739
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                1.9650444   1.8931105   2.0369784
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   NA                1.6790308   1.4291721   1.9288894
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7948652   1.7508397   1.8388908
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7651754   1.7013371   1.8290138
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                2.0236165   1.8241147   2.2231184
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9410703   1.9284568   1.9536838
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.8859467   1.8692139   1.9026795
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.8252080   1.7640607   1.8863553
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2585574   1.1853263   1.3317885
6-12 months    ki1000108-IRC              INDIA                          2                    NA                1.2909348   1.2380549   1.3438147
6-12 months    ki1000108-IRC              INDIA                          3+                   NA                1.2190063   1.1807894   1.2572231
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1864243   1.1661725   1.2066760
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.1339721   1.0997455   1.1681986
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.1886993   1.1209334   1.2564652
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1889549   1.1637398   1.2141700
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.2282997   1.1844146   1.2721847
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.0969297   0.9689871   1.2248723
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                1.2537113   1.2283690   1.2790535
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         2                    NA                1.1963603   1.1722715   1.2204492
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         3+                   NA                1.1996996   1.1472465   1.2521527
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.2836292   1.2447875   1.3224709
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    NA                1.2806779   1.2416898   1.3196660
6-12 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                1.2620090   1.1872631   1.3367550
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1261971   1.1180975   1.1342966
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.0740639   1.0640592   1.0840686
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.0514887   1.0117745   1.0912028
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8751557   0.8284150   0.9218964
12-24 months   ki1000108-IRC              INDIA                          2                    NA                0.8390723   0.8078270   0.8703176
12-24 months   ki1000108-IRC              INDIA                          3+                   NA                0.8035085   0.7756906   0.8313263
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8657367   0.8512427   0.8802307
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8346817   0.8132887   0.8560746
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.8672424   0.8084526   0.9260322
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.8085281   0.7874432   0.8296129
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2                    NA                0.8069138   0.7873199   0.8265076
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         3+                   NA                0.8080876   0.7669219   0.8492534
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8364357   0.8119534   0.8609181
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.8424221   0.8171444   0.8676999
12-24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.8592054   0.7974058   0.9210049
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8054683   0.7986825   0.8122540
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.7833817   0.7753633   0.7914002
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.7652827   0.7345047   0.7960607


### Parameter: E(Y)


diffcat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184715   3.7081256   3.7288173
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933678   1.7575489   1.8291867
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9202273   1.9097659   1.9306887
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1966694   1.1750524   1.2182863
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                1.2231264   1.2064119   1.2398410
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2808702   1.2546824   1.3070579
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069910   1.1002444   1.1137377
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.8077426   0.7940727   0.8214125
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8404906   0.8235383   0.8574429
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7967582   0.7914423   0.8020741


### Parameter: ATE


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0609804   -0.3962489    0.2742880
0-3 months     ki1000108-IRC              INDIA                          3+                   1                  0.0569369   -0.2546434    0.3685173
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0477251   -0.1346051    0.0391550
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0571919   -0.4002119    0.2858281
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0694174   -0.1511009    0.0122660
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   1                  0.1038758   -0.2499577    0.4577093
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0480729   -0.0663417   -0.0298040
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0683985   -0.1204458   -0.0163513
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0265683   -0.1533163    0.2064530
3-6 months     ki1000108-IRC              INDIA                          3+                   1                 -0.0290972   -0.1971844    0.1389899
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.1192140   -0.1982502   -0.0401779
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0024166   -0.2685921    0.2734253
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0604742   -0.1439008    0.0229525
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   1                 -0.3464878   -0.5998943   -0.0930813
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0296898   -0.1072370    0.0478575
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.2287513    0.0244495    0.4330532
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0551236   -0.0748191   -0.0354282
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1158623   -0.1791670   -0.0525577
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0323774   -0.0579502    0.1227050
6-12 months    ki1000108-IRC              INDIA                          3+                   1                 -0.0395512   -0.1221545    0.0430522
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0524522   -0.0922214   -0.0126830
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0022750   -0.0684523    0.0730023
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0393447   -0.0112685    0.0899580
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0920252   -0.2224289    0.0383784
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         2                    1                 -0.0573509   -0.0923152   -0.0223867
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         3+                   1                 -0.0540117   -0.1122660    0.0042425
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    1                 -0.0029513   -0.0579853    0.0520828
6-12 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 -0.0216201   -0.1058557    0.0626154
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0521332   -0.0640442   -0.0402221
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0747084   -0.1151980   -0.0342189
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                 -0.0360834   -0.0923058    0.0201391
12-24 months   ki1000108-IRC              INDIA                          3+                   1                 -0.0716472   -0.1260396   -0.0172549
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0310550   -0.0568956   -0.0052145
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0015057   -0.0590444    0.0620559
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2                    1                 -0.0016143   -0.0303978    0.0271692
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         3+                   1                 -0.0004404   -0.0466918    0.0458110
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.0059864   -0.0292038    0.0411766
12-24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                  0.0227696   -0.0437027    0.0892420
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0220865   -0.0323777   -0.0117953
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0401856   -0.0716660   -0.0087051
