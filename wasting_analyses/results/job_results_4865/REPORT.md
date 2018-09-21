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
![](/tmp/0045af52-5527-42bb-89af-cd9b8e03f153/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0045af52-5527-42bb-89af-cd9b8e03f153/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0045af52-5527-42bb-89af-cd9b8e03f153/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0045af52-5527-42bb-89af-cd9b8e03f153/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3824360   0.3254235   0.4394485
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4387225   0.3270871   0.5503579
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4638349   0.3866143   0.5410555
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.4564336   0.3653728   0.5474944
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5136601   0.4385239   0.5887963
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3295063   0.2494063   0.4096064
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3941150   0.3677245   0.4205055
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4393857   0.3858958   0.4928756
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.3987513   0.3628072   0.4346954
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2780568   0.2154346   0.3406790
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.3467563   0.3090933   0.3844193
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2991883   0.2517868   0.3465898
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1428571   0.0563614   0.2293528
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.2354949   0.1868615   0.2841282
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2446043   0.1730725   0.3161361
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1828855   0.1468591   0.2189120
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1942923   0.1393084   0.2492763
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.2425105   0.1616372   0.3233838
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1890844   0.1169608   0.2612080
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1983412   0.1378502   0.2588323
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1356135   0.0773407   0.1938862
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1600115   0.1390313   0.1809917
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1542838   0.1117611   0.1968065
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1279034   0.1012829   0.1545238
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2707049   0.2075345   0.3338754
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.3507437   0.3125571   0.3889303
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2935837   0.2450721   0.3420953
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2883730   0.2312425   0.3455034
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3176986   0.2071153   0.4282819
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3271448   0.2742619   0.3800276
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3588139   0.2713998   0.4462281
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.3921227   0.3180990   0.4661465
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.2726399   0.1975352   0.3477445
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3399164   0.3137207   0.3661120
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3606691   0.3087305   0.4126078
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.3545865   0.3188531   0.3903198
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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.1253775   0.8791643   1.4405436
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7219152   0.5273449   0.9882745
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1148668   0.9708269   1.2802776
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0117639   0.9051711   1.1309090
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.2470700   0.9888788   1.5726738
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0759970   0.9388701   1.2331519
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.6484642   0.8694655   3.1254076
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.7122302   0.8740675   3.3541258
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.0623712   0.8510938   1.3260964
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.3260234   1.0184633   1.7264617
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0489560   0.6440747   1.7083558
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7172112   0.4036848   1.2742411
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.9642046   0.7115852   1.3065063
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          0.7993387   0.6261940   1.0203585
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.2956678   1.0205587   1.6449374
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0845157   0.9444222   1.2453904
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1016934   0.8555950   1.4185781
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1344501   0.9900122   1.2999609
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0928304   0.8029715   1.4873234
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7598364   0.5260168   1.0975911
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.0610526   0.9017231   1.2485348
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0431581   0.9198161   1.1830395
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.7499999   0.7827645   3.9124152
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.5978260   0.6776121   3.7677129


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0253852   -0.0195068   0.0702772
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0147443   -0.0631608   0.0926495
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0047469   -0.0111103   0.0206040
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0011966   -0.0009346   0.0033278
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0834055    0.0001079   0.1667031
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0085559   -0.0195801   0.0366919
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0086333   -0.0697322   0.0524656
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0001058   -0.0121841   0.0123957
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0013697   -0.0005746   0.0033141
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0262203   -0.0005994   0.0530401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0067731   -0.0812681   0.0677219
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0049623   -0.0207255   0.0108010
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0581361   -0.0120811   0.1283534


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0622459   -0.0480785   0.1609572
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0312925   -0.1489433   0.1832546
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0119011   -0.0286400   0.0508443
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0042850   -0.0036205   0.0121282
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3686224   -0.1255915   0.6458417
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0446920   -0.1050624   0.1741521
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0478429   -0.4476183   0.2415302
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0006609   -0.0791168   0.0745408
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0050344   -0.0023896   0.0124034
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0833468    0.0024402   0.1576914
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0192395   -0.2545043   0.1719047
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0148148   -0.0630305   0.0312140
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3790476   -0.2868794   0.7003745
