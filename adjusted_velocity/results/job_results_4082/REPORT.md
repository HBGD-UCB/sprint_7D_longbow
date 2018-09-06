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
![](/tmp/78606306-2b2b-4d7d-8b76-10c66cb85f44/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/78606306-2b2b-4d7d-8b76-10c66cb85f44/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                3.6265579   3.5897823   3.6633335
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                3.4897745   3.4261235   3.5534256
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                3.5541379   3.4734074   3.6348684
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                3.1533553   3.0879859   3.2187247
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                3.0421713   2.9321766   3.1521660
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                3.0599233   2.9836739   3.1361727
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                2.8397992   2.7283446   2.9512539
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                2.8164569   2.7564627   2.8764512
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                2.7695982   2.6727388   2.8664577
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                2.8930278   2.7234896   3.0625660
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                2.6675122   2.5605335   2.7744908
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                2.6814427   2.5623857   2.8004996
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                2.0185736   1.9534909   2.0836562
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                1.9752913   1.9201482   2.0304344
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                2.0048788   1.9242897   2.0854679
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                1.9994044   1.9477729   2.0510360
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                1.9630209   1.8705633   2.0554785
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                1.9520706   1.8842542   2.0198870
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                2.0940789   2.0531524   2.1350054
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                2.1067212   2.0333732   2.1800693
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.8691152   1.8252137   1.9130167
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                1.9173003   1.8464854   1.9881152
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                1.7196855   1.6584461   1.7809248
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                1.9616084   1.8873733   2.0358435
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                1.0895533   1.0588052   1.1203013
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                1.0654498   1.0254167   1.1054829
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                1.0582466   1.0124882   1.1040051
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                1.0440822   0.9045707   1.1835936
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.9299315   0.8430042   1.0168589
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.0417100   0.9100304   1.1733896
6-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                1.1733968   1.1485216   1.1982720
6-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                1.2062541   1.1601295   1.2523787
6-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                1.1453805   1.1176705   1.1730906
6-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                1.4714077   1.4324644   1.5103511
6-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                1.2892443   1.2528602   1.3256284
6-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.4149485   1.3651174   1.4647797
6-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                1.3997023   1.3629344   1.4364702
6-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.9978704   0.9644377   1.0313031
6-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                1.1042737   1.0674371   1.1411103
12-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.8548072   0.8398902   0.8697242
12-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.7972269   0.7670297   0.8274241
12-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.8304382   0.8140126   0.8468639
12-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.8616446   0.8104902   0.9127990
12-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                1.1687671   1.1258328   1.2117015
12-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.0129911   0.9755309   1.0504513
12-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7411315   0.7202706   0.7619923
12-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.7813332   0.7627312   0.7999353
12-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7896443   0.7707458   0.8085429


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
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1367834   -0.1976369   -0.0759298
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0724200   -0.1639891    0.0191491
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1111840   -0.2371796    0.0148116
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0934320   -0.1912801    0.0044161
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0233423   -0.1183574    0.0716728
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0702010   -0.1169147   -0.0234873
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.2255156   -0.4236945   -0.0273367
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.2115851   -0.4175216   -0.0056487
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0432823   -0.0975280    0.0109635
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0136948   -0.0568245    0.0294350
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0363836   -0.1412089    0.0684418
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0473338   -0.1312676    0.0365999
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0126423   -0.0687325    0.0940171
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.2249637   -0.2762272   -0.1737002
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1976148   -0.2898538   -0.1053757
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0443081   -0.0575784    0.1461946
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0241035   -0.0701557    0.0219488
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0313066   -0.0769208    0.0143075
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.1141506   -0.2764199    0.0481186
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0023722   -0.1896491    0.1849047
6-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0328573   -0.0189200    0.0846346
6-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0280163   -0.0644824    0.0084499
6-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.1821634   -0.2283788   -0.1359480
6-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0564592   -0.1063363   -0.0065821
6-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.4018319   -0.4519664   -0.3516974
6-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.2954286   -0.3477106   -0.2431465
12-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0575803   -0.0910020   -0.0241585
12-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0243690   -0.0462037   -0.0025342
12-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.3071226    0.2574669    0.3567783
12-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm           0.1513465    0.1080561    0.1946369
12-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0402018    0.0129754    0.0674281
12-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0485128    0.0211902    0.0758355
