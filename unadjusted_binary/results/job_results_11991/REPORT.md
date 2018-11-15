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

**Outcome Variable:** stunted

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

agecat      studyid                    country     fhtcm           stunted   n_cell       n
----------  -------------------------  ----------  -------------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0       38     102
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       12     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               0       17     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               1        6     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0       20     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1        9     102
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              0      735    1165
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              1       37    1165
Birth       ki1101329-Keneba           GAMBIA      <162 cm               0       82    1165
Birth       ki1101329-Keneba           GAMBIA      <162 cm               1        5    1165
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          0      290    1165
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          1       16    1165
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              0    11714   12533
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              1       26   12533
Birth       ki1119695-PROBIT           BELARUS     <162 cm               0      168   12533
Birth       ki1119695-PROBIT           BELARUS     <162 cm               1        0   12533
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          0      622   12533
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          1        3   12533
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              0       26     206
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              1        3     206
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               0      111     206
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               1       10     206
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       54     206
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        2     206
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      281     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       88     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      129     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       65     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      168     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       76     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0       64     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1       38     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0       72     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       76     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0       77     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1       45     372
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              0      849    1511
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              1      130    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm               0       98    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm               1       15    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          0      355    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          1       64    1511
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              0    10535   11895
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              1      611   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm               0      131   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm               1       25   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          0      529   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          1       64   11895
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              0       31     336
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              1       14     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               0       88     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               1      109     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       61     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          1       33     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0      569    1297
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1      252    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm               0       63    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm               1       34    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      216    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1      163    1297
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0     3161    3670
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1      284    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm               0       42    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm               1       11    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      149    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1       23    3670
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       25     528
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1       47     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0       53     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1      254     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       40     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1      109     528


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
![](/tmp/c38bff03-1f84-4e35-b0d6-ac77777634d1/a9724121-8de3-4c97-8c10-b7c7b5ae2f46/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c38bff03-1f84-4e35-b0d6-ac77777634d1/a9724121-8de3-4c97-8c10-b7c7b5ae2f46/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c38bff03-1f84-4e35-b0d6-ac77777634d1/a9724121-8de3-4c97-8c10-b7c7b5ae2f46/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c38bff03-1f84-4e35-b0d6-ac77777634d1/a9724121-8de3-4c97-8c10-b7c7b5ae2f46/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2400000   0.1335281   0.3464719
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2608696   0.0876979   0.4340412
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3103448   0.0805885   0.5401011
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0479275   0.0328526   0.0630023
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                0.0574713   0.0085444   0.1063982
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.0522876   0.0273352   0.0772399
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2384824   0.2006277   0.2763371
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3350515   0.2623570   0.4077461
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3114754   0.2471012   0.3758496
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3725490   0.2785953   0.4665028
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5135135   0.4328805   0.5941466
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3688525   0.2831202   0.4545848
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1327886   0.1115246   0.1540525
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1327434   0.0701638   0.1953230
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1527446   0.1182878   0.1872014
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0548179   0.0428904   0.0667454
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1602564   0.0876599   0.2328529
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1079258   0.0752963   0.1405553
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3111111   0.1756479   0.4465743
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.5532995   0.4837730   0.6228260
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.3510638   0.2544308   0.4476968
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3069428   0.2753813   0.3385042
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3505155   0.2555277   0.4455032
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4300792   0.3802163   0.4799420
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0824383   0.0499847   0.1148919
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2075472   0.0042683   0.4108261
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1337209   0.0646535   0.2027883
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.6527778   0.5427050   0.7628506
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8273616   0.7850453   0.8696778
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7315436   0.6603201   0.8027672


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2647059   0.1675094   0.3619023
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                0.0497854   0.0372905   0.0622803
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2837670   0.2471555   0.3203786
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4274194   0.3770801   0.4777586
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1383190   0.1209060   0.1557320
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0588483   0.0462144   0.0714821
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4642857   0.4108803   0.5176911
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3461835   0.3202819   0.3720851
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0866485   0.0534930   0.1198040
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7765152   0.7409486   0.8120817


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.0869565   0.4854442   2.433801
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.2931034   0.6762338   2.472690
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1991302   0.4838511   2.971809
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0909733   0.6160200   1.932117
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.4049321   1.1967308   1.649355
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.3060730   1.0084750   1.691491
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.3783784   1.0241137   1.855191
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.9900777   0.7026223   1.395136
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.9996596   0.6076065   1.644682
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1502846   0.8722901   1.516874
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.9234336   1.8951628   4.509620
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.9688068   1.4850414   2.610163
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.7784627   1.1303897   2.798088
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.1284195   0.6741461   1.888805
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1419571   0.8546160   1.525909
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.4011706   1.2000230   1.636034
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.5176056   1.0782554   5.878327
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.6220726   0.9071693   2.900362
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.2674475   1.0626830   1.511667
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.1206626   0.9223862   1.361560


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0247059   -0.0254771   0.0748889
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0018579   -0.0072081   0.0109240
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0452847    0.0214626   0.0691068
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0548703   -0.0258797   0.1356203
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0055304   -0.0074869   0.0185478
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0040304    0.0022472   0.0058135
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1531746    0.0255534   0.2807958
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0392407    0.0190932   0.0593883
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0042102    0.0005163   0.0079040
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1237374    0.0233550   0.2241198


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0933333   -0.1186151   0.2651231
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0373191   -0.1628844   0.2030553
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1595839    0.0747613   0.2366303
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1283759   -0.0828128   0.2983749
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0399832   -0.0587926   0.1295441
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0684877    0.0411052   0.0950883
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3299145   -0.0105470   0.5556718
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1133524    0.0532410   0.1696473
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0485892    0.0054909   0.0898198
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1593496    0.0184476   0.2800250
