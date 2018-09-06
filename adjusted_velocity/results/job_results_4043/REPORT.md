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

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country     fhtcm           n_cell       n
-------------  -------------------------  ----------  -------------  -------  ------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           326     716
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            184     716
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       206     716
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm           631     965
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm             75     965
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm       259     965
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm         10773   11500
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm            151   11500
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm       576   11500
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            25     180
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm            106     180
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        49     180
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm           308     682
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm            175     682
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       199     682
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm           673    1037
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm             74    1037
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm       290    1037
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm          9473   10104
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm            129   10104
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm       502   10104
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            37     261
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm            148     261
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        76     261
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           313     679
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            164     679
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       202     679
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            89     328
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            132     328
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       107     328
6-12 months    ki1101329-Keneba           GAMBIA      >=167 cm           635    1005
6-12 months    ki1101329-Keneba           GAMBIA      <162 cm             78    1005
6-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm       292    1005
6-12 months    ki1119695-PROBIT           BELARUS     >=167 cm          9248    9870
6-12 months    ki1119695-PROBIT           BELARUS     <162 cm            124    9870
6-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm       498    9870
6-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            45     329
6-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm            192     329
6-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        92     329
12-24 months   ki1101329-Keneba           GAMBIA      >=167 cm           583     931
12-24 months   ki1101329-Keneba           GAMBIA      <162 cm             73     931
12-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       275     931
12-24 months   ki1119695-PROBIT           BELARUS     >=167 cm          2169    2320
12-24 months   ki1119695-PROBIT           BELARUS     <162 cm             38    2320
12-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       113    2320
12-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            58     421
12-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            244     421
12-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       119     421


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c8d7279a-70e5-4372-b8df-aea747d97337/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c8d7279a-70e5-4372-b8df-aea747d97337/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0320206    0.0115913    0.0524499
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0423949   -0.0789170   -0.0058729
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0159179   -0.0518310    0.0199951
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2825413   -0.3157925   -0.2492902
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.3508290   -0.4026749   -0.2989830
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.3282207   -0.3664138   -0.2900277
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.4361017   -0.4942506   -0.3779529
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.4396236   -0.4719662   -0.4072811
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4561622   -0.5054573   -0.4068672
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.4651426   -0.5731843   -0.3571010
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.4939306   -0.5491821   -0.4386790
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.5174596   -0.5840565   -0.4508626
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0205314   -0.0096014    0.0506642
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                 0.0031934   -0.0180725    0.0244593
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                 0.0187429   -0.0173077    0.0547936
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0163103   -0.0405591    0.0079385
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0352179   -0.0789075    0.0084716
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0347254   -0.0670656   -0.0023852
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0476543    0.0284090    0.0668997
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0516049    0.0193675    0.0838423
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.0318618   -0.0526708   -0.0110528
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1093001   -0.1415778   -0.0770225
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1068467   -0.1342312   -0.0794621
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0386012   -0.0684660   -0.0087363
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0943584   -0.1063010   -0.0824158
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0980938   -0.1152455   -0.0809421
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1032710   -0.1213101   -0.0852319
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0583828   -0.1051245   -0.0116411
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.1199426   -0.1515805   -0.0883047
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.0696722   -0.1117505   -0.0275939
6-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0654823   -0.0759677   -0.0549970
6-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0464116   -0.0663229   -0.0265002
6-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0721227   -0.0839095   -0.0603359
6-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0420270    0.0253459    0.0587081
6-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.0211163   -0.0364218   -0.0058109
6-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0320170    0.0075415    0.0564926
6-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0215309    0.0052067    0.0378550
6-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1120228   -0.1261834   -0.0978622
6-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0855782   -0.1020491   -0.0691073
12-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0180582   -0.0233220   -0.0127944
12-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0281578   -0.0395395   -0.0167761
12-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0214126   -0.0273446   -0.0154806
12-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0435084   -0.0599639   -0.0270528
12-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0205169    0.0121678    0.0288660
12-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.0253021   -0.0387002   -0.0119040
12-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0853510   -0.0928140   -0.0778881
12-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0263597   -0.0326231   -0.0200963
12-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0372344   -0.0438006   -0.0306682


### Parameter: E(Y)


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                 0.0059269   -0.0151835    0.0270374
0-3 months     ki1101329-Keneba           GAMBIA      NA                   NA                -0.2957715   -0.3237824   -0.2677606
0-3 months     ki1119695-PROBIT           BELARUS     NA                   NA                -0.4388567   -0.4976461   -0.3800673
0-3 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.5011808   -0.5450937   -0.4572680
3-6 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0172047   -0.0462110    0.0118016
3-6 months     ki1101329-Keneba           GAMBIA      NA                   NA                -0.0243287   -0.0453184   -0.0033389
3-6 months     ki1119695-PROBIT           BELARUS     NA                   NA                 0.0468501    0.0275580    0.0661423
3-6 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0725836   -0.0990295   -0.0461377
6-12 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0889976   -0.1017879   -0.0762074
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.1157275   -0.1449160   -0.0865389
6-12 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.0647984   -0.0735026   -0.0560942
6-12 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.0416942    0.0249522    0.0584361
6-12 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.1145084   -0.1265939   -0.1024228
12-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.0200813   -0.0244392   -0.0157235
12-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                -0.0429109   -0.0593629   -0.0264588
12-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0256771   -0.0311186   -0.0202357


### Parameter: ATE


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0744155   -0.1075940   -0.0412371
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0479385   -0.0882827   -0.0075944
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0682877   -0.1286795   -0.0078958
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0456794   -0.0949285    0.0035698
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0035219   -0.0527235    0.0456797
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0200605   -0.0455756    0.0054547
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0287879   -0.1494067    0.0918309
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0523169   -0.1780117    0.0733779
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0173380   -0.0441091    0.0094331
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0017885   -0.0242574    0.0206804
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0189076   -0.0684287    0.0306134
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0184151   -0.0582972    0.0214671
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0039506   -0.0329460    0.0408472
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0795161   -0.1030866   -0.0559457
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0024535   -0.0353742    0.0402812
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0706990    0.0308302    0.1105677
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0037353   -0.0222556    0.0147849
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0089126   -0.0254689    0.0076437
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0615598   -0.1153803   -0.0077392
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0112894   -0.0696074    0.0470286
6-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0190708   -0.0032434    0.0413849
6-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0066404   -0.0220762    0.0087955
6-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0631433   -0.0821820   -0.0441047
6-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0100100   -0.0346070    0.0145870
6-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1335537   -0.1552514   -0.1118559
6-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1071091   -0.1303098   -0.0839083
12-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0100996   -0.0225682    0.0023691
12-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0033544   -0.0111691    0.0044604
12-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0640253    0.0485776    0.0794729
12-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm           0.0182062    0.0026267    0.0337858
12-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0589914    0.0491937    0.0687891
12-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0481167    0.0382676    0.0579657
