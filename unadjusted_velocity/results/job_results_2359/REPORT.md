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
      W: []
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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/25f18566-c2b0-4806-b8a6-dccdd9cbaa12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/25f18566-c2b0-4806-b8a6-dccdd9cbaa12/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                3.6033278   3.5466867   3.6599689
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160                 NA                3.4509665   3.2983143   3.6036187
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170                NA                3.6191464   3.5610893   3.6772036
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)            NA                3.0921792   3.0233210   3.1610375
0-3 months     ki1101329-Keneba           GAMBIA      <160                 NA                2.9626362   2.5346251   3.3906474
0-3 months     ki1101329-Keneba           GAMBIA      >=170                NA                3.1853707   3.0948686   3.2758728
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)            NA                2.7489591   2.6290440   2.8688742
0-3 months     ki1119695-PROBIT           BELARUS     <160                 NA                2.5528705   2.3178064   2.7879346
0-3 months     ki1119695-PROBIT           BELARUS     >=170                NA                2.8455161   2.7330758   2.9579564
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)            NA                2.6925692   2.5673018   2.8178366
0-3 months     ki1135781-COHORTS          GUATEMALA   <160                 NA                2.5795051   2.4415207   2.7174895
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170                NA                3.0275882   2.7713471   3.2838293
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                1.9228678   1.8337234   2.0120121
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160                 NA                1.9201328   1.8203632   2.0199025
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170                NA                1.9787776   1.9102423   2.0473129
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)            NA                1.9561797   1.8949234   2.0174359
3-6 months     ki1101329-Keneba           GAMBIA      <160                 NA                1.9513970   1.6353274   2.2674666
3-6 months     ki1101329-Keneba           GAMBIA      >=170                NA                2.0108751   1.9441286   2.0776216
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)            NA                2.0211525   1.9638945   2.0784106
3-6 months     ki1119695-PROBIT           BELARUS     <160                 NA                2.0460180   1.8362703   2.2557656
3-6 months     ki1119695-PROBIT           BELARUS     >=170                NA                2.1007389   2.0591394   2.1423383
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)            NA                1.8726511   1.7920273   1.9532750
3-6 months     ki1135781-COHORTS          GUATEMALA   <160                 NA                1.7198005   1.6378350   1.8017660
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170                NA                1.7400858   1.5633073   1.9168644
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                1.0789514   1.0420587   1.1158440
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                1.0586939   0.9908011   1.1265868
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                1.1293259   1.0788106   1.1798413
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                1.0279267   0.9274765   1.1283769
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.9027195   0.7958087   1.0096304
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                1.0222137   0.8320525   1.2123750
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                1.1545693   1.1283357   1.1808029
6-12 months    ki1101329-Keneba           GAMBIA      <160                 NA                1.1591858   1.0526442   1.2657275
6-12 months    ki1101329-Keneba           GAMBIA      >=170                NA                1.1961761   1.1621274   1.2302249
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                1.4557045   1.4026751   1.5087338
6-12 months    ki1119695-PROBIT           BELARUS     <160                 NA                1.3904681   1.2605038   1.5204324
6-12 months    ki1119695-PROBIT           BELARUS     >=170                NA                1.4719420   1.4332988   1.5105852
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.9993855   0.9603083   1.0384627
6-12 months    ki1135781-COHORTS          GUATEMALA   <160                 NA                0.9695588   0.9241835   1.0149341
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170                NA                1.1546139   1.0351772   1.2740505
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.8317919   0.8159280   0.8476559
12-24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.7963109   0.7459205   0.8467014
12-24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.8642803   0.8446411   0.8839194
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                0.8371765   0.7649231   0.9094299
12-24 months   ki1119695-PROBIT           BELARUS     <160                 NA                0.8251266   0.7570004   0.8932529
12-24 months   ki1119695-PROBIT           BELARUS     >=170                NA                0.8640465   0.8116883   0.9164046
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.7932741   0.7698285   0.8167196
12-24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                0.7858493   0.7609414   0.8107573
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                0.8378083   0.7749680   0.9006486


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
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         -0.1523613   -0.3254656    0.0207430
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0158186   -0.0780903    0.1097276
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.1295430   -0.5630577    0.3039717
0-3 months     ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0931915   -0.0205278    0.2069108
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <160                 [160-170)         -0.1960886   -0.4042525    0.0120754
0-3 months     ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0965570    0.0534230    0.1396910
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.1130641   -0.2994283    0.0733001
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.3350189    0.0497972    0.6202407
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         -0.0027349   -0.1267741    0.1213043
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0559099   -0.0354491    0.1472688
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.0047827   -0.3267335    0.3171681
3-6 months     ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0546954   -0.0358994    0.1452903
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <160                 [160-170)          0.0248654   -0.1786394    0.2283703
3-6 months     ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0795863    0.0308841    0.1282886
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.1528506   -0.2678226   -0.0378787
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         -0.1325653   -0.3268611    0.0617305
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         -0.0202574   -0.0669405    0.0264256
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0503746   -0.0132105    0.1139597
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         -0.1252071   -0.2719047    0.0214904
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         -0.0057129   -0.2207747    0.2093488
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)          0.0046166   -0.1051073    0.1143404
6-12 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0416069   -0.0013759    0.0845897
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS     <160                 [160-170)         -0.0652364   -0.1998788    0.0694060
6-12 months    ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0162376   -0.0172954    0.0497705
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0298267   -0.0897095    0.0300561
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.1552284    0.0295616    0.2808952
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.0354810   -0.0883096    0.0173476
12-24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0324884    0.0072423    0.0577344
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)         -0.0120499   -0.1121102    0.0880103
12-24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0268699   -0.0337723    0.0875121
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0074247   -0.0416315    0.0267820
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.0445342   -0.0225374    0.1116059
