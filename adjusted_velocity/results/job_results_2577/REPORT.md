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
![](/tmp/3ef0c2dd-ac1c-45a4-b2ca-51b69348e0ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3ef0c2dd-ac1c-45a4-b2ca-51b69348e0ca/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                3.6018015   3.5526342   3.6509688
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160                 NA                3.4753648   3.3635666   3.5871630
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170                NA                3.6068830   3.5510059   3.6627601
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)            NA                3.0794493   3.0167511   3.1421475
0-3 months     ki1101329-Keneba           GAMBIA      <160                 NA                2.5328001   2.4068376   2.6587626
0-3 months     ki1101329-Keneba           GAMBIA      >=170                NA                3.1308074   3.0535652   3.2080496
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)            NA                2.7974332   2.7007444   2.8941220
0-3 months     ki1119695-PROBIT           BELARUS     <160                 NA                2.7194286   2.6702445   2.7686127
0-3 months     ki1119695-PROBIT           BELARUS     >=170                NA                2.8434241   2.7321394   2.9547087
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)            NA                2.7532918   2.6585637   2.8480200
0-3 months     ki1135781-COHORTS          GUATEMALA   <160                 NA                2.6329225   2.5343139   2.7315310
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170                NA                3.7191567   3.6596940   3.7786193
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                1.9233472   1.8394242   2.0072701
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160                 NA                1.9258928   1.8391799   2.0126057
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170                NA                1.9723202   1.9062533   2.0383871
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)            NA                1.9588251   1.9035835   2.0140668
3-6 months     ki1101329-Keneba           GAMBIA      <160                 NA                2.1525412   2.0856227   2.2194597
3-6 months     ki1101329-Keneba           GAMBIA      >=170                NA                2.0084166   1.9497989   2.0670343
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)            NA                2.0214352   1.9772292   2.0656411
3-6 months     ki1119695-PROBIT           BELARUS     <160                 NA                2.4225308   2.3831710   2.4618906
3-6 months     ki1119695-PROBIT           BELARUS     >=170                NA                2.0990885   2.0576122   2.1405648
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)            NA                1.8528290   1.7862891   1.9193689
3-6 months     ki1135781-COHORTS          GUATEMALA   <160                 NA                1.7068267   1.6404787   1.7731747
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170                NA                1.5304095   1.4803438   1.5804753
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                1.0802761   1.0440872   1.1164651
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                1.0741061   1.0162986   1.1319136
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                1.1202773   1.0765622   1.1639923
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                1.0295274   0.9377834   1.1212715
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.9096433   0.8198301   0.9994566
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                1.0419596   0.8897097   1.1942096
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                1.1619074   1.1379718   1.1858431
6-12 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.9916717   0.9712816   1.0120617
6-12 months    ki1101329-Keneba           GAMBIA      >=170                NA                1.1907562   1.1607824   1.2207299
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                1.4239886   1.3822654   1.4657117
6-12 months    ki1119695-PROBIT           BELARUS     <160                 NA                1.3241849   1.3101802   1.3381897
6-12 months    ki1119695-PROBIT           BELARUS     >=170                NA                1.4708256   1.4323147   1.5093366
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                1.0535320   1.0206972   1.0863668
6-12 months    ki1135781-COHORTS          GUATEMALA   <160                 NA                1.0136661   0.9770163   1.0503158
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170                NA                1.6030347   1.5727958   1.6332736
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.8306251   0.8157572   0.8454929
12-24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.7985069   0.7862736   0.8107402
12-24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.8684117   0.8508183   0.8860051
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                0.8761187   0.8189829   0.9332546
12-24 months   ki1119695-PROBIT           BELARUS     <160                 NA                1.5688825   1.5579696   1.5797954
12-24 months   ki1119695-PROBIT           BELARUS     >=170                NA                0.8649315   0.8129690   0.9168940
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.8242227   0.8052383   0.8432071
12-24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                0.8086492   0.7884110   0.8288875
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                1.1943037   1.1729947   1.2156127


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
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         -0.1264367   -0.2467049   -0.0061685
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0050815   -0.0764922    0.0866553
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.5466492   -0.6859036   -0.4073948
0-3 months     ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0513581   -0.0456780    0.1483942
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <160                 [160-170)         -0.0780046   -0.1542776   -0.0017317
0-3 months     ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0459908    0.0043542    0.0876274
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.1203694   -0.2366042   -0.0041346
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.9658648    0.8578760    1.0738536
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)          0.0025456   -0.0995040    0.1045952
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0489730   -0.0312011    0.1291470
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <160                 [160-170)          0.1937161    0.1087195    0.2787126
3-6 months     ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0495914   -0.0299944    0.1291772
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <160                 [160-170)          0.4010956    0.3404413    0.4617500
3-6 months     ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0776533    0.0375071    0.1177996
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.1460023   -0.2339346   -0.0580701
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         -0.3224195   -0.4006824   -0.2441566
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         -0.0061700   -0.0415240    0.0291839
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0400011   -0.0161816    0.0961839
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         -0.1198841   -0.2449813    0.0052131
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)          0.0124322   -0.1548846    0.1797490
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.1702358   -0.2005685   -0.1399031
6-12 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0288487   -0.0087270    0.0664245
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS     <160                 [160-170)         -0.0998036   -0.1366865   -0.0629207
6-12 months    ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0468371    0.0168386    0.0768356
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0398660   -0.0895519    0.0098200
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.5495027    0.5039864    0.5950189
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.0321181   -0.0510321   -0.0132042
12-24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0377867    0.0150719    0.0605014
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)          0.6927637    0.6345580    0.7509695
12-24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         -0.0111872   -0.0617597    0.0393853
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0155735   -0.0434023    0.0122553
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.3700810    0.3400723    0.4000897
