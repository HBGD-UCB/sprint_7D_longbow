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

agecat        studyid                    country     fhtcm           ever_wasted   n_cell       n
------------  -------------------------  ----------  -------------  ------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      255     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1      152     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0      130     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       96     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0      145     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1      117     895
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       53     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       53     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       75     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       88     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       83     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       47     399
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      758    1933
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      490    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       80    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       52    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      324    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      229    1933
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0     8471   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1     3273   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0      121   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1       47   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0      444   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1      181   12537
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       54     495
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        9     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0      224     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       69     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0      105     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       34     495
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      335     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       72     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0      183     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       40     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0      200     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       58     888
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       85     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       21     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0      130     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       33     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0      112     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       18     399
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  0      923    1705
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  1      180    1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   0      100    1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   1       23    1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              0      409    1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              1       70    1705
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  0     8557   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  1     3187   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   0      121   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   1       47   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              0      448   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              1      177   12537
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       44     334
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        4     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   0      170     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   1       25     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       76     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       15     334
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      275     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1      113     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0      133     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       67     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0      165     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       83     836
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       66     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       39     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       96     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       63     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       92     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       36     392
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      791    1851
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      395    1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       93    1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       38    1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      347    1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      187    1851
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0    11615   12530
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1      123   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0      166   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1        2   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0      619   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1        5   12530
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       57     489
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        6     489
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0      240     489
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       48     489
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0      117     489
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       21     489


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

* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/c5df9bec-8546-4cde-a827-2441e848c462/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c5df9bec-8546-4cde-a827-2441e848c462/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c5df9bec-8546-4cde-a827-2441e848c462/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c5df9bec-8546-4cde-a827-2441e848c462/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3824360   0.3254235   0.4394485
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4387225   0.3270871   0.5503579
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4638349   0.3866143   0.5410555
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.4549844   0.3703622   0.5396067
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5128404   0.4404977   0.5851830
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3249028   0.2491412   0.4006644
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3943055   0.3679507   0.4206603
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4341163   0.3801574   0.4880752
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4006608   0.3647785   0.4365432
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2780559   0.2154335   0.3406783
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.3469650   0.3092628   0.3846672
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2992461   0.2518483   0.3466439
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1428571   0.0563614   0.2293528
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.2354949   0.1868615   0.2841282
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2446043   0.1730725   0.3161361
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1828855   0.1468591   0.2189120
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1942923   0.1393084   0.2492763
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.2425105   0.1616372   0.3233838
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1879421   0.1159709   0.2599133
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1987075   0.1382487   0.2591663
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1350827   0.0769639   0.1932015
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1600491   0.1390740   0.1810243
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1547190   0.1121335   0.1973044
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1281113   0.1015035   0.1547192
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2707023   0.2075320   0.3338726
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.3512598   0.3129800   0.3895395
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2937118   0.2452091   0.3422146
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2883730   0.2312425   0.3455034
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3176986   0.2071153   0.4282819
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3271448   0.2742619   0.3800276
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3703100   0.2774739   0.4631461
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.3966661   0.3207472   0.4725850
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.2816072   0.2038228   0.3593916
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3399844   0.3137933   0.3661754
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3627120   0.3110226   0.4144014
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.3540746   0.3183835   0.3897656
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0952381   0.0226785   0.1677977
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1666667   0.1235813   0.2097521
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1521739   0.0921842   0.2121636


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4078212   0.3382171   0.4774254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4711779   0.4221376   0.5202183
0-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3988619   0.3770274   0.4206964
0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.2792534   0.2170833   0.3414235
0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.2262626   0.1893659   0.2631594
0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1914414   0.1418556   0.2410273
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1804511   0.1426701   0.2182322
0-6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1601173   0.1427056   0.1775290
0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.2720747   0.2092007   0.3349486
6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3145933   0.2482331   0.3809535
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3520408   0.3047006   0.3993810
6-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3349541   0.3134470   0.3564611
6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1533742   0.1214029   0.1853455


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1471789   0.9001859   1.4619417
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.2128432   1.0567729   1.3919627
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.1271602   0.8930105   1.4227047
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7140964   0.5301980   0.9617796
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1009645   0.9566810   1.2670084
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0161178   0.9096217   1.1350821
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.2478248   0.9893609   1.5738107
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0762084   0.9389420   1.2335422
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.6484642   0.8694655   3.1254076
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.7122302   0.8740675   3.3541258
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.0623712   0.8510938   1.3260964
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.3260234   1.0184633   1.7264617
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0572805   0.6484909   1.7237591
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7187462   0.4039126   1.2789801
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.9666966   0.7137232   1.3093344
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          0.8004499   0.6273664   1.0212853
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.2975868   1.0217849   1.6478337
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0849992   0.9445464   1.2463371
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1016934   0.8555950   1.4185781
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1344501   0.9900122   1.2999609
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0711732   0.7814041   1.4683976
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7604634   0.5237018   1.1042630
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.0668491   0.9078899   1.2536398
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0414437   0.9183518   1.1810342
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.7499999   0.7827645   3.9124152
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.5978260   0.6776121   3.7677129


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0253852   -0.0195068   0.0702772
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0161935   -0.0564026   0.0887896
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0045564   -0.0112150   0.0203278
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0011975   -0.0009337   0.0033288
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0834055    0.0001079   0.1667031
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0085559   -0.0195801   0.0366919
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0074910   -0.0685291   0.0535471
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0000682   -0.0122069   0.0123432
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0013723   -0.0005715   0.0033162
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0262203   -0.0005994   0.0530401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0182692   -0.0972831   0.0607447
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0050303   -0.0207915   0.0107310
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0581361   -0.0120811   0.1283534


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0622459   -0.0480785   0.1609572
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0343681   -0.1324235   0.1765934
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0114235   -0.0288949   0.0501620
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0042883   -0.0036176   0.0121320
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3686224   -0.1255915   0.6458417
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0446920   -0.1050624   0.1741521
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0415125   -0.4412394   0.2473504
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0004257   -0.0792522   0.0742212
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0050439   -0.0023789   0.0124118
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0833468    0.0024402   0.1576914
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0518951   -0.3020628   0.1502075
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0150178   -0.0632281   0.0310064
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3790476   -0.2868794   0.7003745
