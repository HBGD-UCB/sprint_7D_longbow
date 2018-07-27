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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country     fhtcm        ever_stunted   n_cell       n
------------  -------------------------  ----------  ----------  -------------  -------  ------
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)               0      368     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)               1      149     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <160                    0       81     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <160                    1       54     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                   0      194     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                   1       59     905
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)               0      148     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)               1       91     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                    0       55     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                    1       48     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                   0       42     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                   1       13     397
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)               0      851    1723
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)               1       86    1723
0-6 months    ki1101329-Keneba           GAMBIA      <160                    0       32    1723
0-6 months    ki1101329-Keneba           GAMBIA      <160                    1        6    1723
0-6 months    ki1101329-Keneba           GAMBIA      >=170                   0      697    1723
0-6 months    ki1101329-Keneba           GAMBIA      >=170                   1       51    1723
0-6 months    ki1119695-PROBIT           BELARUS     [160-170)               0     1384   12537
0-6 months    ki1119695-PROBIT           BELARUS     [160-170)               1        3   12537
0-6 months    ki1119695-PROBIT           BELARUS     <160                    0       54   12537
0-6 months    ki1119695-PROBIT           BELARUS     <160                    1        0   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=170                   0    11070   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=170                   1       26   12537
0-6 months    ki1135781-COHORTS          GUATEMALA   [160-170)               0      132     337
0-6 months    ki1135781-COHORTS          GUATEMALA   [160-170)               1       29     337
0-6 months    ki1135781-COHORTS          GUATEMALA   <160                    0      115     337
0-6 months    ki1135781-COHORTS          GUATEMALA   <160                    1       35     337
0-6 months    ki1135781-COHORTS          GUATEMALA   >=170                   0       22     337
0-6 months    ki1135781-COHORTS          GUATEMALA   >=170                   1        4     337
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)               0      192     567
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)               1      120     567
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                    0       32     567
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                    1       30     567
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                   0      144     567
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                   1       49     567
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)               0       62     220
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)               1       77     220
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                    0       15     220
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                    1       33     220
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                   0       17     220
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                   1       16     220
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)               0      569    1615
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)               1      280    1615
6-24 months   ki1101329-Keneba           GAMBIA      <160                    0       23    1615
6-24 months   ki1101329-Keneba           GAMBIA      <160                    1       11    1615
6-24 months   ki1101329-Keneba           GAMBIA      >=170                   0      579    1615
6-24 months   ki1101329-Keneba           GAMBIA      >=170                   1      153    1615
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)               0     1254   12346
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)               1       94   12346
6-24 months   ki1119695-PROBIT           BELARUS     <160                    0       44   12346
6-24 months   ki1119695-PROBIT           BELARUS     <160                    1        5   12346
6-24 months   ki1119695-PROBIT           BELARUS     >=170                   0    10520   12346
6-24 months   ki1119695-PROBIT           BELARUS     >=170                   1      429   12346
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)               0       43     239
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)               1       84     239
6-24 months   ki1135781-COHORTS          GUATEMALA   <160                    0       28     239
6-24 months   ki1135781-COHORTS          GUATEMALA   <160                    1       59     239
6-24 months   ki1135781-COHORTS          GUATEMALA   >=170                   0       17     239
6-24 months   ki1135781-COHORTS          GUATEMALA   >=170                   1        8     239
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)               0      177     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)               1      341     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                    0       38     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                    1       98     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                   0      127     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                   1      126     907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)               0       60     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)               1      180     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                    0       18     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                    1       86     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                   0       17     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                   1       38     399
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)               0      558    1929
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)               1      490    1929
0-24 months   ki1101329-Keneba           GAMBIA      <160                    0       20    1929
0-24 months   ki1101329-Keneba           GAMBIA      <160                    1       20    1929
0-24 months   ki1101329-Keneba           GAMBIA      >=170                   0      570    1929
0-24 months   ki1101329-Keneba           GAMBIA      >=170                   1      271    1929
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)               0     1167   12537
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)               1      220   12537
0-24 months   ki1119695-PROBIT           BELARUS     <160                    0       40   12537
0-24 months   ki1119695-PROBIT           BELARUS     <160                    1       14   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=170                   0    10101   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=170                   1      995   12537
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)               0       41     496
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)               1      199     496
0-24 months   ki1135781-COHORTS          GUATEMALA   <160                    0       27     496
0-24 months   ki1135781-COHORTS          GUATEMALA   <160                    1      195     496
0-24 months   ki1135781-COHORTS          GUATEMALA   >=170                   0       15     496
0-24 months   ki1135781-COHORTS          GUATEMALA   >=170                   1       19     496


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3d383199-a511-4449-a598-756918817339/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d383199-a511-4449-a598-756918817339/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d383199-a511-4449-a598-756918817339/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d383199-a511-4449-a598-756918817339/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.6583012    0.5967375   0.7198649
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.7205882    0.6094779   0.8316985
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.4980237    0.4421210   0.5539265
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.7500000    0.6951486   0.8048514
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.8269231    0.7541236   0.8997226
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.6909091    0.5686263   0.8131918
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.4675573    0.4373415   0.4977730
0-24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.5000000    0.3450111   0.6549889
0-24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.3222354    0.2906426   0.3538283
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                0.1586157    0.1279943   0.1892372
0-24 months   ki1119695-PROBIT           BELARUS     <160                 NA                0.2592593    0.1041328   0.4143857
0-24 months   ki1119695-PROBIT           BELARUS     >=170                NA                0.0896720    0.0746330   0.1047109
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.8291667    0.7815029   0.8768304
0-24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                0.8783784    0.8353400   0.9214168
0-24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                0.5588235    0.3917566   0.7258904
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.2882012    0.2416965   0.3347059
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.4000000    0.3176566   0.4823434
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.2332016    0.1817604   0.2846427
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.3807531    0.3191149   0.4423914
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.4660194    0.3695606   0.5624782
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.2363636    0.1239425   0.3487848
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                0.0917823    0.0732905   0.1102741
0-6 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.1578947    0.0419237   0.2738657
0-6 months    ki1101329-Keneba           GAMBIA      >=170                NA                0.0681818    0.0501133   0.0862504
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.3846154    0.3274289   0.4418019
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.4838710    0.3454974   0.6222445
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.2538860    0.1961373   0.3116347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.5539568    0.4711328   0.6367809
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.6875000    0.5560750   0.8189250
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.4848485    0.3139450   0.6557520
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.3297998    0.2981656   0.3614339
6-24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.3235294    0.1662310   0.4808279
6-24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.2090164    0.1795518   0.2384810
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                0.0697329    0.0489598   0.0905061
6-24 months   ki1119695-PROBIT           BELARUS     <160                 NA                0.1020408   -0.0356623   0.2397439
6-24 months   ki1119695-PROBIT           BELARUS     >=170                NA                0.0391817    0.0295917   0.0487716
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.6614173    0.5789415   0.7438932
6-24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                0.6781609    0.5797859   0.7765359
6-24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                0.3200000    0.1367610   0.5032390


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.6229327   0.5785357   0.6673298
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.7619048   0.7200609   0.8037487
0-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.4048730   0.3829622   0.4267838
0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0980298   0.0820346   0.1140250
0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8326613   0.7997778   0.8655448
0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2895028   0.2525193   0.3264862
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3828715   0.3349959   0.4307472
0-6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.0829948   0.0699648   0.0960247
6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3509700   0.3057207   0.3962194
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.5727273   0.5072105   0.6382441
6-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.2749226   0.2531408   0.2967044
6-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0427669   0.0325915   0.0529422
6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.6317992   0.5705230   0.6930753


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         1.0946179   0.9233864   1.2976023
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.7565287   0.6568789   0.8712956
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.1025641   0.9833272   1.2362595
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         0.9212121   0.7606603   1.1156515
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.0693878   0.7791463   1.4677477
0-24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6891893   0.6128318   0.7750607
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)         1.6345118   0.8908692   2.9989013
0-24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         0.5653409   0.4818673   0.6632746
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.0593508   0.9822826   1.1424656
0-24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         0.6739580   0.4970694   0.9137947
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         1.3879195   1.0648554   1.8089973
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.8091625   0.6301467   1.0390343
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.2239411   0.9411089   1.5917731
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         0.6207792   0.3756105   1.0259747
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.7203182   0.8032369   3.6844606
0-6 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.7428647   0.5325186   1.0362979
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         1.2580645   0.9134783   1.7326370
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.6601036   0.5318279   0.8193192
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.2410714   0.9736399   1.5819588
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         0.8752460   0.5968215   1.2835589
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         0.9809874   0.5976426   1.6102203
6-24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6337676   0.5344166   0.7515884
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)         1.4633087   0.3991227   5.3649473
6-24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         0.5618817   0.4328528   0.7293727
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.0253147   0.8468004   1.2414617
6-24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         0.4838095   0.2692525   0.8693389


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0353684   -0.0714791    0.0007423
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0119048   -0.0218610    0.0456705
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0626843   -0.0827103   -0.0426582
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0605859   -0.0823900   -0.0387817
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0034946   -0.0304849    0.0374742
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0013016   -0.0241065    0.0267097
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0021184   -0.0368292    0.0410660
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0087875   -0.0206117    0.0030367
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0336454   -0.0680151    0.0007244
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0187704   -0.0310688    0.0686097
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0548772   -0.0754445   -0.0343098
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0269660   -0.0425074   -0.0114247
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0296182   -0.0873057    0.0280693


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0567773   -0.1158259   -0.0008534
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0156250   -0.0297514    0.0590019
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1548245   -0.2057832   -0.1060194
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.6180352   -0.8483509   -0.4164182
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0041969   -0.0374623    0.0441833
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0044960   -0.0873053    0.0885465
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0055329   -0.1015773    0.1022285
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1058802   -0.2570496    0.0271099
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0958639   -0.1989712   -0.0016235
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0327738   -0.0584225    0.1161124
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1996095   -0.2766422   -0.1272250
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.6305357   -1.0249269   -0.3129593
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0468791   -0.1426057    0.0408276
