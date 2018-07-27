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

**Outcome Variable:** stunted

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

anywast06   agecat      studyid                    country                        tr         stunted   n_cell      n
----------  ----------  -------------------------  -----------------------------  --------  --------  -------  -----
0           6 months    ki1017093b-PROVIDE         BANGLADESH                     Control          0        5     29
0           6 months    ki1017093b-PROVIDE         BANGLADESH                     Control          1        2     29
0           6 months    ki1017093b-PROVIDE         BANGLADESH                     Other            0       19     29
0           6 months    ki1017093b-PROVIDE         BANGLADESH                     Other            1        3     29
1           6 months    ki1017093b-PROVIDE         BANGLADESH                     Control          0        3     17
1           6 months    ki1017093b-PROVIDE         BANGLADESH                     Control          1        0     17
1           6 months    ki1017093b-PROVIDE         BANGLADESH                     Other            0        9     17
1           6 months    ki1017093b-PROVIDE         BANGLADESH                     Other            1        5     17
0           24 months   ki1017093b-PROVIDE         BANGLADESH                     Other            0        1      1
1           24 months   ki1017093b-PROVIDE         BANGLADESH                     Other            0        1      1
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          0       43    251
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          1        8    251
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            0       62    251
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            1       10    251
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             0      107    251
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             1       21    251
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          0      335   1456
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          1       39   1456
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            0      317   1456
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            1       35   1456
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             0      657   1456
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             1       73   1456
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          0        1      3
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          1        0      3
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            0        1      3
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            1        0      3
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             0        0      3
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             1        1      3
1           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            0        1      1
0           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control          0       66    195
0           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control          1       31    195
0           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other            0       71    195
0           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other            1       27    195
1           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control          0        0      6
1           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control          1        2      6
1           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other            0        2      6
1           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other            1        2      6


The following strata were considered:

* anywast06: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 0, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* anywast06: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* anywast06: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* anywast06: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 1, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* anywast06: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d300b554-5b5d-4a56-9628-8b3d33182ecc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d300b554-5b5d-4a56-9628-8b3d33182ecc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d300b554-5b5d-4a56-9628-8b3d33182ecc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d300b554-5b5d-4a56-9628-8b3d33182ecc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


anywast06   agecat     studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1042781   0.0732936   0.1352626
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0994318   0.0681604   0.1307032
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1000000   0.0782301   0.1217699
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.3195876   0.2733073   0.3658680
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.2755102   0.2309417   0.3200787
1           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1568627   0.0568538   0.2568717
1           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1388889   0.0588480   0.2189298
1           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1640625   0.0997787   0.2283463


### Parameter: E(Y)


anywast06   agecat     studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1009615   0.0854811   0.1164420
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2974359   0.2331098   0.3617619
1           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1553785   0.1104725   0.2002845


### Parameter: RR


anywast06   agecat     studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9535257   0.6186263   1.469726
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9589744   0.6634908   1.386051
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.000000
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           0.8620803   0.6938338   1.071125
1           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
1           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8854167   0.3748939   2.091159
1           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0458984   0.4948705   2.210485


### Parameter: PAR


anywast06   agecat     studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0033165   -0.0298962   0.0232631
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0221517   -0.0668280   0.0225245
1           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0014843   -0.0906687   0.0877002


### Parameter: PAF


anywast06   agecat     studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0328495   -0.3326608   0.1995127
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0744756   -0.2491010   0.0757370
1           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0095525   -0.7825663   0.4282421
