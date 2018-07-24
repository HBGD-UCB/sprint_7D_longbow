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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                    country     fhtcm        n_cell       n
-------------  -------------------------  ----------  ----------  -------  ------
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)      1277   11500
0-3 months     ki1119695-PROBIT           BELARUS     <160             52   11500
0-3 months     ki1119695-PROBIT           BELARUS     >=170         10171   11500
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)      1117   10104
3-6 months     ki1119695-PROBIT           BELARUS     <160             45   10104
3-6 months     ki1119695-PROBIT           BELARUS     >=170          8942   10104
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)      1089    9870
6-12 months    ki1119695-PROBIT           BELARUS     <160             42    9870
6-12 months    ki1119695-PROBIT           BELARUS     >=170          8739    9870
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)       253    2320
12-24 months   ki1119695-PROBIT           BELARUS     <160             15    2320
12-24 months   ki1119695-PROBIT           BELARUS     >=170          2052    2320
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)       527     931
12-24 months   ki1101329-Keneba           GAMBIA      <160             21     931
12-24 months   ki1101329-Keneba           GAMBIA      >=170           383     931
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)       555    1005
6-12 months    ki1101329-Keneba           GAMBIA      <160             25    1005
6-12 months    ki1101329-Keneba           GAMBIA      >=170           425    1005
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)       529     965
0-3 months     ki1101329-Keneba           GAMBIA      <160             23     965
0-3 months     ki1101329-Keneba           GAMBIA      >=170           413     965
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)       569    1037
3-6 months     ki1101329-Keneba           GAMBIA      <160             24    1037
3-6 months     ki1101329-Keneba           GAMBIA      >=170           444    1037
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)       131     261
3-6 months     ki1135781-COHORTS          GUATEMALA   <160            111     261
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170            19     261
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)       164     329
6-12 months    ki1135781-COHORTS          GUATEMALA   <160            142     329
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170            23     329
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)       206     421
12-24 months   ki1135781-COHORTS          GUATEMALA   <160            183     421
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170            32     421
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)        88     180
0-3 months     ki1135781-COHORTS          GUATEMALA   <160             80     180
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170            12     180
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)       412     716
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160            109     716
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170           195     716
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)       389     682
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160            102     682
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170           191     682
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)       387     679
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160             94     679
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170           198     679
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)       199     328
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160             85     328
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170            44     328


The following strata were considered:

* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* diffcat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8340d8fd-f549-4f6e-9800-3076f49afb2a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8340d8fd-f549-4f6e-9800-3076f49afb2a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0117351   -0.0131329    0.0366031
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160                 NA                -0.0610327   -0.1435675    0.0215021
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170                NA                 0.0310840    0.0097076    0.0524605
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.3156532   -0.3501413   -0.2811650
0-3 months     ki1101329-Keneba           GAMBIA      <160                 NA                -0.3878102   -0.5990354   -0.1765851
0-3 months     ki1101329-Keneba           GAMBIA      >=170                NA                -0.2651800   -0.3118273   -0.2185326
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.4748465   -0.5372677   -0.4124252
0-3 months     ki1119695-PROBIT           BELARUS     <160                 NA                -0.5539648   -0.6776166   -0.4303131
0-3 months     ki1119695-PROBIT           BELARUS     >=170                NA                -0.4337496   -0.4923505   -0.3751487
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.4935801   -0.5545369   -0.4326232
0-3 months     ki1135781-COHORTS          GUATEMALA   <160                 NA                -0.5299265   -0.5983824   -0.4614706
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170                NA                -0.3652820   -0.4991542   -0.2314098
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0260570   -0.0664028    0.0142887
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160                 NA                -0.0196755   -0.0629901    0.0236391
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170                NA                 0.0021438   -0.0274970    0.0317845
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0345709   -0.0631943   -0.0059475
3-6 months     ki1101329-Keneba           GAMBIA      <160                 NA                -0.0261402   -0.1749792    0.1226988
3-6 months     ki1101329-Keneba           GAMBIA      >=170                NA                -0.0111050   -0.0425744    0.0203644
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)            NA                 0.0204584   -0.0066603    0.0475772
3-6 months     ki1119695-PROBIT           BELARUS     <160                 NA                 0.0419041   -0.0556446    0.1394528
3-6 months     ki1119695-PROBIT           BELARUS     >=170                NA                 0.0501718    0.0306347    0.0697089
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0411125   -0.0791351   -0.0030899
3-6 months     ki1135781-COHORTS          GUATEMALA   <160                 NA                -0.1020145   -0.1414055   -0.0626235
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170                NA                -0.1176298   -0.2040338   -0.0312258
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0927464   -0.1084816   -0.0770113
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                -0.0945277   -0.1237374   -0.0653180
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                -0.0790450   -0.0989921   -0.0590979
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                -0.1021807   -0.1425067   -0.0618547
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                -0.1511644   -0.1958726   -0.1064562
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                -0.1085382   -0.1881087   -0.0289678
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0698351   -0.0809194   -0.0587508
6-12 months    ki1101329-Keneba           GAMBIA      <160                 NA                -0.0653832   -0.1111649   -0.0196015
6-12 months    ki1101329-Keneba           GAMBIA      >=170                NA                -0.0581866   -0.0725458   -0.0438274
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                 0.0430414    0.0204463    0.0656364
6-12 months    ki1119695-PROBIT           BELARUS     <160                 NA                 0.0190922   -0.0364150    0.0745995
6-12 months    ki1119695-PROBIT           BELARUS     >=170                NA                 0.0416349    0.0250819    0.0581880
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.1156727   -0.1320167   -0.0993288
6-12 months    ki1135781-COHORTS          GUATEMALA   <160                 NA                -0.1222600   -0.1409707   -0.1035492
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170                NA                -0.0583483   -0.1070108   -0.0096858
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0214765   -0.0272863   -0.0156668
12-24 months   ki1101329-Keneba           GAMBIA      <160                 NA                -0.0254189   -0.0429976   -0.0078402
12-24 months   ki1101329-Keneba           GAMBIA      >=170                NA                -0.0178689   -0.0247454   -0.0109924
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0428545   -0.0664896   -0.0192194
12-24 months   ki1119695-PROBIT           BELARUS     <160                 NA                -0.0457083   -0.0658758   -0.0255408
12-24 months   ki1119695-PROBIT           BELARUS     >=170                NA                -0.0428974   -0.0596876   -0.0261071
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0265187   -0.0344791   -0.0185584
12-24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                -0.0247565   -0.0327956   -0.0167173
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                -0.0255244   -0.0451285   -0.0059204


### Parameter: E(Y)


diffcat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
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


diffcat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         -0.0727679   -0.1595958    0.0140601
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0193489   -0.0155683    0.0542660
0-3 months     ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.0721571   -0.2861792    0.1418651
0-3 months     ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0504732   -0.0075390    0.1084853
0-3 months     ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <160                 [160-170)         -0.0791184   -0.1896467    0.0314099
0-3 months     ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0410969    0.0188558    0.0633379
0-3 months     ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0363464   -0.1280086    0.0553157
0-3 months     ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.1282981   -0.0187989    0.2753950
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)          0.0063815   -0.0515260    0.0642890
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0282008   -0.0129434    0.0693450
3-6 months     ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <160                 [160-170)          0.0084306   -0.1431356    0.1599969
3-6 months     ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0234658   -0.0190738    0.0660055
3-6 months     ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <160                 [160-170)          0.0214457   -0.0738518    0.1167432
3-6 months     ki1119695-PROBIT           BELARUS     >=170                [160-170)          0.0297133    0.0066929    0.0527338
3-6 months     ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0609020   -0.1156502   -0.0061537
3-6 months     ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         -0.0765173   -0.1709174    0.0178828
6-12 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         -0.0017813   -0.0203991    0.0168366
6-12 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)          0.0137014   -0.0116809    0.0390838
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         -0.0489837   -0.1091918    0.0112243
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         -0.0063575   -0.0955631    0.0828481
6-12 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)          0.0044519   -0.0426525    0.0515563
6-12 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0116485   -0.0064912    0.0297882
6-12 months    ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS     <160                 [160-170)         -0.0239492   -0.0809961    0.0330978
6-12 months    ki1119695-PROBIT           BELARUS     >=170                [160-170)         -0.0014064   -0.0157559    0.0129430
6-12 months    ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         -0.0065872   -0.0314311    0.0182566
6-12 months    ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.0573244    0.0059906    0.1086582
12-24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         -0.0039423   -0.0224562    0.0145715
12-24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)          0.0036076   -0.0053946    0.0126098
12-24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)         -0.0028538   -0.0337947    0.0280871
12-24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         -0.0000429   -0.0200002    0.0199144
12-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)          0.0017623   -0.0095512    0.0130758
12-24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)          0.0009943   -0.0201643    0.0221529
