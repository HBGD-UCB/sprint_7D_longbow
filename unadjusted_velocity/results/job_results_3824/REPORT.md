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

**Outcome Variable:** y_rate_len

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
![](/tmp/77131702-1686-4a37-81c4-daa493fdb79e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/77131702-1686-4a37-81c4-daa493fdb79e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                3.6468114   3.6033788   3.6902440
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                3.4920879   3.4027512   3.5814246
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                3.5682294   3.4747579   3.6617010
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                3.1667466   3.0969989   3.2364943
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                3.0954520   2.8802077   3.3106962
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                3.0466623   2.9502925   3.1430321
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                2.8412635   2.7290976   2.9534295
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                2.5961163   2.4085600   2.7836725
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                2.7499467   2.6199767   2.8799166
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                2.7402067   2.4590963   3.0213171
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                2.6581135   2.5422535   2.7739735
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                2.6402523   2.4814604   2.7990443
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                1.9759003   1.9057450   2.0460556
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                1.8770998   1.8034484   1.9507513
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                1.9332958   1.8486358   2.0179559
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                2.0003581   1.9461897   2.0545264
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                1.8704267   1.6601132   2.0807401
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                1.9588819   1.8760217   2.0417421
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                2.0959961   2.0549214   2.1370707
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                2.0625817   1.8383679   2.2867954
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                2.0180506   1.9434364   2.0926648
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                1.8648547   1.7108707   2.0188386
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                1.7205451   1.6495259   1.7915643
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                1.9162695   1.8141898   2.0183492
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                1.1047200   1.0678749   1.1415651
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                1.0778395   1.0325306   1.1231484
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                1.0798757   1.0299573   1.1297941
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                1.0336622   0.8846071   1.1827173
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.9261208   0.8351486   1.0170929
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.0469355   0.9046775   1.1891934
6-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                1.1826796   1.1562012   1.2091581
6-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                1.1949545   1.1183735   1.2715355
6-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                1.1436042   1.1076252   1.1795832
6-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                1.4720529   1.4329434   1.5111624
6-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                1.4414265   1.3655592   1.5172939
6-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.4351026   1.3756533   1.4945520
6-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                1.0811113   1.0010865   1.1611360
6-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.9737627   0.9357636   1.0117618
6-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                1.0056549   0.9514151   1.0598946
12-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.8525044   0.8366777   0.8683311
12-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.8229104   0.7745670   0.8712538
12-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.8327770   0.8126380   0.8529161
12-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.8617531   0.8098773   0.9136289
12-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.8183421   0.6877341   0.9489501
12-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.8581098   0.7790927   0.9371268
12-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7911826   0.7409463   0.8414188
12-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.7885682   0.7673275   0.8098089
12-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.8045002   0.7742007   0.8347996


### Parameter: E(Y)


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                3.5844413   3.5457307   3.6231519
0-3 months     ki1101329-Keneba           GAMBIA      NA                   NA                3.1289757   3.0738379   3.1841134
0-3 months     ki1119695-PROBIT           BELARUS     NA                   NA                2.8334708   2.7205961   2.9463455
0-3 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                2.6646531   2.5748250   2.7544813
3-6 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                1.9381168   1.8722991   2.0039344
3-6 months     ki1101329-Keneba           GAMBIA      NA                   NA                1.9794873   1.9347361   2.0242384
3-6 months     ki1119695-PROBIT           BELARUS     NA                   NA                2.0916969   2.0506004   2.1327933
3-6 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                1.7979953   1.7423030   1.8536877
6-12 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                1.0908364   1.0624756   1.1191972
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.9947133   0.9228294   1.0665973
6-12 months    ki1101329-Keneba           GAMBIA      NA                   NA                1.1722791   1.1516434   1.1929147
6-12 months    ki1119695-PROBIT           BELARUS     NA                   NA                1.4698038   1.4307195   1.5088880
6-12 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.9973638   0.9680912   1.0266364
12-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.8443568   0.8321723   0.8565414
12-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.8608646   0.8094654   0.9122639
12-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7934317   0.7769015   0.8099619


### Parameter: ATE


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1547235   -0.2412894   -0.0681576
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0785820   -0.1882572    0.0310933
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0712946   -0.2975574    0.1549681
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1200842   -0.2390459   -0.0011225
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.2451472   -0.4016058   -0.0886887
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0913168   -0.1449447   -0.0376889
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0820932   -0.3861435    0.2219571
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0999544   -0.4228134    0.2229046
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0988005   -0.1618544   -0.0357465
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0426045   -0.0879008    0.0026919
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1299314   -0.3471086    0.0872459
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0414761   -0.1404712    0.0575189
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0334144   -0.2476294    0.1808006
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0779455   -0.1497715   -0.0061195
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1443095   -0.3138819    0.0252628
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0514148   -0.1333318    0.2361615
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0268805   -0.0836126    0.0298516
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0248443   -0.0824724    0.0327838
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.1075414   -0.2821649    0.0670821
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0132733   -0.1927723    0.2193188
6-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0122749   -0.0687545    0.0933042
6-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0390754   -0.0837475    0.0055966
6-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0306264   -0.0987789    0.0375262
6-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0369503   -0.0817400    0.0078394
6-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1073486   -0.1959370   -0.0187603
6-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0754564   -0.1721307    0.0212179
12-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0295940   -0.0804621    0.0212741
12-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0197274   -0.0453412    0.0058864
12-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0434110   -0.1660686    0.0792465
12-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0036434   -0.0735323    0.0662455
12-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0026144   -0.0571565    0.0519278
12-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0133176   -0.0453487    0.0719839
