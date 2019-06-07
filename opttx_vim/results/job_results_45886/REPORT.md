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
![](/tmp/879e2cf6-1c85-4c9b-87d2-3c268b423387/7158c23e-7987-4f4b-8615-913fa583e3a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/879e2cf6-1c85-4c9b-87d2-3c268b423387/7158c23e-7987-4f4b-8615-913fa583e3a6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.3253051   0.2839487   0.3666616
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.5042067   0.3485317   0.6598816
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.4223408   0.3638164   0.4808651
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                0.2751856   0.1697074   0.3806637
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                0.2179374   0.0561040   0.3797709
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.2378681   0.1059047   0.3698314
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                0.1440721   0.1113631   0.1767810
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                0.2781247   0.1601826   0.3960668
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.2499005   0.0528748   0.4469262
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.3202759   0.1722572   0.4682947
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.2835513   0.2084624   0.3586401


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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           1.0014752   0.7902729   1.269122
0-24 months   ki1101329-Keneba           GAMBIA      observed             optimal           0.9444077   0.8293721   1.075399
0-24 months   ki1119695-PROBIT           BELARUS     observed             optimal           1.0449895   0.9159674   1.192185
0-24 months   ki1135781-COHORTS          GUATEMALA   observed             optimal           1.4553747   0.7172488   2.953111
0-6 months    ki1000304b-SAS-CompFeed    INDIA       observed             optimal           0.8685973   0.6779217   1.112903
0-6 months    ki1101329-Keneba           GAMBIA      observed             optimal           1.1113696   0.9122363   1.353972
0-6 months    ki1119695-PROBIT           BELARUS     observed             optimal           1.0155344   0.9017901   1.143625
6-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             optimal           0.9743009   0.7055006   1.345516
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           1.2177000   0.8423693   1.760265
6-24 months   ki1101329-Keneba           GAMBIA      observed             optimal           1.1812823   0.9157435   1.523820


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0409500   -0.0123365   0.0942365
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.0007438   -0.1186757   0.1201634
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                -0.0234789   -0.0782912   0.0313334
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                 0.0123804   -0.0238946   0.0486555
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.0992432   -0.0551464   0.2536328
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                -0.0312565   -0.0990040   0.0364910
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                 0.0160452   -0.0124254   0.0445159
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                 0.0043205   -0.0281024   0.0367434
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                -0.0064222   -0.0899667   0.0771223
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.0697241   -0.0479287   0.1873768
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0514028   -0.0207518   0.1235575


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.1118073   -0.0131974   0.2213893
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.0014731   -0.2653857   0.2120536
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                -0.0588648   -0.2057314   0.0701125
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                 0.0430525   -0.0917419   0.1612043
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.3128917   -0.3942163   0.6613741
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                -0.1512815   -0.4750967   0.1014493
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                 0.1002093   -0.0962072   0.2614323
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                 0.0152968   -0.1089055   0.1255879
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                -0.0263770   -0.4174333   0.2567907
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.1787797   -0.1871277   0.4319038
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.1534623   -0.0920089   0.3437543
