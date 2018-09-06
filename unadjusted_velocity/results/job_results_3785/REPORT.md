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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/08062074-0624-4b40-88d3-5970beddb413/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/08062074-0624-4b40-88d3-5970beddb413/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0417142    0.0186427    0.0647858
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0400383   -0.0890252    0.0089486
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0096510   -0.0511551    0.0318532
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2756029   -0.3112181   -0.2399878
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.3311234   -0.4381988   -0.2240480
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.3346711   -0.3832427   -0.2860994
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.4355808   -0.4941207   -0.3770409
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.5387062   -0.6331912   -0.4442211
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4739508   -0.5403643   -0.4075374
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.4807190   -0.6177738   -0.3436643
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.4964554   -0.5538836   -0.4390272
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.5218430   -0.5969706   -0.4467154
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0014411   -0.0347557    0.0318735
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0426204   -0.0727132   -0.0125275
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0192522   -0.0569095    0.0184051
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0150521   -0.0404454    0.0103411
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0762347   -0.1744078    0.0219384
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0326117   -0.0716051    0.0063818
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0483273    0.0290272    0.0676274
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0480643   -0.0568052    0.1529339
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0186631   -0.0168469    0.0541730
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0438737   -0.1209529    0.0332055
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1039207   -0.1374128   -0.0704287
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0255358   -0.0740817    0.0230102
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0879068   -0.1029226   -0.0728911
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0883524   -0.1078987   -0.0688061
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0912116   -0.1117555   -0.0706678
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1044974   -0.1648120   -0.0441827
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.1394491   -0.1777799   -0.1011183
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.0958043   -0.1524600   -0.0391487
6-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0619460   -0.0730704   -0.0508215
6-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0522863   -0.0853903   -0.0191824
6-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0743436   -0.0895768   -0.0591105
6-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0420751    0.0253049    0.0588453
6-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0400100    0.0082805    0.0717395
6-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0350399    0.0095682    0.0605116
6-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0864592   -0.1188067   -0.0541117
6-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1203646   -0.1360456   -0.1046836
6-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.1160064   -0.1389710   -0.0930417
12-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0190298   -0.0246009   -0.0134586
12-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0214617   -0.0402720   -0.0026514
12-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0219443   -0.0292341   -0.0146545
12-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0432264   -0.0598584   -0.0265945
12-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.0437834   -0.0881962    0.0006294
12-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.0365610   -0.0637751   -0.0093468
12-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0379111   -0.0545409   -0.0212814
12-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0227814   -0.0297169   -0.0158459
12-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0256518   -0.0356398   -0.0156637


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
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0817525   -0.1276557   -0.0358492
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0513652   -0.0995949   -0.0031355
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0555205   -0.1683636    0.0573226
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0590682   -0.1192981    0.0011618
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.1031254   -0.1805383   -0.0257124
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0383701   -0.0662718   -0.0104683
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0157363   -0.1643364    0.1328638
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0411239   -0.1974190    0.1151711
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0411792   -0.0720410   -0.0103175
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0178111   -0.0420517    0.0064296
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0611826   -0.1625866    0.0402215
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0175595   -0.0640924    0.0289734
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0002630   -0.1006727    0.1001467
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0296642   -0.0637272    0.0043987
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0600471   -0.1440882    0.0239941
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0183379   -0.0727549    0.1094308
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0004456   -0.0232194    0.0223283
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0033048   -0.0264464    0.0198369
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0349518   -0.1064158    0.0365122
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0086930   -0.0740579    0.0914440
6-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0096596   -0.0252635    0.0445827
6-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0123977   -0.0312604    0.0064650
6-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0020651   -0.0301852    0.0260550
6-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0070352   -0.0266967    0.0126263
6-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0339054   -0.0698534    0.0020425
6-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0295472   -0.0692175    0.0101232
12-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0024320   -0.0220500    0.0171860
12-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0029145   -0.0120894    0.0062604
12-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0005570   -0.0433372    0.0422231
12-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm           0.0066655   -0.0175622    0.0308931
12-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0151297   -0.0028883    0.0331477
12-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0122594   -0.0071393    0.0316580
