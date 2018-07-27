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

* pers_wast
* agecat
* studyid
* country

## Data Summary

pers_wast   agecat      studyid                    country                        tr         stunted   n_cell      n
----------  ----------  -------------------------  -----------------------------  --------  --------  -------  -----
0           6 months    ki1017093b-PROVIDE         BANGLADESH                     Control          0        8     46
0           6 months    ki1017093b-PROVIDE         BANGLADESH                     Control          1        2     46
0           6 months    ki1017093b-PROVIDE         BANGLADESH                     Other            0       28     46
0           6 months    ki1017093b-PROVIDE         BANGLADESH                     Other            1        8     46
0           24 months   ki1017093b-PROVIDE         BANGLADESH                     Other            0        2      2
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          0      372   1663
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          1       43   1663
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            0      368   1663
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            1       43   1663
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             0      746   1663
0           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             1       91   1663
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          0        6     44
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          1        4     44
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            0       11     44
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            1        2     44
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             0       18     44
1           6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             1        3     44
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          0        1      4
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control          1        0      4
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            0        2      4
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other            1        0      4
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             0        0      4
0           24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc             1        1      4
0           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control          0       66    195
0           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control          1       31    195
0           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other            0       71    195
0           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other            1       27    195
1           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control          0        0      6
1           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control          1        2      6
1           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other            0        2      6
1           6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other            1        2      6


The following strata were considered:

* pers_wast: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 0, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* pers_wast: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* pers_wast: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* pers_wast: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* pers_wast: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2ff5986f-45fc-4ff6-a15d-c6e279b077a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2ff5986f-45fc-4ff6-a15d-c6e279b077a9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2ff5986f-45fc-4ff6-a15d-c6e279b077a9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2ff5986f-45fc-4ff6-a15d-c6e279b077a9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


pers_wast   agecat     studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1036145   0.0742844   0.1329445
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1046229   0.0750241   0.1342217
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1087216   0.0876266   0.1298167
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.3195876   0.2733073   0.3658680
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.2755102   0.2309417   0.3200787


### Parameter: E(Y)


pers_wast   agecat     studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1064342   0.0916077   0.1212606
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2974359   0.2331098   0.3617619


### Parameter: RR


pers_wast   agecat     studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.000000
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0097324   0.6767037   1.506656
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0492901   0.7444798   1.478898
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.000000
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           0.8620803   0.6938338   1.071125


### Parameter: PAR


pers_wast   agecat     studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0028197   -0.0226896   0.0283290
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0221517   -0.0668280   0.0225245


### Parameter: PAF


pers_wast   agecat     studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0           6 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0264924   -0.2452324   0.2389236
0           6 months   ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0744756   -0.2491010   0.0757370
