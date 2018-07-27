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

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* anywast06
* agecat
* studyid
* country

## Data Summary

anywast06   agecat        studyid                    country                        tr         ever_stunted   n_cell      n
----------  ------------  -------------------------  -----------------------------  --------  -------------  -------  -----
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0      106    474
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1       14    474
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      308    474
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       46    474
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0       36    166
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1       10    166
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      101    166
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       19    166
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       64    329
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        3    329
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       87    329
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        5    329
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      150    329
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       20    329
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      453   1905
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       37   1905
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      432   1905
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       31   1905
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      889   1905
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       63   1905
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               0       90    235
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               1       28    235
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       93    235
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       24    235
1           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               0        0      6
1           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               1        2      6
1           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 0        3      6
1           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 1        1      6
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       80    374
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       18    374
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      210    374
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       66    374
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       21    123
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1        7    123
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       67    123
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       28    123
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       51    264
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        6    264
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       66    264
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       10    264
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      117    264
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       14    264
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      351   1583
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       58   1583
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      341   1583
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       42   1583
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      674   1583
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1      117   1583
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0       67    160
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1       14    160
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       58    160
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       21    160
1           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0        1      2
1           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1        1      2
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       78    475
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       42    475
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      215    475
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1      140    475
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       23    166
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       23    166
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       63    166
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       57    166
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       53    329
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       14    329
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       69    329
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       23    329
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      122    329
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       48    329
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      380   1926
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1      115   1926
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      369   1926
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       98   1926
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      738   1926
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1      226   1926
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0       66    235
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1       52    235
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       55    235
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       62    235
1           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0        0      6
1           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1        2      6
1           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0        1      6
1           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1        3      6


The following strata were considered:

* anywast06: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 0, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* anywast06: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 0, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* anywast06: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 0, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* anywast06: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* anywast06: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* anywast06: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* anywast06: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* anywast06: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* anywast06: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/89059598-1a7f-4c4c-83e0-2f28479a25a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/89059598-1a7f-4c4c-83e0-2f28479a25a4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/89059598-1a7f-4c4c-83e0-2f28479a25a4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/89059598-1a7f-4c4c-83e0-2f28479a25a4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


anywast06   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.3500000   0.3284179   0.3715821
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.3943662   0.3563314   0.4324010
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2323232   0.1951103   0.2695362
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2098501   0.1729088   0.2467914
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2344398   0.2076896   0.2611901
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.4406780   0.3956026   0.4857533
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.5299145   0.4847923   0.5750368
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1166667   0.1021102   0.1312231
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1299435   0.1037568   0.1561302
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0755102   0.0521101   0.0989103
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0669546   0.0441820   0.0897273
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0661765   0.0503812   0.0819718
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.2372881   0.1986634   0.2759129
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.2051282   0.1686225   0.2416339
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1836735   0.1635582   0.2037887
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2391304   0.2019440   0.2763169
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1418093   0.1079897   0.1756288
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1096606   0.0783574   0.1409638
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1479140   0.1231658   0.1726622
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.1728395   0.1310229   0.2146561
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.2658228   0.2175725   0.3140730
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.5000000   0.4598393   0.5401607
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.4750000   0.4102158   0.5397842
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2089552   0.1114565   0.3064539
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2500000   0.1613832   0.3386168
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2823529   0.2145831   0.3501228
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.2173913   0.1842611   0.2505215
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1583333   0.1109747   0.2056919
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.2500000   0.2133398   0.2866602
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2947368   0.2236367   0.3658369
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1052632   0.0254415   0.1850848
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1315789   0.0554370   0.2077209
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1068702   0.0538646   0.1598759


### Parameter: E(Y)


anywast06   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3831579   0.3393921   0.4269237
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2279335   0.2091938   0.2466733
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4851064   0.4210714   0.5491414
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1265823   0.0966172   0.1565473
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0687664   0.0573998   0.0801330
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2212766   0.1680903   0.2744629
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2245989   0.1822482   0.2669496
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1370815   0.1201335   0.1540295
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2187500   0.1544933   0.2830067
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4819277   0.4056861   0.5581694
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2583587   0.2109869   0.3057304
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1746988   0.1167616   0.2326360
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2845528   0.2044886   0.3646171
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1136364   0.0752802   0.1519925


### Parameter: RR


anywast06   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.000000
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.1267606   1.0048857   1.263417
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9032679   0.7119557   1.145988
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0091106   0.8289517   1.228424
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.000000
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           1.2024984   1.0526503   1.373678
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.000000
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.1138015   0.8787606   1.411708
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8866966   0.5596867   1.404770
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8763911   0.5926802   1.295912
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.000000
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           0.8644689   0.6792137   1.100252
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.000000
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.3019324   1.0764288   1.574677
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.7732961   0.5330918   1.121733
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0430490   0.7794426   1.395807
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.000000
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           1.5379747   1.1365617   2.081159
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.000000
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.9500000   0.8109287   1.112921
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1964286   0.6658897   2.149667
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.3512605   0.7995738   2.283598
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.000000
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.7283333   0.5206431   1.018873
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.000000
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.1789474   0.8889769   1.563502
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.2500000   0.4815519   3.244717
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0152672   0.4102648   2.512444


### Parameter: PAR


anywast06   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0331579   -0.0049165   0.0712323
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0043897   -0.0363923   0.0276129
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.0444284   -0.0010545   0.0899113
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0099156   -0.0162763   0.0361075
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0067438   -0.0266204   0.0131328
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0160115   -0.0525753   0.0205522
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0409255    0.0036567   0.0781942
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0047278   -0.0337100   0.0242544
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.0459105   -0.0028778   0.0946988
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0180723   -0.0828790   0.0467344
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0494034   -0.0393566   0.1381634
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0426925   -0.0902225   0.0048375
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0345528   -0.0366251   0.1057308
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0083732   -0.0629806   0.0797270


### Parameter: PAF


anywast06   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0865385   -0.0090397   0.1730633
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0192586   -0.1697878   0.1119003
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.0915849    0.0018267   0.1732718
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0783333   -0.1338001   0.2507767
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0980682   -0.4282300   0.1557705
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0723598   -0.2655680   0.0913522
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.1822157    0.0334541   0.3080814
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0344890   -0.2690319   0.1567057
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.2098765    0.0068033   0.3714285
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0375000   -0.1868724   0.0930733
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.1912204   -0.2356344   0.4706165
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.2443778   -0.6376157   0.0544325
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.1214286   -0.1289801   0.3162964
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0736842   -0.8237870   0.5295169
