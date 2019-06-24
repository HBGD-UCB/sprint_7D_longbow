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

**Outcome Variable:** ever_co

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

agecat        studyid                    country     fhtcm           ever_co   n_cell       n
------------  -------------------------  ----------  -------------  --------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      327     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       80     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      162     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       64     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      196     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       66     895
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0       73     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1       33     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0       84     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       79     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0       91     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1       39     399
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0     1061    1929
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1      184    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm               0      112    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm               1       20    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      443    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1      109    1929
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0    11722   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1       22   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm               0      168   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm               1        0   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      624   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1        1   12537
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       59     495
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1        4     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0      244     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1       49     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0      119     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1       20     495
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      388     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       19     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      210     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       13     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      238     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       20     888
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0      101     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1        5     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0      145     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       17     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0      122     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1        7     397
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm              0     1067    1702
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm              1       33    1702
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm               0      122    1702
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm               1        1    1702
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          0      463    1702
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          1       16    1702
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm              0    11729   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm              1       15   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm               0      168   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm               1        0   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          0      625   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          1        0   12537
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              0       48     334
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              1        0     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               0      192     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               1        3     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       89     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        2     334
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      315     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       73     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      139     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       61     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      186     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       62     836
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0       74     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1       31     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0       86     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       73     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0       91     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1       37     392
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0     1014    1850
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1      172    1850
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm               0      112    1850
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm               1       19    1850
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      431    1850
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1      102    1850
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0    11730   12530
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1        8   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm               0      168   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm               1        0   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      623   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1        1   12530
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       59     488
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1        4     488
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0      239     488
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1       48     488
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0      120     488
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1       18     488


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0d88aea6-bec2-49ea-bafb-b4bf172535af/f7d4c953-5f25-4e6e-b7e8-ccb2c69fee98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d88aea6-bec2-49ea-bafb-b4bf172535af/f7d4c953-5f25-4e6e-b7e8-ccb2c69fee98/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d88aea6-bec2-49ea-bafb-b4bf172535af/f7d4c953-5f25-4e6e-b7e8-ccb2c69fee98/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d88aea6-bec2-49ea-bafb-b4bf172535af/f7d4c953-5f25-4e6e-b7e8-ccb2c69fee98/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.2069030   0.1511954   0.2626106
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.2584315   0.1624642   0.3543988
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.2510504   0.1791226   0.3229781
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3158575   0.2264678   0.4052473
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.4834797   0.4058163   0.5611430
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.3082104   0.2290627   0.3873582
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.1511856   0.1307487   0.1716226
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1710760   0.1048697   0.2372823
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1946417   0.1599587   0.2293247
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0478564   0.0253310   0.0703818
0-6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0574001   0.0134317   0.1013686
0-6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0802750   0.0546543   0.1058957
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0471698   0.0067604   0.0875792
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.1049383   0.0576850   0.1521915
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.0542636   0.0151218   0.0934053
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.2000068   0.1519523   0.2480612
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.2775220   0.1826018   0.3724422
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.2484032   0.1787154   0.3180909
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3028359   0.2147769   0.3908948
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.4600361   0.3824589   0.5376133
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.2925710   0.2139789   0.3711631
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.1478410   0.1278465   0.1678355
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.1341234   0.0724584   0.1957884
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.1846686   0.1511711   0.2181662


### Parameter: E(Y)


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.2346369   0.1798928   0.2893809
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.3784461   0.3307978   0.4260945
0-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1622602   0.1458031   0.1787174
0-6 months    ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0585586   0.0394255   0.0776916
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.0730479   0.0474188   0.0986769
6-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.2344498   0.1848813   0.2840182
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.3596939   0.3121253   0.4072624
6-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.1583784   0.1417371   0.1750196


### Parameter: RR


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.2490467   0.8304279   1.878691
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2133724   0.9458231   1.556605
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5306890   1.1042227   2.121863
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.9757894   0.6662955   1.429043
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.1315623   0.7517050   1.703372
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          1.2874351   1.0303954   1.608595
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1994238   0.4570734   3.147454
0-6 months    ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.6774130   1.0396655   2.706365
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          2.2246913   0.8451872   5.855805
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.1503876   0.3753798   3.525474
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.3875631   0.9850721   1.954508
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2419740   0.9335939   1.652217
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5190939   1.0862839   2.124349
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.9661043   0.6502653   1.435349
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          0.9072140   0.5618444   1.464885
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          1.2491033   0.9964930   1.565750


### Parameter: PAR


agecat        studyid                    country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0277339   -0.0084035   0.0638712
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0625886   -0.0153411   0.1405182
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0110746   -0.0020414   0.0241906
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0107021   -0.0093260   0.0307303
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0258780   -0.0117754   0.0635315
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0344430   -0.0008826   0.0697686
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0568580   -0.0198865   0.1336025
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0105374   -0.0022145   0.0232893


### Parameter: PAF


agecat        studyid                    country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1181991   -0.0429524   0.2544503
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1653831   -0.0682455   0.3479164
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0682520   -0.0160734   0.1455792
0-6 months    ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1827597   -0.2188026   0.4520181
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3542615   -0.4046217   0.7031385
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.1469100   -0.0066469   0.2770429
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1580733   -0.0846091   0.3464553
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0665332   -0.0171727   0.1433507
