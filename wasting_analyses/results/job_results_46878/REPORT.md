# Risk Factor Analysis







## Methods
## Outcome Variable

**Outcome Variable:** whz

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

agecat      studyid                    country     fhtcm           n_cell       n
----------  -------------------------  ----------  -------------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm            46      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm             20      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        24      90
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           710    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm             81    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       288    1079
Birth       ki1119695-PROBIT           BELARUS     >=167 cm         11684   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm            168   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm       622   12474
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm            26     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm            112     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm        54     192
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           370     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            193     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       121     371
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       418    1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11143   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11892
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            44     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            198     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           823    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm             96    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3387    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm             52    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       170    3609
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            72     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            311     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     532


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
![](/tmp/ae3e2e97-c150-455d-bef7-9ec65674474f/ede86dec-f468-4509-99d0-85627e117047/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ae3e2e97-c150-455d-bef7-9ec65674474f/ede86dec-f468-4509-99d0-85627e117047/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ae3e2e97-c150-455d-bef7-9ec65674474f/ede86dec-f468-4509-99d0-85627e117047/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1145847   -0.4775432    0.2483737
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.3161775   -1.0310714    0.3987165
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0862460   -0.6785350    0.5060430
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                 1.6410651    1.5228362    1.7592940
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                 1.9220003    1.5248994    2.3191013
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                 1.7602047    1.5865691    1.9338403
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -1.1343614   -1.3456090   -0.9231138
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                -1.1362546   -1.2165797   -1.0559295
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -1.1780848   -1.4034149   -0.9527548
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.3599120   -0.9245838    0.2047598
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.5128359   -0.8265077   -0.1991640
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.7272536   -1.1077489   -0.3467583
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5530680   -0.7475827   -0.3585533
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7584375   -0.9773442   -0.5395308
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7331331   -0.8416653   -0.6246009
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8735307   -1.0777126   -0.6693488
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2490549   -1.4315090   -1.0666007
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8441878   -1.0654343   -0.6229414
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2699437   -0.3432865   -0.1966009
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.1851813   -0.4412536    0.0708909
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1859687   -0.2944382   -0.0774992
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5818945    0.5227029    0.6410861
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6284403    0.5726161    0.6842645
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.4931603    0.3978082    0.5885124
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0941696   -0.2668095    0.4551488
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.0971617   -0.0670277    0.2613511
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.0674326   -0.1877210    0.3225862
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8077287   -0.8779027   -0.7375547
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.8998475   -1.1662768   -0.6334183
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7933938   -0.8857520   -0.7010356
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6860546    0.5728145    0.7992946
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.6345903    0.1071854    1.1619953
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.4883183    0.2253852    0.7512514
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1837763   -0.3789788    0.0114263
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3114991   -0.4193372   -0.2036610
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.2969833   -0.4518947   -0.1420718


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.1156667   -0.4507658    0.2194325
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                 1.7064875    1.6129215    1.8000534
Birth       ki1119695-PROBIT           BELARUS     NA                   NA                -1.1390957   -1.3485249   -0.9296665
Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.5450521   -0.7653906   -0.3247135
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.6502726   -0.7957520   -0.5047932
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.9997844   -1.1172238   -0.8823449
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.2272250   -0.2854487   -0.1690012
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.5791961    0.5216790    0.6367132
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                 0.0909226   -0.0348636    0.2167089
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                 0.6773192    0.5626171    0.7920213
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.3002632   -0.3780672   -0.2224591


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2015927   -0.9535646    0.5503792
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0283387   -0.6579085    0.7145860
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.2809353   -0.1332525    0.6951231
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.1191396   -0.0910294    0.3293087
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0018932   -0.1645009    0.1607145
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0437234   -0.1774779    0.0900310
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1529239   -0.8037445    0.4978968
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.3673416   -1.0477060    0.3130229
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2053695   -0.3855721   -0.0251669
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1800651   -0.3371105   -0.0230196
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3755241   -0.6497000   -0.1013483
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0293429   -0.2729321    0.3316179
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0847624   -0.1816135    0.3511383
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0839750   -0.0469884    0.2149385
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0465458   -0.0250638    0.1181553
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0887342   -0.1805285    0.0030600
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0029921   -0.3928031    0.3987873
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0267370   -0.4690928    0.4156187
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0921188   -0.3678852    0.1836476
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0143349   -0.1017372    0.1304070
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0514643   -0.5316808    0.4287522
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1977363   -0.4441318    0.0486593
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1277229   -0.3506722    0.0952264
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1132070   -0.3624594    0.1360454


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0010819   -0.3114889    0.3093251
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0654224   -0.0044415    0.1352864
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0047343   -0.0115217    0.0020531
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1851401   -0.7215306    0.3512504
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0972046   -0.1693575   -0.0250516
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1262536   -0.3083533    0.0558461
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0427187   -0.0027231    0.0881605
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0026984   -0.0079476    0.0025507
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0032470   -0.3483849    0.3418909
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0113511   -0.0315356    0.0542378
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0087354   -0.0196470    0.0021763
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1164869   -0.3052853    0.0723115
