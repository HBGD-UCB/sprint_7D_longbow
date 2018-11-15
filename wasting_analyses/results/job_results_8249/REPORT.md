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

**Outcome Variable:** wasted

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

agecat      studyid                    country     fhtcm           wasted   n_cell       n
----------  -------------------------  ----------  -------------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             0       46      90
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             1        0      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              0       20      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              1        0      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         0       24      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         1        0      90
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             0      693    1079
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             1       17    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm              0       80    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm              1        1    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         0      285    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         1        3    1079
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             0     9273   12474
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             1     2411   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm              0      130   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm              1       38   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         0      478   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         1      144   12474
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             0       22     192
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             1        4     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              0       92     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              1       20     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         0       42     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         1       12     192
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             0      332     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             1       38     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              0      170     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              1       23     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         0      212     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         1       32     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             0       88     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             1       14     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              0      115     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              1       33     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         0      101     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         1       20     371
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             0      923    1510
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             1       56    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm              0      104    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm              1        9    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         0      397    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         1       21    1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             0    11053   11892
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             1       90   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm              0      155   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm              1        1   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         0      592   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         1        1   11892
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             0       44     336
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             1        0     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              0      190     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              1        8     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         0       89     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         1        5     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             0      743    1298
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             1       80    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm              0       79    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm              1       17    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         0      344    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         1       35    1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             0     3352    3609
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             1       35    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm              0       50    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm              1        2    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         0      168    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         1        2    3609
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             0       69     532
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             1        3     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              0      292     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              1       19     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         0      140     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         1        9     532


The following strata were considered:

* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/da7f186e-c249-42bf-aad1-7468d0e061fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da7f186e-c249-42bf-aad1-7468d0e061fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da7f186e-c249-42bf-aad1-7468d0e061fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da7f186e-c249-42bf-aad1-7468d0e061fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.2063506   0.1405547   0.2721464
Birth       ki1119695-PROBIT           BELARUS   <162 cm              NA                0.2261905   0.1571712   0.2952098
Birth       ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.2315113   0.1547098   0.3083128
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1027027   0.0768935   0.1285119
6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.1191710   0.0499344   0.1884076
6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.1311475   0.0911059   0.1711892
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1372549   0.0703837   0.2041261
6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2229730   0.1558227   0.2901232
6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1652893   0.0990170   0.2315615
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0572012   0.0426496   0.0717529
6 months    ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0796460   0.0297102   0.1295818
6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0502392   0.0292917   0.0711867
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0972053   0.0769586   0.1174521
24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1770833   0.1006916   0.2534751
24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0923483   0.0631895   0.1215071


### Parameter: E(Y)


agecat      studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT           BELARUS   NA                   NA                0.2078724   0.1422510   0.2734938
6 months    ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.1152416   0.0868962   0.1435870
6 months    ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1805930   0.1413965   0.2197895
6 months    ki1101329-Keneba           GAMBIA    NA                   NA                0.0569536   0.0452605   0.0686468
24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1016949   0.0852459   0.1181439


### Parameter: RR


agecat      studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          1.0961466   0.8078779   1.487276
Birth       ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          1.1219318   0.9632434   1.306763
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1603490   0.6458133   2.084828
6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2769629   0.8805208   1.851897
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.6245174   0.9161651   2.880547
6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.2042503   0.6407500   2.263314
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.3923831   0.7077955   2.739111
6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.8782895   0.5389064   1.431403
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.8217448   1.1283469   2.941253
24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.9500330   0.6508220   1.386804


### Parameter: PAR


agecat      studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0015218   -0.0004675   0.0035111
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0125389   -0.0119135   0.0369913
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0433381   -0.0162376   0.1029138
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0002476   -0.0088444   0.0083492
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0044896   -0.0081858   0.0171650


### Parameter: PAF


agecat      studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0073209   -0.0027365   0.0172774
6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.1088056   -0.1145182   0.2873804
6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.2399766   -0.1688644   0.5058147
6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0043471   -0.1672214   0.1357996
24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                 0.0441474   -0.0888027   0.1608635
