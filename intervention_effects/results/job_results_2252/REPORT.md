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

fhtcm       agecat        studyid                    country     tr          ever_stunted   n_cell       n
----------  ------------  -------------------------  ----------  ---------  -------------  -------  ------
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control                0       13      54
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control                1       11      54
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                  0       16      54
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                  1       14      54
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control                0       43     110
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control                1        7     110
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                  0       48     110
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                  1       12     110
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control                0       88     231
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control                1       27     231
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                  0       79     231
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                  1       37     231
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control                0       12     103
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control                1       13     103
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                  0       43     103
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                  1       35     103
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control                0       43     239
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control                1       21     239
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                  0      105     239
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                  1       70     239
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control                0        6      55
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control                1        5      55
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                  0       36      55
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                  1        8      55
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Control                0     5022   10735
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Control                1      324   10735
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Maternal               0     5083   10735
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Maternal               1      306   10735
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Control                0      631    1335
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Control                1       68    1335
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Maternal               0      579    1335
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Maternal               1       57    1335
<160        0-6 months    ki1119695-PROBIT           BELARUS     Control                0       20      53
<160        0-6 months    ki1119695-PROBIT           BELARUS     Control                1        3      53
<160        0-6 months    ki1119695-PROBIT           BELARUS     Maternal               0       25      53
<160        0-6 months    ki1119695-PROBIT           BELARUS     Maternal               1        5      53
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                0        9      32
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                1        7      32
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  0       11      32
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  1        5      32
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                0       57     181
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                1       40     181
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  0       55     181
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  1       29     181
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                0       39     103
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                1       13     103
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  0       36     103
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  1       15     103
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                0        5      48
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                1        5      48
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  0       10      48
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  1       28      48
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                0       11     139
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                1       21     139
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  0       51     139
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  1       56     139
>=170       6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                0        2      33
>=170       6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                1        3      33
>=170       6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  0       15      33
>=170       6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  1       13      33
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Control                0     5205   10949
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Control                1      215   10949
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Maternal               0     5315   10949
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Maternal               1      214   10949
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Control                0      650    1348
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Control                1       53    1348
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Maternal               0      604    1348
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Maternal               1       41    1348
<160        6-24 months   ki1119695-PROBIT           BELARUS     Control                0       19      49
<160        6-24 months   ki1119695-PROBIT           BELARUS     Control                1        2      49
<160        6-24 months   ki1119695-PROBIT           BELARUS     Maternal               0       25      49
<160        6-24 months   ki1119695-PROBIT           BELARUS     Maternal               1        3      49
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control                0       14     127
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control                1       47     127
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                  0       29     127
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                  1       37     127
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Control                0       10      87
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Control                1       19      87
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Other                  0       18      87
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Other                  1       40      87
>=170       6-24 months   ki1135781-COHORTS          GUATEMALA   Control                0        4      25
>=170       6-24 months   ki1135781-COHORTS          GUATEMALA   Control                1        4      25
>=170       6-24 months   ki1135781-COHORTS          GUATEMALA   Other                  0       13      25
>=170       6-24 months   ki1135781-COHORTS          GUATEMALA   Other                  1        4      25
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                0        7      62
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                1       21      62
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  0       13      62
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  1       21      62
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                0       35     132
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                1       31     132
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  0       32     132
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  1       34     132
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                0       48     281
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control                1       90     281
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  0       50     281
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                  1       93     281
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                0        5     104
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                1       21     104
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  0       13     104
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  1       65     104
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                0       11     240
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                1       53     240
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  0       49     240
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  1      127     240
>=170       0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                0        2      55
>=170       0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control                1        9      55
>=170       0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  0       15      55
>=170       0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                  1       29      55
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Control                0     4811   11093
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Control                1      691   11093
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Maternal               0     4968   11093
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Maternal               1      623   11093
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Control                0      574    1386
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Control                1      150    1386
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Maternal               0      540    1386
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Maternal               1      122    1386
<160        0-24 months   ki1119695-PROBIT           BELARUS     Control                0       16      54
<160        0-24 months   ki1119695-PROBIT           BELARUS     Control                1        7      54
<160        0-24 months   ki1119695-PROBIT           BELARUS     Maternal               0       22      54
<160        0-24 months   ki1119695-PROBIT           BELARUS     Maternal               1        9      54
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control                0       13     238
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control                1      114     238
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                  0       28     238
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                  1       83     238
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Control                0        8     217
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Control                1       76     217
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Other                  0       16     217
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Other                  1      117     217
>=170       0-24 months   ki1135781-COHORTS          GUATEMALA   Control                0        3      33
>=170       0-24 months   ki1135781-COHORTS          GUATEMALA   Control                1       12      33
>=170       0-24 months   ki1135781-COHORTS          GUATEMALA   Other                  0       12      33
>=170       0-24 months   ki1135781-COHORTS          GUATEMALA   Other                  1        6      33


The following strata were considered:

* fhtcm: [160-170), agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: [160-170), agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: [160-170), agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: [160-170), agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: [160-170), agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: [160-170), agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: [160-170), agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: [160-170), agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: [160-170), agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: [160-170), agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: [160-170), agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: <160, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: <160, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: <160, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: <160, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: <160, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: <160, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: <160, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: <160, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: <160, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: <160, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: <160, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: >=170, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: >=170, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: >=170, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: >=170, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: >=170, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: >=170, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: >=170, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: >=170, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* fhtcm: >=170, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: >=170, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: >=170, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* fhtcm: <160, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: >=170, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: <160, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* fhtcm: >=170, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* fhtcm: >=170, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* fhtcm: >=170, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e3e88163-8322-4a13-944e-8cdb924e2f81/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3e88163-8322-4a13-944e-8cdb924e2f81/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3e88163-8322-4a13-944e-8cdb924e2f81/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3e88163-8322-4a13-944e-8cdb924e2f81/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


fhtcm       agecat        studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.6521739    0.5754961   0.7288517
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.6503497    0.5430833   0.7576160
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.8281250    0.7355020   0.9207480
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.7215909    0.6552341   0.7879477
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.2071823    0.1832076   0.2311570
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Maternal             NA                0.1842900    0.1675814   0.2009986
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.8976378    0.8448078   0.9504678
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.7477477    0.6667830   0.8287125
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2347826    0.1926426   0.2769226
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.3189655    0.2707138   0.3672172
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.3281250    0.2128507   0.4433993
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.4000000    0.3272647   0.4727353
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0972818    0.0811810   0.1133827
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Maternal             NA                0.0896226    0.0754232   0.1038220
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.4123711    0.3257901   0.4989522
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.3452381    0.2948799   0.3955963
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.6562500    0.4910930   0.8214070
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.5233645    0.4283873   0.6183417
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.0753912    0.0579320   0.0928503
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Maternal             NA                0.0635659    0.0539843   0.0731474
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.7704918    0.6645462   0.8764374
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.5606061    0.4403938   0.6808183
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.7500000    0.5780016   0.9219984
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.6176471    0.5236671   0.7116270
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.8076923    0.6554691   0.9599155
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.8333333    0.7502273   0.9164394
<160        0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.3043478    0.1868203   0.4218753
<160        0-24 months   ki1119695-PROBIT           BELARUS     Maternal             NA                0.2903226    0.1821786   0.3984666
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.9047619    0.8418426   0.9676812
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.8796992    0.8242843   0.9351141
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.4583333    0.1265598   0.7901069
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.4666667    0.3931680   0.5401653
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.5200000    0.3232028   0.7167972
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.4487179    0.3378023   0.5596336
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.4375000    0.1165920   0.7584080
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.3125000    0.1158969   0.5091031
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.5000000    0.1868231   0.8131769
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.7368421    0.5953529   0.8783313
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                0.6551724    0.4811768   0.8291680
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Other                NA                0.6896552    0.5699032   0.8094072
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.4696970    0.2179655   0.7214284
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.5151515    0.4627006   0.5676024
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.1255907    0.1135757   0.1376057
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Maternal             NA                0.1114291    0.1018080   0.1210501
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.1400000   -0.0001585   0.2801585
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2000000    0.1194846   0.2805154
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                0.4545455    0.1575812   0.7515097
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                NA                0.1818182    0.0668044   0.2968319
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                0.0606061    0.0528814   0.0683307
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Maternal             NA                0.0567823    0.0498741   0.0636905
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                0.2500000   -0.0315705   0.5315705
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                NA                0.2941176    0.2363377   0.3518976
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                0.0396679    0.0315397   0.0477961
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Maternal             NA                0.0387050    0.0338153   0.0435947


### Parameter: E(Y)


fhtcm       agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.6512456   0.5848473   0.7176438
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.7500000   0.6951029   0.8048971
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1962482   0.1658508   0.2266456
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8277311   0.7796558   0.8758064
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2770563   0.2273407   0.3267718
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3807531   0.3190634   0.4424429
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0936330   0.0720741   0.1151918
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3812155   0.3267498   0.4356811
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.5539568   0.4710224   0.6368913
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0697329   0.0495745   0.0898914
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.6614173   0.5787882   0.7440464
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.6774194   0.5717770   0.7830617
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.8269231   0.7538627   0.8999834
<160        0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.2962963   0.1366219   0.4559707
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8894009   0.8475750   0.9312269
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4629630   0.3119859   0.6139400
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4660194   0.3692111   0.5628278
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3750000   0.1708371   0.5791629
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.6875000   0.5549864   0.8200136
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.6781609   0.5794228   0.7768990
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4924242   0.3673124   0.6175361
>=170       0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1184531   0.1021887   0.1347175
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1727273   0.0933417   0.2521128
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.2363636   0.1230493   0.3496780
>=170       0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0586865   0.0481718   0.0692013
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2718447   0.1307722   0.4129171
>=170       6-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0391817   0.0296414   0.0487219


### Parameter: RR


fhtcm       agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.9972028   0.8147211   1.2205568
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.8713551   0.7538946   1.0071164
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Maternal             Control           0.8895065   0.7685508   1.0294986
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.8330172   0.7364303   0.9422720
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.3585568   1.0774292   1.7130376
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           1.2190476   0.8207700   1.8105890
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Maternal             Control           0.9212680   0.7321473   1.1592405
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.8372024   0.6493719   1.0793628
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.7975078   0.5847697   1.0876395
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Maternal             Control           0.8431476   0.6391046   1.1123341
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.7275951   0.5639763   0.9386824
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.8235294   0.6214305   1.0913541
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           1.0317460   0.8336236   1.2769550
<160        0-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
<160        0-24 months   ki1119695-PROBIT           BELARUS     Maternal             Control           0.9539171   0.5578109   1.6313015
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           0.9722992   0.8852167   1.0679483
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.0181818   0.4827491   2.1474804
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.8629191   0.5491072   1.3560731
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           0.7142857   0.2722939   1.8737259
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           1.4736842   0.7653964   2.8374123
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Control              Control           1.0000000   1.0000000   1.0000000
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Other                Control           1.0526316   0.7664336   1.4457002
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.0967742   0.6378137   1.8859952
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Maternal             Control           0.8872400   0.7810450   1.0078737
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.4285714   0.4852726   4.2055048
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Other                Control           0.4000000   0.1611088   0.9931179
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Maternal             Control           0.9369085   0.7861000   1.1166487
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              Control           1.0000000   1.0000000   1.0000000
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Other                Control           1.1764706   0.3768915   3.6723646
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Control              Control           1.0000000   1.0000000   1.0000000
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Maternal             Control           0.9757263   0.7676281   1.2402383


### Parameter: PAR


fhtcm       agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0009284   -0.0679017    0.0660450
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0781250   -0.1618940    0.0056440
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0109341   -0.0284009    0.0065327
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0699067   -0.1159893   -0.0238241
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0422737   -0.0015396    0.0860869
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.0526281   -0.0472574    0.1525137
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0036489   -0.0178590    0.0105612
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0311557   -0.0837725    0.0214612
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1022932   -0.2492484    0.0446621
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0056582   -0.0153705    0.0040540
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1090745   -0.1943357   -0.0238133
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0725806   -0.1786971    0.0335358
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.0192308   -0.1108606    0.1493221
<160        0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0080515   -0.1161418    0.1000388
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0153610   -0.0667744    0.0360525
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0046296   -0.1864513    0.1957106
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.0539806   -0.2251543    0.1171931
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0625000   -0.2460975    0.1210975
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.1875000   -0.0859467    0.4609467
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0229885   -0.1178685    0.1638455
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0227273   -0.1105922    0.1560468
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0071376   -0.0174186    0.0031434
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0327273   -0.0567605    0.1222151
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.2181818   -0.4746049    0.0382413
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0019195   -0.0089096    0.0050706
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0218447   -0.1256111    0.1693004
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0004862   -0.0054007    0.0044282


### Parameter: PAF


fhtcm       agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
[160-170)   0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0014255   -0.1097850    0.0963537
[160-170)   0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1041667   -0.2233134    0.0033756
[160-170)   0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0557158   -0.1546463    0.0347383
[160-170)   0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0844558   -0.1436903   -0.0282892
[160-170)   0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.1525815   -0.0036448    0.2844898
[160-170)   0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.1382212   -0.1685022    0.3644318
[160-170)   0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0389700   -0.2094692    0.1074939
[160-170)   6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.0817272   -0.2253931    0.0450953
[160-170)   6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1846591   -0.4854780    0.0552420
[160-170)   6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0811416   -0.2447726    0.0609794
[160-170)   6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.1649102   -0.3076244   -0.0377719
<160        0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.1071429   -0.2702278    0.0350036
<160        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.0232558   -0.1475732    0.1686550
<160        0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0271739   -0.4795927    0.2869076
<160        0-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                -0.0172712   -0.0768447    0.0390066
<160        0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0100000   -0.5064485    0.3493969
<160        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.1158333   -0.5518541    0.1976797
<160        6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                -0.1666667   -0.7363894    0.2161257
<160        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                 0.2727273   -0.2697864    0.5834531
<160        6-24 months   ki1135781-COHORTS          GUATEMALA   Control              NA                 0.0338983   -0.1980467    0.2209381
>=170       0-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0461538   -0.2810405    0.2897785
>=170       0-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0602569   -0.1570025    0.0283990
>=170       0-6 months    ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.1894737   -0.6107847    0.5921535
>=170       0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       Control              NA                -0.9230769   -2.4107328   -0.0842904
>=170       0-6 months    ki1119695-PROBIT           BELARUS     Control              NA                -0.0327080   -0.1635140    0.0833923
>=170       6-24 months   ki1000304b-SAS-CompFeed    INDIA       Control              NA                 0.0803571   -0.7287014    0.5107640
>=170       6-24 months   ki1119695-PROBIT           BELARUS     Control              NA                -0.0124098   -0.1477596    0.1069788
