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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* fhtcm
* agecat
* studyid
* country

## Data Summary

fhtcm       agecat      studyid                    country     tr          stunted   n_cell       n
----------  ----------  -------------------------  ----------  ---------  --------  -------  ------
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Control           0       12      37
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Control           1        5      37
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Other             0       10      37
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Other             1       10      37
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Control           0       35      88
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Control           1        6      88
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Other             0       35      88
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Other             1       12      88
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control           0       70     184
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control           1       22     184
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other             0       59     184
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other             1       33     184
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control           0       23      49
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control           1        7      49
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other             0       14      49
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other             1        5      49
<160        Birth       ki1000304b-SAS-CompFeed    INDIA       Control           0        4       8
<160        Birth       ki1000304b-SAS-CompFeed    INDIA       Control           1        2       8
<160        Birth       ki1000304b-SAS-CompFeed    INDIA       Other             0        0       8
<160        Birth       ki1000304b-SAS-CompFeed    INDIA       Other             1        2       8
>=170       Birth       ki1000304b-SAS-CompFeed    INDIA       Control           0        3      11
>=170       Birth       ki1000304b-SAS-CompFeed    INDIA       Control           1        3      11
>=170       Birth       ki1000304b-SAS-CompFeed    INDIA       Other             0        3      11
>=170       Birth       ki1000304b-SAS-CompFeed    INDIA       Other             1        2      11
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           0        9      88
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           1       13      88
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             0       34      88
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             1       32      88
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           0       28     207
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           1       27     207
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             0       97     207
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             1       55     207
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           0        5      52
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control           1        6      52
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             0       27      52
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other             1       14      52
>=170       Birth       ki1119695-PROBIT           BELARUS     Control           0     5482   11092
>=170       Birth       ki1119695-PROBIT           BELARUS     Control           1       18   11092
>=170       Birth       ki1119695-PROBIT           BELARUS     Maternal          0     5584   11092
>=170       Birth       ki1119695-PROBIT           BELARUS     Maternal          1        8   11092
>=170       6 months    ki1119695-PROBIT           BELARUS     Control           0     4630    9729
>=170       6 months    ki1119695-PROBIT           BELARUS     Control           1      292    9729
>=170       6 months    ki1119695-PROBIT           BELARUS     Maternal          0     4574    9729
>=170       6 months    ki1119695-PROBIT           BELARUS     Maternal          1      233    9729
[160-170)   Birth       ki1119695-PROBIT           BELARUS     Control           0      722    1387
[160-170)   Birth       ki1119695-PROBIT           BELARUS     Control           1        2    1387
[160-170)   Birth       ki1119695-PROBIT           BELARUS     Maternal          0      662    1387
[160-170)   Birth       ki1119695-PROBIT           BELARUS     Maternal          1        1    1387
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Control           0      573    1192
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Control           1       71    1192
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Maternal          0      492    1192
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Maternal          1       56    1192
<160        Birth       ki1119695-PROBIT           BELARUS     Control           0       23      54
<160        Birth       ki1119695-PROBIT           BELARUS     Maternal          0       31      54
<160        6 months    ki1119695-PROBIT           BELARUS     Control           0       18      47
<160        6 months    ki1119695-PROBIT           BELARUS     Control           1        3      47
<160        6 months    ki1119695-PROBIT           BELARUS     Maternal          0       21      47
<160        6 months    ki1119695-PROBIT           BELARUS     Maternal          1        5      47
>=170       24 months   ki1119695-PROBIT           BELARUS     Control           0      275     663
>=170       24 months   ki1119695-PROBIT           BELARUS     Control           1       33     663
>=170       24 months   ki1119695-PROBIT           BELARUS     Maternal          0      320     663
>=170       24 months   ki1119695-PROBIT           BELARUS     Maternal          1       35     663
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Control           0       26      86
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Control           1       11      86
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Maternal          0       38      86
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Maternal          1       11      86
<160        24 months   ki1119695-PROBIT           BELARUS     Control           0        1       4
<160        24 months   ki1119695-PROBIT           BELARUS     Control           1        1       4
<160        24 months   ki1119695-PROBIT           BELARUS     Maternal          0        1       4
<160        24 months   ki1119695-PROBIT           BELARUS     Maternal          1        1       4
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Control           0       48     168
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Control           1       38     168
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Other             0       51     168
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Other             1       31     168
[160-170)   Birth       ki1135781-COHORTS          GUATEMALA   Control           0       51     100
[160-170)   Birth       ki1135781-COHORTS          GUATEMALA   Control           1        2     100
[160-170)   Birth       ki1135781-COHORTS          GUATEMALA   Other             0       42     100
[160-170)   Birth       ki1135781-COHORTS          GUATEMALA   Other             1        5     100
<160        24 months   ki1135781-COHORTS          GUATEMALA   Control           0        8      96
<160        24 months   ki1135781-COHORTS          GUATEMALA   Control           1       29      96
<160        24 months   ki1135781-COHORTS          GUATEMALA   Other             0       14      96
<160        24 months   ki1135781-COHORTS          GUATEMALA   Other             1       45      96
<160        6 months    ki1135781-COHORTS          GUATEMALA   Control           0       20     145
<160        6 months    ki1135781-COHORTS          GUATEMALA   Control           1       34     145
<160        6 months    ki1135781-COHORTS          GUATEMALA   Other             0       43     145
<160        6 months    ki1135781-COHORTS          GUATEMALA   Other             1       48     145
<160        Birth       ki1135781-COHORTS          GUATEMALA   Control           0       30      92
<160        Birth       ki1135781-COHORTS          GUATEMALA   Control           1        2      92
<160        Birth       ki1135781-COHORTS          GUATEMALA   Other             0       56      92
<160        Birth       ki1135781-COHORTS          GUATEMALA   Other             1        4      92
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Control           0        9     101
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Control           1       50     101
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Other             0       14     101
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Other             1       28     101
>=170       6 months    ki1135781-COHORTS          GUATEMALA   Control           0        6      23
>=170       6 months    ki1135781-COHORTS          GUATEMALA   Control           1        5      23
>=170       6 months    ki1135781-COHORTS          GUATEMALA   Other             0       12      23
>=170       6 months    ki1135781-COHORTS          GUATEMALA   Other             1        0      23
>=170       Birth       ki1135781-COHORTS          GUATEMALA   Control           0        4      14
>=170       Birth       ki1135781-COHORTS          GUATEMALA   Control           1        2      14
>=170       Birth       ki1135781-COHORTS          GUATEMALA   Other             0        8      14
>=170       Birth       ki1135781-COHORTS          GUATEMALA   Other             1        0      14
>=170       24 months   ki1135781-COHORTS          GUATEMALA   Control           0        2      16
>=170       24 months   ki1135781-COHORTS          GUATEMALA   Control           1        2      16
>=170       24 months   ki1135781-COHORTS          GUATEMALA   Other             0        4      16
>=170       24 months   ki1135781-COHORTS          GUATEMALA   Other             1        8      16


The following strata were considered:

* fhtcm: [160-170), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: [160-170), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: [160-170), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: [160-170), agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: [160-170), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: [160-170), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: [160-170), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: [160-170), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: [160-170), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: <160, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: <160, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: <160, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: <160, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: <160, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: <160, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: <160, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: <160, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: <160, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: >=170, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: >=170, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: >=170, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: >=170, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: >=170, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: >=170, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: >=170, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: >=170, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: >=170, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* fhtcm: <160, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: >=170, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: [160-170), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: <160, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: <160, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: [160-170), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: <160, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: >=170, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: >=170, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: >=170, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr          0
##   Control  23
##   Maternal 31
##   Other     0
```




# Results Detail

## Results Plots
![](/tmp/994caa66-de03-4a1d-b880-d55016954c4a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/994caa66-de03-4a1d-b880-d55016954c4a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/994caa66-de03-4a1d-b880-d55016954c4a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/994caa66-de03-4a1d-b880-d55016954c4a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


fhtcm       agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2333333   0.1167358   0.3499308
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2631579   0.0068293   0.5194864
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2391304   0.1787815   0.2994794
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.3586957   0.2109733   0.5064180
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.4909091   0.3584699   0.6233483
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.3618421   0.2852646   0.4384197
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.1102484   0.0927096   0.1277873
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Maternal             NA                0.1021898   0.0857014   0.1186782
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                0.4418605   0.3365893   0.5471316
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Other                NA                0.3780488   0.2727824   0.4833152
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.2972973   0.1876033   0.4069913
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Maternal             NA                0.2244898   0.1667581   0.2822215
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.8474576   0.7552563   0.9396589
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.6666667   0.5233892   0.8099441
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2941176   0.1400689   0.4481664
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.5000000   0.4094529   0.5905471
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.5909091   0.3842813   0.7975369
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.4848485   0.3635855   0.6061115
<160        6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                0.6296296   0.5003844   0.7588749
<160        6 months    ki1135781-COHORTS          GUATEMALA   Other                NA                0.5274725   0.4245421   0.6304029
<160        24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.7837838   0.6504429   0.9171247
<160        24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.7627119   0.6535894   0.8718343
>=170       Birth       ki1119695-PROBIT           BELARUS     Control              NA                0.0032727   0.0020050   0.0045405
>=170       Birth       ki1119695-PROBIT           BELARUS     Maternal             NA                0.0014306   0.0009283   0.0019329
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.1463415   0.0339059   0.2587770
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2553191   0.1144312   0.3962071
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.5454545   0.2483315   0.8425775
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.3414634   0.1948969   0.4880299
>=170       6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0593255   0.0493558   0.0692951
>=170       6 months    ki1119695-PROBIT           BELARUS     Maternal             NA                0.0484710   0.0417064   0.0552355
>=170       24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.1071429   0.0776400   0.1366457
>=170       24 months   ki1119695-PROBIT           BELARUS     Maternal             NA                0.0985916   0.0696600   0.1275231


### Parameter: E(Y)


fhtcm       agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2448980   0.1219863   0.3678096
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2989130   0.2024636   0.3953625
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3961353   0.3293461   0.4629244
[160-170)   6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.1065436   0.0819256   0.1311616
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4107143   0.3360999   0.4853287
[160-170)   24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.2558140   0.1303350   0.3812930
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7722772   0.6900836   0.8544708
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4054054   0.2995645   0.5112463
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.5113636   0.4063257   0.6164016
<160        6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.5655172   0.4845562   0.6464783
<160        24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7708333   0.6863167   0.8553500
>=170       Birth       ki1119695-PROBIT           BELARUS     NA                   NA                0.0023440   0.0009149   0.0037732
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2045455   0.1128702   0.2962207
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3846154   0.2510944   0.5181364
>=170       6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0539624   0.0413738   0.0665510
>=170       24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1025641   0.0611143   0.1440139


### Parameter: RR


fhtcm       agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.1278195   0.3739101   3.4018256
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.5000000   0.9275770   2.4256747
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.7370858   0.5231234   1.0385608
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Maternal             Control           0.9269045   0.7403970   1.1603936
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Other                Control           0.8555841   0.5930768   1.2342821
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Maternal             Control           0.7551020   0.4813212   1.1846125
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.7866667   0.6182661   1.0009354
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.7000000   0.9705710   2.9776286
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.8205128   0.5337963   1.2612325
<160        6 months    ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
<160        6 months    ki1135781-COHORTS          GUATEMALA   Other                Control           0.8377505   0.6311203   1.1120319
<160        24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
<160        24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.9731151   0.7791586   1.2153535
>=170       Birth       ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=170       Birth       ki1119695-PROBIT           BELARUS     Maternal             Control           0.4371324   0.2594423   0.7365213
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.7446809   0.6851435   4.4427355
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.6260163   0.3128926   1.2524946
>=170       6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=170       6 months    ki1119695-PROBIT           BELARUS     Maternal             Control           0.8170348   0.6577040   1.0149640
>=170       24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=170       24 months   ki1119695-PROBIT           BELARUS     Maternal             Control           0.9201878   0.6154470   1.3758221


### Parameter: PAR


fhtcm       agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0115646   -0.0969850    0.1201143
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0597826   -0.0295175    0.1490827
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0947738   -0.2073797    0.0178321
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0037048   -0.0205858    0.0131762
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0311462   -0.1039710    0.0416786
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0414833   -0.1006981    0.0177314
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0751804   -0.1481524   -0.0022084
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.1112878   -0.0295120    0.2520875
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0795455   -0.2594913    0.1004004
<160        6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0641124   -0.1681180    0.0398933
<160        24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0129505   -0.1188636    0.0929627
>=170       Birth       ki1119695-PROBIT           BELARUS     Control              NA                -0.0009287   -0.0015557   -0.0003017
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0582040   -0.0502098    0.1666178
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1608392   -0.4230601    0.1013818
>=170       6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0053631   -0.0126277    0.0019015
>=170       24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0045788   -0.0335771    0.0244196


### Parameter: PAF


fhtcm       agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
[160-170)   Birth       ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0472222   -0.4992403    0.3945030
[160-170)   6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.2000000   -0.0945491    0.4152844
[160-170)   6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.2392461   -0.5609998    0.0161876
[160-170)   6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0347728   -0.2126962    0.1170461
[160-170)   6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0758342   -0.2689106    0.0878639
[160-170)   24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.1621622   -0.4773974    0.0858107
[160-170)   24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0973490   -0.1999467   -0.0035236
<160        6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.2745098   -0.1544359    0.5440751
<160        6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1555556   -0.5696938    0.1493191
<160        6 months    ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1133695   -0.3149426    0.0573036
<160        24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0168006   -0.1640002    0.1117841
>=170       Birth       ki1119695-PROBIT           BELARUS     Control              NA                -0.3961958   -0.9072227   -0.0220950
>=170       6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.2845528   -0.4311843    0.6423489
>=170       6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.4181818   -1.3128101    0.1303913
>=170       6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0993858   -0.2600198    0.0407696
>=170       24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0446428   -0.3864190    0.2128796
