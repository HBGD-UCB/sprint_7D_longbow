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

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country                        nchldlt5    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              467     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2              158     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+               9     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              511     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2              203     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+               6     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            12472   20027
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2             7095   20027
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+             460   20027
0-3 months     ki1000108-IRC              INDIA                          1               82     377
0-3 months     ki1000108-IRC              INDIA                          2              109     377
0-3 months     ki1000108-IRC              INDIA                          3+             186     377
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              421     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2              145     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+               8     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              492     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2              198     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+               5     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             8102   12571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2             4211   12571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+             258   12571
3-6 months     ki1000108-IRC              INDIA                          1               87     397
3-6 months     ki1000108-IRC              INDIA                          2              114     397
3-6 months     ki1000108-IRC              INDIA                          3+             196     397
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1145    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              461    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              49    1655
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              399     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2              138     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+               8     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              474     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              198     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+               4     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             6298    9831
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2             3328    9831
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+             205    9831
6-12 months    ki1000108-IRC              INDIA                          1               88     400
6-12 months    ki1000108-IRC              INDIA                          2              116     400
6-12 months    ki1000108-IRC              INDIA                          3+             196     400
6-12 months    ki1148112-LCNI-5           MALAWI                         1              205     428
6-12 months    ki1148112-LCNI-5           MALAWI                         2              195     428
6-12 months    ki1148112-LCNI-5           MALAWI                         3+              28     428
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              769    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              279    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              29    1077
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              331     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2              121     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               6     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              341     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              151     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+               3     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             2907    4647
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             1627    4647
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+             113    4647
12-24 months   ki1000108-IRC              INDIA                          1               86     396
12-24 months   ki1000108-IRC              INDIA                          2              116     396
12-24 months   ki1000108-IRC              INDIA                          3+             194     396
12-24 months   ki1148112-LCNI-5           MALAWI                         1              152     306
12-24 months   ki1148112-LCNI-5           MALAWI                         2              135     306
12-24 months   ki1148112-LCNI-5           MALAWI                         3+              19     306
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1       2


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ef553261-ced8-4714-b296-397174ac4282/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ef553261-ced8-4714-b296-397174ac4282/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2882680   -0.4016703   -0.1748656
0-3 months     ki1000108-IRC              INDIA                          2                    NA                -0.3189885   -0.3997661   -0.2382109
0-3 months     ki1000108-IRC              INDIA                          3+                   NA                -0.2404684   -0.3070378   -0.1738990
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0350127   -0.0545264   -0.0154989
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1756980   -0.1957877   -0.1556083
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.0727694   -1.0862638   -1.0592750
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1096504   -0.1297437   -0.0895571
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.1618556   -0.1851229   -0.1385882
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   NA                -0.0802192   -0.1019755   -0.0584628
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0808043    0.0746813    0.0869272
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0416749    0.0303656    0.0529842
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                 0.0167522    0.0031076    0.0303969
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0275627   -0.0788821    0.0237568
3-6 months     ki1000108-IRC              INDIA                          2                    NA                -0.0220814   -0.0657479    0.0215852
3-6 months     ki1000108-IRC              INDIA                          3+                   NA                -0.0637521   -0.1032288   -0.0242753
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0093077   -0.0082311    0.0268464
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0974179    0.0779345    0.1169013
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                 0.5862909    0.5765055    0.5960763
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0325579    0.0143658    0.0507500
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0187590   -0.0429817    0.0054638
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   NA                -0.2705709   -0.2851579   -0.2559838
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0843613   -0.1038874   -0.0648351
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0920679   -0.1125088   -0.0716271
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.1136148    0.0867931    0.1404365
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0026111   -0.0035936    0.0088158
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0089298   -0.0198927    0.0020330
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0528563   -0.0666298   -0.0390827
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0208320   -0.0490997    0.0074356
6-12 months    ki1000108-IRC              INDIA                          2                    NA                -0.0077730   -0.0283064    0.0127603
6-12 months    ki1000108-IRC              INDIA                          3+                   NA                -0.0329693   -0.0481725   -0.0177661
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0582619   -0.0658377   -0.0506861
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1217656   -0.1300289   -0.1135022
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.1880491   -0.1929154   -0.1831829
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0673419   -0.0772865   -0.0573972
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0623492   -0.0735849   -0.0511135
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.3466530   -0.3574641   -0.3358420
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0007436   -0.0149472    0.0134600
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    NA                 0.0015174   -0.0130190    0.0160538
6-12 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                 0.0421536    0.0211207    0.0631864
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0686188   -0.0721610   -0.0650767
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0884533   -0.0944867   -0.0824199
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0759174   -0.0809314   -0.0709034
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0184376   -0.0336487   -0.0032265
12-24 months   ki1000108-IRC              INDIA                          2                    NA                -0.0301460   -0.0386469   -0.0216450
12-24 months   ki1000108-IRC              INDIA                          3+                   NA                -0.0381198   -0.0473244   -0.0289153
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0114786   -0.0156361   -0.0073210
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0589264   -0.0640869   -0.0537658
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.1276514   -0.1294502   -0.1258526
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0193857   -0.0277090   -0.0110624
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -0.0133356   -0.0221447   -0.0045266
12-24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                -0.0102907   -0.0303021    0.0097206
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0173680   -0.0196569   -0.0150791
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0266411   -0.0296450   -0.0236372
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0709098   -0.0729565   -0.0688631


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
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
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0060302   -0.0170093    0.0049488
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748335   -0.0776775   -0.0719894
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0161503   -0.0219777   -0.0103229
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187696   -0.0206191   -0.0169201


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0307205   -0.1687565    0.1073154
0-3 months     ki1000108-IRC              INDIA                          3+                   1                  0.0477996   -0.0817127    0.1773119
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.1406853   -0.1687807   -0.1125900
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -1.0377567   -1.0617274   -1.0137861
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0522052   -0.0816998   -0.0227105
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   1                  0.0294312    0.0010061    0.0578564
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0391293   -0.0516562   -0.0266025
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0640520   -0.0787030   -0.0494010
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0054813   -0.0613550    0.0723176
3-6 months     ki1000108-IRC              INDIA                          3+                   1                 -0.0361894   -0.1001511    0.0277723
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0881103    0.0616916    0.1145289
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.5769833    0.5557839    0.5981827
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0513169   -0.0803611   -0.0222727
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3+                   1                 -0.3031288   -0.3256520   -0.2806056
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0077067   -0.0353138    0.0199005
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.1979761    0.1652914    0.2306608
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0115409   -0.0238203    0.0007384
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0554674   -0.0710489   -0.0398858
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0130590   -0.0215517    0.0476696
6-12 months    ki1000108-IRC              INDIA                          3+                   1                 -0.0121373   -0.0436818    0.0194072
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0635036   -0.0747584   -0.0522488
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.1297872   -0.1389657   -0.1206087
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0049926   -0.0095083    0.0194936
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.2793112   -0.2935998   -0.2650225
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.0022610   -0.0165605    0.0210824
6-12 months    ki1148112-LCNI-5           MALAWI                         3+                   1                  0.0428971    0.0185982    0.0671960
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0198345   -0.0265609   -0.0131080
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0072986   -0.0134546   -0.0011425
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                 -0.0117084   -0.0289594    0.0055427
12-24 months   ki1000108-IRC              INDIA                          3+                   1                 -0.0196822   -0.0372227   -0.0021417
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0474478   -0.0544296   -0.0404659
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.1161728   -0.1208368   -0.1115089
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.0060501   -0.0060599    0.0181600
12-24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                  0.0090949   -0.0125740    0.0307639
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0092732   -0.0130074   -0.0055389
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0535418   -0.0567001   -0.0503835
