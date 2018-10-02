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

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

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
![](/tmp/06895e2d-9abd-4852-af52-af4131bdd7a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06895e2d-9abd-4852-af52-af4131bdd7a1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/06895e2d-9abd-4852-af52-af4131bdd7a1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06895e2d-9abd-4852-af52-af4131bdd7a1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0687444   0.0238235   0.1136654
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0677234   0.0492269   0.0862198
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0913973   0.0710566   0.1117380
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1053624   0.0452845   0.1654403
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2150043   0.1500059   0.2800026
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1440167   0.0803902   0.2076432
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0539835   0.0408178   0.0671492
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0964682   0.0469694   0.1459670
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0530890   0.0342674   0.0719105
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1269389   0.0936835   0.1601944
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.1585424   0.1081008   0.2089839
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1517829   0.1083051   0.1952607
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1323815   0.0629038   0.2018591
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2048196   0.1384740   0.2711652
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1431135   0.0778626   0.2083644
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0928402   0.0754569   0.1102235
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1512185   0.0895665   0.2128706
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0798982   0.0561181   0.1036783


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          0.9851466   0.5139916   1.888190
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3295227   0.6552987   2.697443
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          2.0406160   1.0717959   3.885174
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.3668692   0.6653309   2.808124
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.7869942   1.0127366   3.153187
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.9834297   0.6392577   1.512901
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.2489654   0.7761219   2.009884
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.1957161   0.7953877   1.797535
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5471924   0.8353803   2.865526
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.0810687   0.5397876   2.165129
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.6288047   1.0400968   2.550729
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.8605988   0.6052472   1.223682


### Parameter: PAR


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0101391   -0.0155232   0.0358013
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0649078    0.0094279   0.1203877
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0004017   -0.0084259   0.0076225
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0149437   -0.0147762   0.0446636
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0333162   -0.0284173   0.0950496
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0036094   -0.0139940   0.0067752


### Parameter: PAF


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.1285320   -0.3078566   0.4193121
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.3812048   -0.0346702   0.6299231
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0074964   -0.1690102   0.1317022
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.1053246   -0.1293879   0.2912584
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.2010661   -0.2701415   0.4974612
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0404505   -0.1637263   0.0697665
