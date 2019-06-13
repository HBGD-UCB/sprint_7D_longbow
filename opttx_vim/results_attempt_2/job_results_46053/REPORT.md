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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country     fhtcm           ever_wasted   n_cell      n
------------  -------------------------  ----------  -------------  ------------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       73    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       37    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       37    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       23    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       44    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       29    243
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0        9    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       12    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       18    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       20    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       23    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       19    101
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      758   1933
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      490   1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       80   1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       52   1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      324   1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      229   1933
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0     4155   6249
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1     1681   6249
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0       56   6249
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1       27   6249
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0      241   6249
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1       89   6249
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       22    227
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        6    227
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0       78    227
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       44    227
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       55    227
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       22    227
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       86    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       24    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       46    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       14    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       60    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       12    242
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       18    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        3    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       32    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        6    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       34    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        8    101
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  0      923   1705
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  1      180   1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   0      100   1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   1       23   1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              0      409   1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              1       70   1705
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  0     4186   6249
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  1     1650   6249
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   0       56   6249
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   1       27   6249
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              0      242   6249
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              1       88   6249
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       19    148
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        3    148
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   0       66    148
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   1       13    148
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       35    148
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       12    148
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       84    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       22    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       39    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       13    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       51    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       21    230
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       11    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       10    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       22    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       16    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       28    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       13    100
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      791   1851
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      395   1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       93   1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       38   1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      347   1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      187   1851
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0     5788   6247
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1       46   6247
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0       83   6247
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1        0   6247
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0      329   6247
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1        1   6247
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       24    227
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        4    227
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0       89    227
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       33    227
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       66    227
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       11    227


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

* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/277bc738-482e-4625-b845-63a7afcfe415/051daf89-907e-4487-87df-afae5c4d6165/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/277bc738-482e-4625-b845-63a7afcfe415/051daf89-907e-4487-87df-afae5c4d6165/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.3253051   0.2839487   0.3666616
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.5303354   0.3741623   0.6865085
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.3940263   0.3348916   0.4531610
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                0.2950827   0.1847880   0.4053775
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                0.2099261   0.0545609   0.3652913
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.2378681   0.1059047   0.3698314
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                0.1389226   0.1071836   0.1706617
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                0.2959564   0.1824358   0.4094771
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.2499005   0.0528748   0.4469262
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.3255521   0.1768767   0.4742275
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.3123701   0.2425216   0.3822186


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             NA                0.3662551   0.2722088   0.4603015
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             NA                0.5049505   0.4069571   0.6029439
0-24 months   ki1101329-Keneba           GAMBIA      observed             NA                0.3988619   0.3770274   0.4206964
0-24 months   ki1119695-PROBIT           BELARUS     observed             NA                0.2875660   0.1862253   0.3889068
0-24 months   ki1135781-COHORTS          GUATEMALA   observed             NA                0.3171806   0.2565070   0.3778543
0-6 months    ki1000304b-SAS-CompFeed    INDIA       observed             NA                0.2066116   0.1377408   0.2754823
0-6 months    ki1101329-Keneba           GAMBIA      observed             NA                0.1601173   0.1427056   0.1775290
0-6 months    ki1119695-PROBIT           BELARUS     observed             NA                0.2824452   0.1805355   0.3843549
6-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             NA                0.2434783   0.1268958   0.3600607
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             NA                0.3900000   0.2939212   0.4860788
6-24 months   ki1101329-Keneba           GAMBIA      observed             NA                0.3349541   0.3134470   0.3564611


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             optimal           1.1258818   0.9869746   1.284339
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           0.9521342   0.7600086   1.192828
0-24 months   ki1101329-Keneba           GAMBIA      observed             optimal           1.0122721   0.8796502   1.164889
0-24 months   ki1119695-PROBIT           BELARUS     observed             optimal           0.9745267   0.8756905   1.084518
0-24 months   ki1135781-COHORTS          GUATEMALA   observed             optimal           1.5109153   0.7465808   3.057760
0-6 months    ki1000304b-SAS-CompFeed    INDIA       observed             optimal           0.8685973   0.6779217   1.112903
0-6 months    ki1101329-Keneba           GAMBIA      observed             optimal           1.1525646   0.9434595   1.408015
0-6 months    ki1119695-PROBIT           BELARUS     observed             optimal           0.9543471   0.8612679   1.057486
6-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             optimal           0.9743009   0.7055006   1.345516
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           1.1979649   0.8319041   1.725102
6-24 months   ki1101329-Keneba           GAMBIA      observed             optimal           1.0722988   0.8646503   1.329815


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0409500   -0.0123365   0.0942365
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                -0.0253849   -0.1449136   0.0941437
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0048355   -0.0505009   0.0601720
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                -0.0075167   -0.0393262   0.0242928
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1072545   -0.0410804   0.2555894
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                -0.0312565   -0.0990040   0.0364910
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                 0.0211947   -0.0066962   0.0490856
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                -0.0135113   -0.0446855   0.0176630
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                -0.0064222   -0.0899667   0.0771223
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.0644479   -0.0540141   0.1829098
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0225840   -0.0446881   0.0898561


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.1118073   -0.0131974   0.2213893
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                -0.0502721   -0.3157746   0.1616562
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0121233   -0.1368155   0.1415491
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                -0.0261391   -0.1419560   0.0779316
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.3381495   -0.3394398   0.6729632
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                -0.1512815   -0.4750967   0.1014493
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                 0.1323697   -0.0599289   0.2897803
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                -0.0478367   -0.1610789   0.0543607
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                -0.0263770   -0.4174333   0.2567907
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.1652510   -0.2020617   0.4203243
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0674241   -0.1565370   0.2480156
