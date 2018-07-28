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

**Outcome Variable:** ever_stunted

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
![](/tmp/9b449b4e-3286-4350-b050-d35bba3e1d73/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9b449b4e-3286-4350-b050-d35bba3e1d73/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9b449b4e-3286-4350-b050-d35bba3e1d73/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9b449b4e-3286-4350-b050-d35bba3e1d73/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.6479907    0.5858700   0.7101113
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.6482416    0.5724685   0.7240148
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.4811219    0.4356053   0.5266385
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.7625766    0.7130016   0.8121517
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.8581025    0.8026666   0.9135385
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.7673339    0.6954130   0.8392548
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.4579860    0.4292885   0.4866835
0-24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.4220957    0.3623235   0.4818678
0-24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.3244637    0.2947484   0.3541789
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                0.1265354    0.1039196   0.1491512
0-24 months   ki1119695-PROBIT           BELARUS     <160                 NA                0.0639704    0.0513126   0.0766282
0-24 months   ki1119695-PROBIT           BELARUS     >=170                NA                0.0913704    0.0761709   0.1065699
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.7693703    0.7313436   0.8073970
0-24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                0.8513150    0.8179343   0.8846958
0-24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                0.0608758    0.0245478   0.0972038
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.2819381    0.2360868   0.3277894
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.3334644    0.2617694   0.4051594
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.2290446    0.1866022   0.2714869
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.3904169    0.3306708   0.4501630
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.4847163    0.3954134   0.5740192
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.2723113    0.1761622   0.3684604
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                0.0874316    0.0695401   0.1053232
0-6 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.0319616   -0.0008160   0.0647392
0-6 months    ki1101329-Keneba           GAMBIA      >=170                NA                0.0585008    0.0422787   0.0747229
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.3572175    0.3021068   0.4123283
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.2518606    0.1521445   0.3515766
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.2097512    0.1608601   0.2586423
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.5290970    0.4532343   0.6049597
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.5986300    0.5068298   0.6904302
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.2931825    0.1897195   0.3966454
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.3289235    0.2989683   0.3588787
6-24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.3008429    0.2402334   0.3614524
6-24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.2132376    0.1852749   0.2412004
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                0.0609237    0.0447539   0.0770934
6-24 months   ki1119695-PROBIT           BELARUS     <160                 NA                0.0238546    0.0140012   0.0337080
6-24 months   ki1119695-PROBIT           BELARUS     >=170                NA                0.0397594    0.0301024   0.0494164
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.6907980    0.6208728   0.7607231
6-24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                0.7358600    0.6602027   0.8115173
6-24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                0.2047532    0.1348523   0.2746542


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         1.0003873   0.8737562   1.1453708
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.7424828   0.6469819   0.8520806
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.1252673   1.0304595   1.2287980
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         1.0062384   0.9027340   1.1216104
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         0.9216345   0.7900295   1.0751626
0-24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.7084576   0.6351314   0.7902493
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)         0.5055536   0.3863098   0.6616048
0-24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         0.7220937   0.6216355   0.8387864
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.1065088   1.0424659   1.1744861
0-24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         0.0791242   0.0434864   0.1439677
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         1.1827575   0.9131927   1.5318950
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.8123930   0.6563481   1.0055372
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.2415350   0.9809977   1.5712667
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         0.6974885   0.4763888   1.0212043
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         0.3655614   0.1284296   1.0405324
0-6 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6691033   0.4741534   0.9442078
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         0.7050621   0.4634606   1.0726102
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.5871805   0.4787460   0.7201751
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.1314183   0.9265674   1.3815587
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         0.5541186   0.3824636   0.8028145
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         0.9146287   0.7339557   1.1397769
6-24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6482894   0.5534541   0.7593748
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)         0.3915486   0.2564544   0.5978073
6-24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         0.6526101   0.5092703   0.8362946
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.0652318   0.9258290   1.2256246
6-24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         0.2964010   0.2080843   0.4222018


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0250579   -0.0597139    0.0095980
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                -0.0006719   -0.0293513    0.0280076
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0531130   -0.0721187   -0.0341073
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0285055   -0.0441311   -0.0128800
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0632909    0.0367706    0.0898113
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0075647   -0.0151773    0.0303066
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                -0.0075454   -0.0447064    0.0296156
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0044369   -0.0160819    0.0072082
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0062475   -0.0362948    0.0237998
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0436303    0.0005346    0.0867260
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0540009   -0.0734902   -0.0345116
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0181568   -0.0301138   -0.0061997
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0589988   -0.1085588   -0.0094389


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0402257   -0.0967738    0.0134069
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                -0.0008818   -0.0392428    0.0360632
0-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1311844   -0.1798268   -0.0845473
0-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.2907844   -0.4670911   -0.1356653
0-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0760104    0.0440650    0.1068883
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0261298   -0.0562236    0.1020621
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                -0.0197074   -0.1216483    0.0729687
0-6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0534596   -0.2033643    0.0777713
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0178007   -0.1070703    0.0642705
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0761798   -0.0021029    0.1483472
6-24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1964222   -0.2704243   -0.1267307
6-24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.4245521   -0.7478698   -0.1610411
6-24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0933822   -0.1773476   -0.0154050
