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

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/7e0f4cfb-a997-4879-b7ad-b90a339548ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e0f4cfb-a997-4879-b7ad-b90a339548ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e0f4cfb-a997-4879-b7ad-b90a339548ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e0f4cfb-a997-4879-b7ad-b90a339548ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.2900433    0.2412683   0.3388183
6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.3771930    0.3156484   0.4387375
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.2251082    0.1516721   0.2985444
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.4000000    0.3359016   0.4640984
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.5212766    0.4201547   0.6223985
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.3773585    0.2466840   0.5080330
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                0.1642512    0.1390066   0.1894958
6 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.1470588    0.0279737   0.2661439
6 months    ki1101329-Keneba           GAMBIA      >=170                NA                0.1047766    0.0812062   0.1283470
6 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                0.1049005    0.0812931   0.1285078
6 months    ki1119695-PROBIT           BELARUS     <160                 NA                0.1730769    0.0500252   0.2961287
6 months    ki1119695-PROBIT           BELARUS     >=170                NA                0.0525766    0.0409079   0.0642454
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.4107143    0.3362113   0.4852172
6 months    ki1135781-COHORTS          GUATEMALA   <160                 NA                0.5655172    0.4847155   0.6463189
6 months    ki1135781-COHORTS          GUATEMALA   >=170                NA                0.2173913    0.0485709   0.3862117
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.4128944    0.3771400   0.4486488
24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.4444444    0.2569423   0.6319466
24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.2513863    0.2148170   0.2879556
24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                0.1447028    0.0727636   0.2166421
24 months   ki1119695-PROBIT           BELARUS     <160                 NA                0.2272727   -0.0707084   0.5252538
24 months   ki1119695-PROBIT           BELARUS     >=170                NA                0.0788102    0.0487723   0.1088480
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.7795276    0.7284964   0.8305588
24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                0.8197425    0.7703379   0.8691471
24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                0.5121951    0.3590481   0.6653422


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
6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         1.3004713   1.0722047   1.5773347
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.7761194   0.5232293   1.1512378
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.3031915   1.0132881   1.6760367
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         0.9433962   0.6441418   1.3816777
6 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         0.8953287   0.3926645   2.0414717
6 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6379045   0.4857719   0.8376815
6 months    ki1119695-PROBIT           BELARUS     [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS     <160                 [160-170)         1.6499158   0.8253416   3.2982974
6 months    ki1119695-PROBIT           BELARUS     >=170                [160-170)         0.5012050   0.4168644   0.6026094
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.3769115   1.0930051   1.7345623
6 months    ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         0.5293006   0.2384305   1.1750136
24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.0764120   0.6997431   1.6558401
24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6088393   0.5140193   0.7211505
24 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)         1.5706169   0.3886452   6.3472735
24 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         0.5446346   0.3609301   0.8218404
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.0515888   0.9620584   1.1494511
24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         0.6570584   0.4838084   0.8923486


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0062763   -0.0412758    0.0287233
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0274194   -0.0134776    0.0683163
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0259322   -0.0414904   -0.0103740
6 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0460522   -0.0621676   -0.0299368
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0535714    0.0001661    0.1069768
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0667109   -0.0893428   -0.0440789
24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0580543   -0.1116912   -0.0044175
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0030124   -0.0399397    0.0339149


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0221176   -0.1534782    0.0942833
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0641509   -0.0367260    0.1552123
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1874812   -0.3037660   -0.0815680
6 months    ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.7825585   -1.0722120   -0.5333928
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.1153846   -0.0079202    0.2236048
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1927038   -0.2603447   -0.1286931
24 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.6699982   -1.3701640   -0.1766671
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0038794   -0.0525810    0.0425688
