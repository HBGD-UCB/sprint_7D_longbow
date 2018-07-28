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

**Outcome Variable:** stunted

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

agecat      studyid                    country     fhtcm        stunted   n_cell       n
----------  -------------------------  ----------  ----------  --------  -------  ------
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)          0      328     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)          1      134     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <160               0       71     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <160               1       43     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170              0      179     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170              1       52     807
Birth       ki1000304b-SAS-CompFeed    INDIA       [160-170)          0       50     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [160-170)          1       15     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <160               0        7     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <160               1        4     102
Birth       ki1000304b-SAS-CompFeed    INDIA       >=170              0       18     102
Birth       ki1000304b-SAS-CompFeed    INDIA       >=170              1        8     102
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)          0      135     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)          1       90     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160               0       45     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160               1       49     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170              0       33     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170              1       20     372
Birth       ki1101329-Keneba           GAMBIA      [160-170)          0      598    1165
Birth       ki1101329-Keneba           GAMBIA      [160-170)          1       33    1165
Birth       ki1101329-Keneba           GAMBIA      <160               0       24    1165
Birth       ki1101329-Keneba           GAMBIA      <160               1        3    1165
Birth       ki1101329-Keneba           GAMBIA      >=170              0      485    1165
Birth       ki1101329-Keneba           GAMBIA      >=170              1       22    1165
6 months    ki1101329-Keneba           GAMBIA      [160-170)          0      692    1511
6 months    ki1101329-Keneba           GAMBIA      [160-170)          1      136    1511
6 months    ki1101329-Keneba           GAMBIA      <160               0       29    1511
6 months    ki1101329-Keneba           GAMBIA      <160               1        5    1511
6 months    ki1101329-Keneba           GAMBIA      >=170              0      581    1511
6 months    ki1101329-Keneba           GAMBIA      >=170              1       68    1511
24 months   ki1101329-Keneba           GAMBIA      [160-170)          0      428    1297
24 months   ki1101329-Keneba           GAMBIA      [160-170)          1      301    1297
24 months   ki1101329-Keneba           GAMBIA      <160               0       15    1297
24 months   ki1101329-Keneba           GAMBIA      <160               1       12    1297
24 months   ki1101329-Keneba           GAMBIA      >=170              0      405    1297
24 months   ki1101329-Keneba           GAMBIA      >=170              1      136    1297
Birth       ki1119695-PROBIT           BELARUS     [160-170)          0     1384   12533
Birth       ki1119695-PROBIT           BELARUS     [160-170)          1        3   12533
Birth       ki1119695-PROBIT           BELARUS     <160               0       54   12533
Birth       ki1119695-PROBIT           BELARUS     <160               1        0   12533
Birth       ki1119695-PROBIT           BELARUS     >=170              0    11066   12533
Birth       ki1119695-PROBIT           BELARUS     >=170              1       26   12533
6 months    ki1119695-PROBIT           BELARUS     [160-170)          0     1169   11895
6 months    ki1119695-PROBIT           BELARUS     [160-170)          1      137   11895
6 months    ki1119695-PROBIT           BELARUS     <160               0       43   11895
6 months    ki1119695-PROBIT           BELARUS     <160               1        9   11895
6 months    ki1119695-PROBIT           BELARUS     >=170              0     9983   11895
6 months    ki1119695-PROBIT           BELARUS     >=170              1      554   11895
24 months   ki1119695-PROBIT           BELARUS     [160-170)          0      331    3670
24 months   ki1119695-PROBIT           BELARUS     [160-170)          1       56    3670
24 months   ki1119695-PROBIT           BELARUS     <160               0       17    3670
24 months   ki1119695-PROBIT           BELARUS     <160               1        5    3670
24 months   ki1119695-PROBIT           BELARUS     >=170              0     3004    3670
24 months   ki1119695-PROBIT           BELARUS     >=170              1      257    3670
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)          0       99     336
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)          1       69     336
6 months    ki1135781-COHORTS          GUATEMALA   <160               0       63     336
6 months    ki1135781-COHORTS          GUATEMALA   <160               1       82     336
6 months    ki1135781-COHORTS          GUATEMALA   >=170              0       18     336
6 months    ki1135781-COHORTS          GUATEMALA   >=170              1        5     336
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)          0       56     528
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)          1      198     528
24 months   ki1135781-COHORTS          GUATEMALA   <160               0       42     528
24 months   ki1135781-COHORTS          GUATEMALA   <160               1      191     528
24 months   ki1135781-COHORTS          GUATEMALA   >=170              0       20     528
24 months   ki1135781-COHORTS          GUATEMALA   >=170              1       21     528
Birth       ki1135781-COHORTS          GUATEMALA   [160-170)          0       93     206
Birth       ki1135781-COHORTS          GUATEMALA   [160-170)          1        7     206
Birth       ki1135781-COHORTS          GUATEMALA   <160               0       86     206
Birth       ki1135781-COHORTS          GUATEMALA   <160               1        6     206
Birth       ki1135781-COHORTS          GUATEMALA   >=170              0       12     206
Birth       ki1135781-COHORTS          GUATEMALA   >=170              1        2     206


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
![](/tmp/bae2cded-c782-478a-ad23-6daa42d21453/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bae2cded-c782-478a-ad23-6daa42d21453/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bae2cded-c782-478a-ad23-6daa42d21453/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bae2cded-c782-478a-ad23-6daa42d21453/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.2632623    0.2139605   0.3125641
6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.1969658    0.1492663   0.2446653
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.1647301    0.1004209   0.2290394
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.4086850    0.3469040   0.4704659
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.5602541    0.4715741   0.6489342
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.4326016    0.3298979   0.5353052
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                0.1580870    0.1345330   0.1816409
6 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.1580117    0.1090497   0.2069738
6 months    ki1101329-Keneba           GAMBIA      >=170                NA                0.1065420    0.0841725   0.1289115
6 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                0.0800490    0.0604816   0.0996163
6 months    ki1119695-PROBIT           BELARUS     <160                 NA                0.0571609    0.0452499   0.0690718
6 months    ki1119695-PROBIT           BELARUS     >=170                NA                0.0536298    0.0418536   0.0654059
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.4168154    0.3580986   0.4755323
6 months    ki1135781-COHORTS          GUATEMALA   <160                 NA                0.5708828    0.5097267   0.6320390
6 months    ki1135781-COHORTS          GUATEMALA   >=170                NA                0.0496436    0.0114487   0.0878386
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.4135670    0.3796232   0.4475108
24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.3032313    0.2511908   0.3552718
24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.2592034    0.2250796   0.2933272
24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                0.1110186    0.0486615   0.1733757
24 months   ki1119695-PROBIT           BELARUS     <160                 NA                0.0065223   -0.0049035   0.0179481
24 months   ki1119695-PROBIT           BELARUS     >=170                NA                0.0797355    0.0497021   0.1097690
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.7249743    0.6850941   0.7648544
24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                0.7769961    0.7374612   0.8165310
24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                0.0882250    0.0519917   0.1244583


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2837670   0.2471555   0.3203786
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4274194   0.3770801   0.4777586
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1383190   0.1209060   0.1557320
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0588483   0.0462144   0.0714821
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4642857   0.4108803   0.5176911
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3461835   0.3202819   0.3720851
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0866485   0.0534930   0.1198040
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7765152   0.7409486   0.8120817


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         0.7481732   0.6063512   0.9231666
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.6257262   0.3952785   0.9905252
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.3708704   1.1058037   1.6994750
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         1.0585208   0.8019959   1.3970974
6 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         0.9995240   0.7095821   1.4079388
6 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6739453   0.5221212   0.8699172
6 months    ki1119695-PROBIT           BELARUS     [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS     <160                 [160-170)         0.7140740   0.5156975   0.9887613
6 months    ki1119695-PROBIT           BELARUS     >=170                [160-170)         0.6699620   0.5479574   0.8191313
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.3696298   1.1672315   1.6071240
6 months    ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         0.1191022   0.0549206   0.2582880
24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         0.7332097   0.6065566   0.8863088
24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6267507   0.5377098   0.7305361
24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)         0.0587499   0.0096013   0.3594877
24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         0.7182179   0.4649139   1.1095321
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.0717568   1.0014029   1.1470534
24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         0.1216939   0.0804457   0.1840921


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0205047   -0.0117868    0.0527962
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0187344   -0.0195908    0.0570596
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0197680   -0.0342925   -0.0052435
6 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0212007   -0.0349266   -0.0074748
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0474703    0.0085034    0.0864371
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0673835   -0.0887930   -0.0459740
24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0243701   -0.0680077    0.0192675
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0515409    0.0243434    0.0787384


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0722590   -0.0494523    0.1798547
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0438314   -0.0500638    0.1293306
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1429159   -0.2530041   -0.0425000
6 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.3602604   -0.6206323   -0.1417201
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.1022437    0.0162447    0.1807247
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1946467   -0.2595930   -0.1330491
24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.2812523   -0.8660445    0.1202742
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0663746    0.0312270    0.1002470
