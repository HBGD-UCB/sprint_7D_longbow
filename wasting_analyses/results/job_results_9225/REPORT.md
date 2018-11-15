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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country     fhtcm           pers_wast   n_cell       n
------------  -------------------------  ----------  -------------  ----------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      358     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1       27     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0      179     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1       15     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0      222     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1       23     824
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       89     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1       11     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0      118     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1       34     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0      100     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1       18     370
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0     1047    1717
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       58    1717
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      113    1717
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       11    1717
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      465    1717
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       23    1717
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0    11639   12524
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1       93   12524
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0      166   12524
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        2   12524
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      621   12524
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        3   12524
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       55     424
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        1     424
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      237     424
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1       12     424
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0      116     424
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        3     424
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                0      927    1481
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                1       25    1481
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 0      107    1481
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 1        3    1481
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            0      410    1481
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            1        9    1481
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      300     733
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1       43     733
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0      144     733
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1       28     733
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0      185     733
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1       33     733
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       79     344
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1       12     344
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0      113     344
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1       29     344
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0       95     344
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1       16     344
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0      949    1625
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       94    1625
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      103    1625
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       17    1625
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      428    1625
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       34    1625
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0     6067    6451
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1        1    6451
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0       70    6451
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        0    6451
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      312    6451
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        1    6451
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       53     411
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        3     411
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      225     411
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1       14     411
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0      111     411
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        5     411


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f4c5fa57-66b4-4ce9-85c4-7356b98bcc46/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f4c5fa57-66b4-4ce9-85c4-7356b98bcc46/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f4c5fa57-66b4-4ce9-85c4-7356b98bcc46/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f4c5fa57-66b4-4ce9-85c4-7356b98bcc46/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0701299   0.0238669   0.1163929
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0773196   0.0599210   0.0947181
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0938776   0.0732925   0.1144626
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1100000   0.0485917   0.1714083
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2236842   0.1573480   0.2900205
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1525424   0.0875819   0.2175028
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0524887   0.0393359   0.0656415
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0887097   0.0386512   0.1387682
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0471311   0.0283235   0.0659388
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1253644   0.0909817   0.1597472
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.1627907   0.1135622   0.2120192
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1513761   0.1075381   0.1952142
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1318681   0.0622500   0.2014863
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2042254   0.1378226   0.2706281
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1441441   0.0787080   0.2095803
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0901246   0.0727405   0.1075087
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1416667   0.0792568   0.2040765
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0735931   0.0497765   0.0974097


### Parameter: E(Y)


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0788835   0.0568416   0.1009254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1702703   0.1319196   0.2086209
0-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.0535818   0.0429272   0.0642365
6-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.1418827   0.1234081   0.1603573
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1656977   0.1263498   0.2050455
6-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.0892308   0.0753659   0.1030957


### Parameter: RR


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1025200   0.5529835   2.198168
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3386243   0.6595285   2.716964
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          2.0334928   1.0807070   3.826285
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.3867488   0.6871668   2.798553
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.6900723   0.9115032   3.133664
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.8979296   0.5605329   1.438413
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.2985398   0.8054535   2.093486
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2074888   0.7930041   1.838615
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5487089   0.8330946   2.879024
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.0930931   0.5448391   2.193037
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.5718972   0.9717717   2.542635
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.8165700   0.5602389   1.190182


### Parameter: PAR


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0087536   -0.0180969   0.0356041
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0602703    0.0036718   0.1168687
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0010931   -0.0068975   0.0090837
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0165182   -0.0141380   0.0471745
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0338295   -0.0280631   0.0957222
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0008939   -0.0112138   0.0094261


### Parameter: PAF


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.1109690   -0.3408593   0.4105451
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.3539683   -0.0689019   0.6095460
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0204013   -0.1406203   0.1586915
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.1164218   -0.1273425   0.3074772
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.2041643   -0.2690628   0.5009273
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0100175   -0.1325446   0.0992537
