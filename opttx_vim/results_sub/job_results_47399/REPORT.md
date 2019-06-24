---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

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

agecat      studyid                    country     fhtcm           n_cell       n
----------  -------------------------  ----------  -------------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm            46      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm             20      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        24      90
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           710    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm             81    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       288    1079
Birth       ki1119695-PROBIT           BELARUS     >=167 cm         11684   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm            168   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm       622   12474
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm            26     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm            112     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm        54     192
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           370     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            193     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       121     371
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       418    1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11143   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11892
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            44     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            198     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           823    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm             96    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3387    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm             52    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       170    3609
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            72     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            311     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     532


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
![](/tmp/868a8a3b-779c-413b-9125-39b3751c025d/8badb65d-939f-4f60-8730-0703ddf8817b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.3110484   -0.6036558   -0.0184410
Birth       ki1101329-Keneba           GAMBIA      optimal              observed           2.0486280    1.6952598    2.4019961
Birth       ki1119695-PROBIT           BELARUS     optimal              observed          -1.2661111   -1.4078175   -1.1244048
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.3572440   -0.9575327    0.2430447
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.5477176   -0.7422240   -0.3532111
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.9528004   -1.1720137   -0.7335870
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.1867412   -0.2943574   -0.0791249
6 months    ki1119695-PROBIT           BELARUS     optimal              observed           0.5658502    0.5100382    0.6216621
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed           0.0723009   -0.2259274    0.3705293
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -0.9026998   -1.0498756   -0.7555241
24 months   ki1119695-PROBIT           BELARUS     optimal              observed           0.6094280    0.4623419    0.7565140
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.2227807   -0.3513135   -0.0942479


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       observed             observed          -0.1156667   -0.4507658    0.2194325
Birth       ki1101329-Keneba           GAMBIA      observed             observed           1.7064875    1.6129215    1.8000534
Birth       ki1119695-PROBIT           BELARUS     observed             observed          -1.1390957   -1.3485249   -0.9296665
Birth       ki1135781-COHORTS          GUATEMALA   observed             observed          -0.5450521   -0.7653906   -0.3247135
6 months    ki1000304b-SAS-CompFeed    INDIA       observed             observed          -0.6502726   -0.7957520   -0.5047932
6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             observed          -0.9997844   -1.1172238   -0.8823449
6 months    ki1101329-Keneba           GAMBIA      observed             observed          -0.2272250   -0.2854487   -0.1690012
6 months    ki1119695-PROBIT           BELARUS     observed             observed           0.5791961    0.5216790    0.6367132
6 months    ki1135781-COHORTS          GUATEMALA   observed             observed           0.0909226   -0.0348636    0.2167089
24 months   ki1101329-Keneba           GAMBIA      observed             observed          -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     observed             observed           0.6773192    0.5626171    0.7920213
24 months   ki1135781-COHORTS          GUATEMALA   observed             observed          -0.3002632   -0.3780672   -0.2224591


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed           0.1953817   -0.0486591    0.4394225
Birth       ki1101329-Keneba           GAMBIA      optimal              observed          -0.3421405   -0.6819702   -0.0023108
Birth       ki1119695-PROBIT           BELARUS     optimal              observed           0.1270154   -0.0053893    0.2594201
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.1878081   -0.7323134    0.3566972
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.1025550   -0.1733017   -0.0318083
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.0469840   -0.2294668    0.1354988
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.0404838   -0.1355522    0.0545845
6 months    ki1119695-PROBIT           BELARUS     optimal              observed           0.0133459   -0.0432963    0.0699881
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed           0.0186217   -0.2444107    0.2816541
24 months   ki1101329-Keneba           GAMBIA      optimal              observed           0.1063222   -0.0278598    0.2405042
24 months   ki1119695-PROBIT           BELARUS     optimal              observed           0.0678912   -0.0122887    0.1480712
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.0774825   -0.1935778    0.0386128
