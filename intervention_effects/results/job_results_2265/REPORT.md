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

* pers_wast
* agecat
* studyid
* country

## Data Summary

pers_wast   agecat        studyid                    country                        tr         ever_stunted   n_cell      n
----------  ------------  -------------------------  -----------------------------  --------  -------------  -------  -----
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0      140    625
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1       23    625
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      400    625
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       62    625
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0        2     15
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1        1     15
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0        9     15
1           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1        3     15
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      503   2181
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       40   2181
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      505   2181
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       35   2181
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0     1017   2181
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       81   2181
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0       14     53
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        0     53
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       14     53
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        1     53
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       22     53
1           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        2     53
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               0       90    235
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               1       28    235
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       93    235
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       24    235
1           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               0        0      6
1           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control               1        2      6
1           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 0        3      6
1           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                 1        1      6
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0      100    488
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       24    488
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      273    488
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       91    488
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0        1      9
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1        1      9
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0        4      9
1           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1        3      9
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      393   1805
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       63   1805
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      397   1805
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       50   1805
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      772   1805
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1      130   1805
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        9     42
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        1     42
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       10     42
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        2     42
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       19     42
1           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        1     42
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0       67    160
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1       14    160
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       58    160
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       21    160
1           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0        1      2
1           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1        1      2
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0      100    626
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       63    626
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      275    626
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1      188    626
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0        1     15
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1        2     15
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0        3     15
1           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1        9     15
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      424   2202
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1      124   2202
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      427   2202
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1      117   2202
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      839   2202
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1      271   2202
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        9     53
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        5     53
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       11     53
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        4     53
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0       21     53
1           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        3     53
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0       66    235
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1       52    235
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0       55    235
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1       62    235
1           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               0        0      6
1           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control               1        2      6
1           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 0        1      6
1           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                 1        3      6


The following strata were considered:

* pers_wast: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 0, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* pers_wast: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 0, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* pers_wast: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 0, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* pers_wast: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* pers_wast: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* pers_wast: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* pers_wast: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* pers_wast: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* pers_wast: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fc6719bd-2e7e-4294-8afc-f372a72e90d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc6719bd-2e7e-4294-8afc-f372a72e90d8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc6719bd-2e7e-4294-8afc-f372a72e90d8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc6719bd-2e7e-4294-8afc-f372a72e90d8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


pers_wast   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.3865031   0.3670227   0.4059834
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.4060475   0.3729363   0.4391588
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2262774   0.1912369   0.2613178
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2150735   0.1805389   0.2496082
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2441441   0.2188670   0.2694213
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.4406780   0.3956026   0.4857533
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.5299145   0.4847923   0.5750368
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1411043   0.1271551   0.1550535
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1341991   0.1112048   0.1571935
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0736648   0.0516882   0.0956415
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0648148   0.0440448   0.0855848
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0737705   0.0583056   0.0892354
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.2372881   0.1986634   0.2759129
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.2051282   0.1686225   0.2416339
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1935484   0.1758608   0.2112360
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2500000   0.2167857   0.2832143
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1381579   0.1064777   0.1698381
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1118568   0.0826296   0.1410840
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1441242   0.1211976   0.1670507
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.1728395   0.1310229   0.2146561
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.2658228   0.2175725   0.3140730


### Parameter: E(Y)


pers_wast   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4009585   0.3625359   0.4393810
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2325159   0.2148677   0.2501640
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4851064   0.4210714   0.5491414
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1360000   0.1091043   0.1628957
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0715268   0.0607090   0.0823446
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2212766   0.1680903   0.2744629
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2356557   0.1979622   0.2733493
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1346260   0.1188755   0.1503766
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2187500   0.1544933   0.2830067


### Parameter: RR


pers_wast   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.000000
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.0505674   0.9545322   1.156265
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9504862   0.7604391   1.188030
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0789596   0.8955823   1.299885
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.000000
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           1.2024984   1.0526503   1.373678
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.000000
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.9510634   0.7803660   1.159099
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8798611   0.5678956   1.363201
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0014344   0.6954547   1.442036
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.000000
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           0.8644689   0.6792137   1.100252
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.000000
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.2916667   1.0993079   1.517685
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8096303   0.5718849   1.146212
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0431845   0.7891480   1.378998
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.000000
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           1.5379747   1.1365617   2.081159


### Parameter: PAR


pers_wast   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0144554   -0.0186627   0.0475735
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0062385   -0.0242272   0.0367043
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.0444284   -0.0010545   0.0899113
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0051043   -0.0280998   0.0178913
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0021380   -0.0210987   0.0168227
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0160115   -0.0525753   0.0205522
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0421074    0.0088214   0.0753933
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0035319   -0.0308195   0.0237558
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.0459105   -0.0028778   0.0946988


### Parameter: PAF


pers_wast   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0           0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0360521   -0.0469689   0.1124899
0           0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0268305   -0.1134187   0.1494136
0           0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.0915849    0.0018267   0.1732718
0           0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0375316   -0.2287164   0.1239054
0           0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0298909   -0.3321751   0.2038019
0           0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0723598   -0.2655680   0.0913522
0           6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.1786816    0.0531888   0.2875413
0           6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0262346   -0.2503099   0.1576829
0           6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                 0.2098765    0.0068033   0.3714285
