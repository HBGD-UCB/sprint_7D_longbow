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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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

agecat         studyid                    country     fhtcm        n_cell       n
-------------  -------------------------  ----------  ----------  -------  ------
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)      1277   11500
0-3 months     ki1119695-PROBIT           BELARUS     <160             52   11500
0-3 months     ki1119695-PROBIT           BELARUS     >=170         10171   11500
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)       529     965
0-3 months     ki1101329-Keneba           GAMBIA      <160             23     965
0-3 months     ki1101329-Keneba           GAMBIA      >=170           413     965
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)        88     180
0-3 months     ki1135781-COHORTS          GUATEMALA   <160             80     180
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170            12     180
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)       412     716
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160            109     716
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170           195     716
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)      1117   10104
3-6 months     ki1119695-PROBIT           BELARUS     <160             45   10104
3-6 months     ki1119695-PROBIT           BELARUS     >=170          8942   10104
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)       569    1037
3-6 months     ki1101329-Keneba           GAMBIA      <160             24    1037
3-6 months     ki1101329-Keneba           GAMBIA      >=170           444    1037
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)       131     261
3-6 months     ki1135781-COHORTS          GUATEMALA   <160            111     261
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170            19     261
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)       389     682
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160            102     682
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170           191     682
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)      1089    9870
6-12 months    ki1119695-PROBIT           BELARUS     <160             42    9870
6-12 months    ki1119695-PROBIT           BELARUS     >=170          8739    9870
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)       555    1005
6-12 months    ki1101329-Keneba           GAMBIA      <160             25    1005
6-12 months    ki1101329-Keneba           GAMBIA      >=170           425    1005
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)       164     329
6-12 months    ki1135781-COHORTS          GUATEMALA   <160            142     329
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170            23     329
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)       387     679
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160             94     679
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170           198     679
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)       199     328
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160             85     328
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170            44     328
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)       253    2320
12-24 months   ki1119695-PROBIT           BELARUS     <160             15    2320
12-24 months   ki1119695-PROBIT           BELARUS     >=170          2052    2320
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)       527     931
12-24 months   ki1101329-Keneba           GAMBIA      <160             21     931
12-24 months   ki1101329-Keneba           GAMBIA      >=170           383     931
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)       206     421
12-24 months   ki1135781-COHORTS          GUATEMALA   <160            183     421
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170            32     421


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
![](/tmp/46832571-436b-4e90-87a9-a8b0b7e702d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/46832571-436b-4e90-87a9-a8b0b7e702d7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0087803   -0.0132255    0.0307861
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160                 NA                -0.0908302   -0.1525247   -0.0291356
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170                NA                 0.0091796   -0.0129150    0.0312741
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.3218468   -0.3528205   -0.2908730
0-3 months     ki1101329-Keneba           GAMBIA      <160                 NA                -0.5969295   -0.6605782   -0.5332808
0-3 months     ki1101329-Keneba           GAMBIA      >=170                NA                -0.2937597   -0.3329459   -0.2545736
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.4498760   -0.5003851   -0.3993669
0-3 months     ki1119695-PROBIT           BELARUS     <160                 NA                -0.4131817   -0.4397048   -0.3866586
0-3 months     ki1119695-PROBIT           BELARUS     >=170                NA                -0.4344822   -0.4924874   -0.3764771
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.4589078   -0.5066808   -0.4111349
0-3 months     ki1135781-COHORTS          GUATEMALA   <160                 NA                -0.4991372   -0.5506563   -0.4476180
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170                NA                -0.0047460   -0.0429488    0.0334568
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0252468   -0.0637325    0.0132389
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160                 NA                -0.0140797   -0.0494904    0.0213309
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170                NA                -0.0009058   -0.0289967    0.0271852
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0339037   -0.0597969   -0.0080104
3-6 months     ki1101329-Keneba           GAMBIA      <160                 NA                 0.0564646    0.0171702    0.0957590
3-6 months     ki1101329-Keneba           GAMBIA      >=170                NA                -0.0118591   -0.0397052    0.0159870
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)            NA                 0.0192928   -0.0018041    0.0403897
3-6 months     ki1119695-PROBIT           BELARUS     <160                 NA                 0.2209221    0.2022014    0.2396428
3-6 months     ki1119695-PROBIT           BELARUS     >=170                NA                 0.0496544    0.0301683    0.0691405
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0479768   -0.0814011   -0.0145526
3-6 months     ki1135781-COHORTS          GUATEMALA   <160                 NA                -0.1108970   -0.1446554   -0.0771386
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170                NA                -0.2440837   -0.2740981   -0.2140692
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0927847   -0.1079851   -0.0775842
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                -0.0906779   -0.1171249   -0.0642309
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                -0.0801235   -0.0974672   -0.0627797
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                -0.0981967   -0.1362187   -0.0601748
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                -0.1319814   -0.1721634   -0.0917994
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                -0.0480492   -0.1127960    0.0166976
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0666493   -0.0766908   -0.0566078
6-12 months    ki1101329-Keneba           GAMBIA      <160                 NA                -0.1279079   -0.1371663   -0.1186496
6-12 months    ki1101329-Keneba           GAMBIA      >=170                NA                -0.0599085   -0.0725377   -0.0472794
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                 0.0291161    0.0108352    0.0473969
6-12 months    ki1119695-PROBIT           BELARUS     <160                 NA                -0.0105613   -0.0161753   -0.0049472
6-12 months    ki1119695-PROBIT           BELARUS     >=170                NA                 0.0413850    0.0248901    0.0578798
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0950955   -0.1089975   -0.0811934
6-12 months    ki1135781-COHORTS          GUATEMALA   <160                 NA                -0.1039576   -0.1194085   -0.0885067
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170                NA                 0.1385665    0.1249003    0.1522327
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0211987   -0.0267159   -0.0156815
12-24 months   ki1101329-Keneba           GAMBIA      <160                 NA                -0.0014787   -0.0068214    0.0038639
12-24 months   ki1101329-Keneba           GAMBIA      >=170                NA                -0.0161128   -0.0224025   -0.0098231
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0277818   -0.0447933   -0.0107703
12-24 months   ki1119695-PROBIT           BELARUS     <160                 NA                 0.2161965    0.2117810    0.2206120
12-24 months   ki1119695-PROBIT           BELARUS     >=170                NA                -0.0426691   -0.0593819   -0.0259563
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0219268   -0.0284772   -0.0153764
12-24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                -0.0216412   -0.0282669   -0.0150156
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                 0.0072773    0.0014595    0.0130952


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
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         -0.0996105   -0.1611041   -0.0381169
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0003992   -0.0308646    0.0316631
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.2750827   -0.3448915   -0.2052739
0-3 months     ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0280870   -0.0206093    0.0767833
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <160                 [160-170)          0.0366942   -0.0039081    0.0772966
0-3 months     ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0153937   -0.0063937    0.0371812
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0402293   -0.1016293    0.0211706
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.4541618    0.3959616    0.5123621
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)          0.0111671   -0.0359325    0.0582667
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0243411   -0.0132527    0.0619348
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <160                 [160-170)          0.0903683    0.0441016    0.1366350
3-6 months     ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0220446   -0.0153358    0.0594250
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <160                 [160-170)          0.2016294    0.1723702    0.2308885
3-6 months     ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0303616    0.0111154    0.0496078
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0629202   -0.1095884   -0.0162520
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         -0.1961068   -0.2405402   -0.1516735
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)          0.0021068   -0.0131692    0.0173827
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0126612   -0.0088926    0.0342151
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         -0.0337847   -0.0879192    0.0203497
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)          0.0501475   -0.0224542    0.1227491
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.0612587   -0.0745297   -0.0479876
6-12 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0067407   -0.0090294    0.0225109
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS     <160                 [160-170)         -0.0396773   -0.0555572   -0.0237975
6-12 months    ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0122689   -0.0010360    0.0255738
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0088622   -0.0298246    0.0121002
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.2336620    0.2138303    0.2534936
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)          0.0197200    0.0121595    0.0272805
12-24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0050859   -0.0031767    0.0133485
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)          0.2439783    0.2275445    0.2604121
12-24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         -0.0148873   -0.0300484    0.0002738
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)          0.0002856   -0.0090085    0.0095797
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.0292041    0.0203423    0.0380659
